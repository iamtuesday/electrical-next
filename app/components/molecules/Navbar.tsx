import { FC } from "react";
import { useNavbarContext } from "../../context/navbar.context";
import { useGenerals } from "../../context/generals.context";
import { goToSection } from "../../lib/utils";
import { Logo, Socials } from "../atoms";
import { useRouter } from 'next/router'
import Link from 'next/link'

interface NavbarProps {
  isMenuOpen: boolean;
  closeMenu: () => void;
}

export const Navbar: FC<NavbarProps> = ({ isMenuOpen, closeMenu }) => {
  const { polylang } = useGenerals()
  const router = useRouter()
  const { activeSection, isHeaderWhite, setscrolltoSectionFromContact } = useNavbarContext()

  const handleClick = (url: string) => {
    closeMenu()
    goToSection(url)
  }

  const handleContactClick = () => {
    closeMenu();
    router.push('/contact')
  };

  const handleGoToSection = (id: string) => {
    closeMenu()
    setscrolltoSectionFromContact(id)
  }

  return (
    <nav className={`Navbar ${isMenuOpen ? 'isActive' : ''}`}>
      <div className="Navbar-container">
        <div className="Navbar-logo">
          <Logo />
        </div>
        <Socials />
      </div>

      <ul className={`Navbar-ul ${router.pathname == '/contact' ? "active" : ""}`}>
        {polylang.menu.map(({ id, label, url }) =>
          router.asPath === '/contact' ? (
            <Link href={`/`} key={id} className='Navbar-li'>
              <div
                className={`${isHeaderWhite || router.asPath === '/contact' ? '' : ''
                  }`}
                onClick={() => handleGoToSection(url)}
              >
                {label}
              </div>
            </Link>
          ) : (
            <li
              onClick={() => handleClick(url)}
              className={`Navbar-li ${url === activeSection ? 'isActive' : ''}`}
              key={id}
            >
              <div
                className={`Navbar-a  ${isHeaderWhite || router.asPath === '/contact' ? '' : ''
                  }`}
              >
                {label}
              </div>
            </li>
          )
        )}
        <li className={`Navbar-li`} onClick={handleContactClick}>
          <a className={`Navbar-a  Navbar-contact ${router.pathname == '/contact' ? "active  Navbar-contact" : ""}`}>
            {polylang.lbl_contact_us}
          </a>
        </li>
      </ul>
    </nav>
  )
}
