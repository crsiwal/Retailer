import Head from "next/head";
import DefaultHeader from "../components/header/default";
export default function Home() {
  return (
    <>
      <DefaultHeader />
      <div className="text">Home Page</div>
    </>
  );
}
