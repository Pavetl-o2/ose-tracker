import './globals.css'

export const metadata = {
  title: 'OSE Tracker — St. Regis Costa Mujeres',
  description: 'Control de recepción y entrega de OSE',
}

export default function RootLayout({ children }) {
  return (
    <html lang="es">
      <body className="bg-gray-50 min-h-screen">{children}</body>
    </html>
  )
}
