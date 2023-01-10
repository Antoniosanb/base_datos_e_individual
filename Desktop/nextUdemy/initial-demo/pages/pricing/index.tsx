import { Inter } from '@next/font/google'
import Link from 'next/link'
import MainLayout from '../../components/layouts/MainLayout'

const inter = Inter({ subsets: ['latin'] })

export default function Pricing() {
  return (
    <MainLayout>
      <div>
        <h1>Pricing Page</h1>
        <h1>
          Ir a <Link href="/">Home</Link>
        </h1>
      </div>
    </MainLayout>
  )
}
