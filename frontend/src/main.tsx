import ReactDOM from "react-dom/client";
import { BrowserRouter, Routes, Route } from "react-router";


import './index.css'
import App from './App.tsx'


ReactDOM.createRoot(document.getElementById('root')!).render(
  <BrowserRouter>
    <Routes>
      <Route path="/" element={<App />} />
    </Routes>
  </BrowserRouter>
)
