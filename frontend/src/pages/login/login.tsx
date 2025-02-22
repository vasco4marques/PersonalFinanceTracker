import { formToJSON } from "axios";

function login(form: any) {
  console.log(form);
  return form;
}

function Login() {
  return (
    <>
      <div className="w-full h-[100vh] text-white flex flex-col bg-black  overflow-y-hidden items-center justify-center">
        <div className="border-white border-2 p-4 rounded-lg">
          <h1 className="text-4xl text-center">Login</h1>
          <form className="flex flex-col gap-4">
            <label htmlFor="email">Email</label>
            <input
              type="email"
              name="email"
              id="email"
              className="p-2 rounded-md border-2 border-white"
            />
            <label htmlFor="password">Password</label>
            <input
              type="password"
              name="password"
              id="password"
              className="p-2 rounded-md border-2 border-white"
            />
            <button
              type="submit"
              className="bg-blue-500 text-white p-2 rounded-md"
              onClick={login()}
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
