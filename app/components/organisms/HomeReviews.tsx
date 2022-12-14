import Image from "next/image";
import { FC, CSSProperties } from "react";
import { SwiperOptions, Pagination, Autoplay, Navigation } from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import { Review } from "../../interfaces";
import { Heading } from "../atoms";
import { ReviewCard } from "../molecules";

interface HomeReviewsProps {
    list: Review;
    section: string;
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
        el: ".HowReviews-Pagination",
        clickable: true,
        type: "bullets",
    },
    navigation: {
        prevEl: ".HowReviews-prev",
        nextEl: ".HowReviews-next",
    },
    breakpoints: {
        768: {
            slidesPerView: 2,
        },
        1200: {
            slidesPerView: 2,
            spaceBetween: 50,
            //   allowTouchMove: false,
            autoplay: true,
        },
    },
    modules: [Pagination, Autoplay, Navigation],
};

export const HomeReviews: FC<HomeReviewsProps> = ({ list, section }) => {
    const { bg, bg_mob, title, subtitle, card } = list;
    return (
        <main className="HowReviews" data-section={section}
            style={{
                "--bg-desktop": `url(${bg.url})`,
                "--bg-mobile": `url(${bg_mob.url})`
            } as CSSProperties}
        >
            <div className="HowReviews-heading">
                <Heading title={title} subtitle={subtitle} className='white' />
            </div>
            <div className="HowReviews-swiperContainer">
                <Swiper {...swiperOptions}>
                    {card?.map(({ name, content, avatar: { url }, stars }, index) => (
                        <SwiperSlide className="HowReviews-slide" key={index}>
                            <ReviewCard name={name} content={content} avatar={url} stars={stars.url} />
                        </SwiperSlide>
                    ))}
                </Swiper>
                <div className="HowReviews-navigation HowReviews-next">
                    <i className="icon-next"></i>
                </div>
                <div className="HowReviews-navigation HowReviews-prev">
                    <i className="icon-prev"></i>
                </div>
                <div className="HowReviews-Pagination"></div>
            </div>
            <Image className="HowReviews-Quote" src="/img/quote.svg" width={130} height={50} alt="Quote" />

            <Image className="HowReviews-Quote2" src="/img/quote.svg" width={130} height={50} alt="Quote" />

        </main>
    );
};
