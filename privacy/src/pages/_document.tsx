import { Html, Head, Main, NextScript } from 'next/document'

export default function Document() {
  return (
    <Html lang="en"  data-bs-theme="dark">
      <Head />
      <body className="bd-main">
        <Main />
        <NextScript />
      </body>
    </Html>
  )
}

