import { Inter } from '@next/font/google'
import Link from 'next/link'
import JSXStyle from 'styled-jsx/style'
import { DarkLayout } from '../components/layouts/DarkLayout'
import MainLayout from '../components/layouts/MainLayout'

const inter = Inter({ subsets: ['latin'] })

export default function About() {
  return (
    <>
      <div>
        <h1>About Page</h1>
        <h1>
          Ir a <Link href="/">Home</Link>
        </h1>
      </div>
    </>
  )
}

About.getLayout = function getLayout( page: JSX.Element ) {
  return (
    <MainLayout>
      <DarkLayout>
       { page }
      </DarkLayout>
    </MainLayout>
  )
}