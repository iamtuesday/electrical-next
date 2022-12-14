import Image from "next/image";
import { FC } from "react";
import { ServiceList } from '../../interfaces'
import { Button } from "../atoms";
import { useGenerals } from "../../context/generals.context";
import { useNavbarContext } from "../../context/navbar.context";
import { convertToSlug } from "../../lib/utils";
import Link from "next/link";

interface ServiceCardProps {
    service_list: ServiceList
}

export const ServiceCard: FC<ServiceCardProps> = ({ service_list }) => {
    const { image, icon, title, slug, content } = service_list;
    const { polylang } = useGenerals();
    const { setFormServiceValue } = useNavbarContext()
    return (
        <div className="ServiceCard">
            <div className="ServiceCard-img">
                <Image src={image.url} width={450} height={225} alt={title} />
            </div>

            <div className="ServiceCard-icon">
                <figure>
                    <Image src={icon.url} alt={title} width={50} height={60} />
                </figure>
            </div>
            <div className="ServiceCard-info">
                <div className="ServiceCard-middle">
                    <h3 className="ServiceCard-title">{title}</h3>
                    <div className='ServiceCard-content'
                        dangerouslySetInnerHTML={{ __html: content }}
                    />
                </div>
                <div className='ServiceCard-btn' onClick={() => setFormServiceValue(convertToSlug(title))}>
                    <Link href="/contact" className="btn-light inline-block" >{polylang.lbl_contact_us}</Link>
                </div>
            </div>
        </div>
    );
};

