import "../styles/globals.css"

export default function Page() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      <div className="p-8 bg-white shadow-lg rounded-2xl text-center">
        <h1 className="text-4xl font-bold text-blue-600 mb-4">
          Gemma AI Project
        </h1>
        <p className="text-gray-600 text-lg">
          Environment setup successful! Tailwind CSS is working.
        </p>
        <div className="mt-6 inline-block px-4 py-2 bg-green-100 text-green-700 rounded-full text-sm font-medium">
          ✅ Dependencies Installed
        </div>
      </div>
    </div>
  )
}