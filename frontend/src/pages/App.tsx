import Navbar from "../components/ui/navbar";

function App() {
  return (
    <>
      <div className="w-full h-[100vh] text-white flex bg-black flex-col">
        <Navbar />
        <div className="flex items-center justify-center h-full">
          <h1 className="text-center text-4xl">
            Your personal Finance Tracker
          </h1>
        </div>
      </div>
    </>
  );
}

export default App;
