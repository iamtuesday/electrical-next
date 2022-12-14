import { FC, } from "react";
import { Button, Titles } from "../atoms";
import { About } from "../../interfaces";

import Image from "next/image";
import { useGenerals } from "../../context/generals.context";
import Link from "next/link";

interface HomeAboutProps {
    about: About,
    section: string
}

export const HomeAbout: FC<HomeAboutProps> = ({
    about,
    section
}) => {
    const { polylang } = useGenerals();

    const { title, subtitle, content, img, img_two, img_mob, card } = about;

    return (
        <div className="HomeAbout" data-section={section}>
            <div className="HomeAbout-Left">
                <Image src={img.url} alt='' width={333} height={558} className="HomeAbout-Img" />
                <Image src={img_two.url} alt='' width={333} height={558} className="HomeAbout-ImgTwo" />
                <Image src={img_mob.url} alt='' width={412} height={275} className="HomeAbout-imgMob" />
            </div>
            <div className="HomeAbout-Right">
                <Titles title={title} subtitle={subtitle} />
                <div className='HomeAbout-p'
                    dangerouslySetInnerHTML={{ __html: content! }}
                />
                <ul className='HomeAbout-ul'>
                    {
                        card.map(({ icon, content }, index) => {
                            return <li key={index} className='HomeAbout-li'>
                                <figure className='HomeAbout-icon'>
                                    <Image src={icon.url} alt='' width={50} height={50} />
                                </figure>
                                <div className='HomeAbout-p'
                                    dangerouslySetInnerHTML={{ __html: content! }}
                                />
                            </li>
                        })
                    }

                </ul>

                <div className='HomeAbout-btn'>
                    <Link href="/contact" className="btn-light"> {polylang.lbl_contact_us}</Link>
                </div>
            </div>
        </div>

    );
};
