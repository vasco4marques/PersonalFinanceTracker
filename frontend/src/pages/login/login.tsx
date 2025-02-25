import React, { useState } from "react";
import axiosInstance from "../../../utils/axios/axios";

function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault();

    try {
      const response = await axiosInstance.post("/user/valid/", {
        email,
        password,
      });

      console.log("login successfull", response.data);
    } catch (error) {
      console.log("login error", error);
    }
  };

  return (
    <>
      <div className="w-full h-[100vh] text-white flex flex-col bg-black  overflow-y-hidden items-center justify-center">
        <div className="border-white border-2 p-4 rounded-lg">
          <h1 className="text-4xl text-center">Login</h1>
          <form className="flex flex-col gap-4" onSubmit={handleSubmit}>
            <label htmlFor="email">Email</label>
            <input
              type="email"
              name="email"
              id="email"
              className="p-2 rounded-md border-2 border-white"
              onChange={(e) => setEmail(e.target.value)}
            />
            <label htmlFor="password">Password</label>
            <input
              type="password"
              name="password"
              id="password"
              className="p-2 rounded-md border-2 border-white"
              onChange={(e) => setPassword(e.target.value)}
            />
            <button
              type="submit"
              className="bg-blue-500 text-white p-2 rounded-md"
            >
              Login
            </button>
          </form>
        </div>
      </div>
      ;
    </>
  );
}

export default Login;
