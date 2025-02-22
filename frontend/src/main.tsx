import ReactDOM from "react-dom/client";
import { BrowserRouter, Routes, Route } from "react-router";

import "./index.css";
import App from "./pages/App.tsx";
import Login from "./pages/login/login.tsx";

ReactDOM.createRoot(document.getElementById("root")!).render(
  <BrowserRouter>
    <Routes>
      <Route path="/" element={<App />} />
      <Route path="/login" element={<Login />} />
    </Routes>
  </BrowserRouter>
);
