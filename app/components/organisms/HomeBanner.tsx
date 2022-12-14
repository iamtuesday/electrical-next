import { FC, CSSProperties } from "react";
import { useGenerals } from "../../context/generals.context";
import { Button } from "../atoms";
import { BannerPrin } from "../../interfaces";
import Image from "next/image";
import { goToSection } from "../../lib/utils";
import Link from "next/link";

interface BannerPrinProps {
    banner: BannerPrin,
    section: string
}

export const HomeBanner: FC<BannerPrinProps> = ({
    banner,
    section
}) => {
    const { polylang } = useGenerals();
    const { bg, bg_mob, title, subtitle, content } = banner;

    return (
        <div className="HomeBanner" data-section={section}>
            <Image className="HomeBanner-bg" src="/img/bg.png" height={500} width={250} alt='bg' />
            <div className="HomeBanner-slide"
                style={{
                    "--bg-desktop": `url(${bg.url})`,
                    "--bg-mobile": `url(${bg_mob.url})`
                } as CSSProperties}

            >
                <div className="HomeBanner-content">
                    <h3 className="HomeBanner-h3">{subtitle}</h3>
                    <h2 className="HomeBanner-h2" >{title}</h2>
                    <div className='HomeBanner-p'
                        dangerouslySetInnerHTML={{ __html: content }}
                    />
                    <div className="HomeBanner-btns">
                        <div className="HomeBanner-btn">
                            <Button variant="light" onClick={() => goToSection("services")}>
                                {polylang.lbl_see_service}
                            </Button>
                        </div>
                        <div className="HomeBanner-btn">
                            <Link href="/contact" className="btn-light inline-block" >
                                {polylang.lbl_contact_us}
                            </Link>
                        </div>

                    </div>
                </div>
            </div>

            <div className="HomeBanner-info">
                <div className="HomeBanner-info-call">
                    <figure className="HomeBanner-info-phone">
                        <Image src="/img/phone.svg" alt="" width={50} height={50} />
                    </figure>
                </div>
                <div className="HomeBanner-info-info">
                    <h3 className="HomeBanner-info-h3">{polylang.lbl_get_estimate}</h3>
                    <p className="HomeBanner-info-p">{polylang.phone}</p>
                </div>
            </div>

        </div>

    );
};
