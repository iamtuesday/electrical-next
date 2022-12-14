import type { NextPage } from "next";
import { GetStaticProps } from "next";
import { getGenerals } from '../lib/getGenerals';
import { baseApi } from '../lib/baseApi';
import { Home, HomeData } from '../interfaces';
import {
  HomeBanner,
  HomeServices,
  HomeWeWork,
  HomeCharacteristic,
  HomeReviews,
  HomeGallery,
  HomeAbout
}
  from '../components/organisms';
import { useObserver } from "../hooks/useObserver";
import { useNavbarContext } from "../context/navbar.context";
import { useEffect } from 'react';
import { goToSection } from "../lib/utils";
import { SeoEngine } from '../components/globals'



interface HomeProps {
  home: HomeData
}

const Home: NextPage<HomeProps> = ({ home }) => {
  const { setActiveSection, scrolltoSectionFromContact } = useNavbarContext()
  const { setElements, entries } = useObserver({ rootMargin: '-13% 0px -80% 0px' })

  useEffect(() => {
    const elements = document.querySelectorAll('[data-section]')
    setElements(elements)
  }, [setElements])

  useEffect(() => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        const section = entry.target.getAttribute('data-section')

        // if (section === '#form') return

        setActiveSection(String(section))
      }
    })
  }, [entries, setActiveSection])
  useEffect(() => {
    if (scrolltoSectionFromContact) {
      goToSection(scrolltoSectionFromContact)
    }
  }, [scrolltoSectionFromContact])

  return (
    <main className='main-page'>
      {/* HomeBanner */}
      <HomeBanner banner={home.banner_prin} section='/' />

      {/* HomeServices */}
      <HomeServices service={home.services} service_list={home.service_list} section='services' />

      {/* HomeWeWork */}
      <HomeWeWork how={home.how_we_work} section='how' />

      {/* HomeCharacteristic */}
      <HomeCharacteristic list={home.characteristics} />

      {/* HomeReviews */}
      <HomeReviews list={home.review} section='reviews' />

      {/* HomeGallery */}
      <HomeGallery gallery={home.gallery} section='gallery' />

      {/* HomeAbout */}
      <HomeAbout about={home.about} section='about' />

      <SeoEngine seo={home.seo} />
    </main>

  )
}

export default Home;

export const getStaticProps: GetStaticProps = async () => {
  const generals = await getGenerals();

  const [{ data: home }] = await Promise.all([
    baseApi.get<Home>("/home?populate=deep"),
  ]);

  return {
    props: {
      home: home.data,

      generals,
    },
    revalidate: 1
  };
};
