
import Link from "next/link";
import MainLayout from "../../components/layouts/MainLayout";

export default function About() {
  return (
    <MainLayout>
      <div>
        <h1>Contact Page</h1>
        <h1>
          Ir a <Link href="/">Home</Link>
        </h1>
      </div>
    </MainLayout>
  )
}