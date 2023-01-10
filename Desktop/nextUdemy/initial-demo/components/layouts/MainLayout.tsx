import Head from "next/head";
import styles from "./MainLayout.module.css";
import {Navbar} from "../Navbar"
import { FC, ReactElement, ReactNode } from 'react';

interface Props {
  children: ReactNode
}

const MainLayout: FC<Props> = ({ children }) => {
  return (
    <>
    <Head>
      <title>Home</title>
      <meta name="description" content="Home app" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="icon" href="/favicon.ico" />
    </Head>

    <Navbar />

    <main className={styles.main}>
        {children}
    </main>
  </>
  )
}

export default MainLayout;
