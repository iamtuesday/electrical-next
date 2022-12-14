import Image from "next/image";
import { SwiperOptions, Pagination, Autoplay, Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import { FC, useMemo, useState } from 'react'
import FsLightbox from 'fslightbox-react'
import { Gallery } from "../../interfaces";
import { Titles } from "../atoms";



interface HomeGalleryProps {
    section: string;
    gallery: Gallery
}

const swiperOptions: SwiperOptions = {
    slidesPerView: "auto",
    spaceBetween: 50,
    speed: 1200,
    loop: true,
    autoplay: {
        delay: 7000,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".HomeGallery-Pagination",
        clickable: true,
        type: "bullets",
    },
    navigation: {
        prevEl: ".HomeGallery-prev",
        nextEl: ".HomeGallery-next",
    },
    breakpoints: {
        768: {
            slidesPerView: 2,
        },
        1200: {
            slidesPerView: 4,
            spaceBetween: 17,
            //   allowTouchMove: false,
            autoplay: true,
        },
    },
    modules: [Pagination, Autoplay, Navigation],
};



export const HomeGallery: FC<HomeGalleryProps> = ({
    section,
    gallery
}) => {

    const [lightboxController, setLightboxController] = useState({
        toggler: false,
        slide: 1
    })

    const openLightboxOnSlide = (number: number) => {
        setLightboxController((prevState) => {
            return {
                toggler: !prevState.toggler,
                slide: number
            }
        })
    }

    const images = useMemo(() => {
        return gallery.items.map((item) => item.img_zoom.url)
    }, [gallery])

    return (
        <div className='HomeGallery' data-section={section}>
            <div className='HomeGallery-titles'>
                <Titles title={gallery.title} subtitle={gallery.subtitle} />
                <div className='HomeGallery-p'
                    dangerouslySetInnerHTML={{ __html: gallery.content }}
                />
            </div>
            <div className='HomeGallery-Slider'>
                <Swiper {...swiperOptions}>
                    {gallery?.items.map(({ img, img_zoom }, indexGallery) => (
                        <SwiperSlide className="HomeGallery-Slide" key={indexGallery}>
                            <Image
                                key={indexGallery}
                                className="HomeGallery-img"
                                src={img.url}
                                alt={img?.alternativeText || "Image"}
                                width={620}
                                height={800}
                                onClick={() => openLightboxOnSlide(indexGallery + 1)}
                            />
                            <span className="icon-open-gallery" onClick={() => openLightboxOnSlide(indexGallery + 1)}></span>
                        </SwiperSlide>
                    ))}
                </Swiper>

                <div className="HomeGallery-navigation HomeGallery-next">
                    <i className="icon-next"></i>
                </div>
                <div className="HomeGallery-navigation HomeGallery-prev">
                    <i className="icon-prev"></i>
                </div>

                <FsLightbox
                    toggler={lightboxController.toggler}
                    sources={images}
                    slide={lightboxController.slide}
                    type="image"
                />
            </div>
        </div>
    );
};
