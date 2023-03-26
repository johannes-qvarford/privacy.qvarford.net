import Head from 'next/head'
import { Inter } from 'next/font/google'

const inter = Inter({ subsets: ['latin'] })

function Item({link, name}: { link: string, name: string }) {
  return <li className="list-group-item"><a href={link}>{name}</a></li>
}

export default function Home() {
  return (
    <>
      <Head>
        <title>Johannes Qvarford Privacy - Home</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <main>
        <header>Johannes Qvarford Privacy - Home</header>
        <nav>
            <ul className="list-group">
                <Item link='https://miniflux.privacy.qvarford.net' name='Miniflux'/>
                <Item link='https://invidious.privacy.qvarford.net' name='Invidious'/>
                <Item link='https://libreddit.privacy.qvarford.net/r/rust' name='Libreddit'/>
                <Item link='https://nitter.privacy.qvarford.net' name='Nitter'/>
                <Item link='https://dokuwiki.privacy.qvarford.net' name='Dokuwiki'/>
                <Item link='https://monica.privacy.qvarford.net' name='Monica'/>
            </ul>
        </nav>
      </main>
    </>
  )
}
