import { FC } from "react";
import { SwiperOptions, Pagination, Autoplay } from "swiper";
import { Swiper, SwiperSlide } from "swiper/react";
import { Characteristic } from "../../interfaces";

interface CharacteristicsProps {
    list: Characteristic[];
}


const swiperOptions: SwiperOptions = {
    slidesPerView: "auto",
    spaceBetween: 50,
    loop: true,
    autoplay: {
        delay: 7000,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".HomeCharacteristic-Pagination",
        clickable: true,
        type: "bullets",
    },
    breakpoints: {
        1: {
            slidesPerView: 1,
            autoplay: true,
        },
        1024: {
            slidesPerView: 3,
        },
        1200: {
            slidesPerView: 4,
            spaceBetween: 94,
            allowTouchMove: false,
            autoplay: false,
        },
        1400: {
            slidesPerView: 4,
            spaceBetween: 50,
            allowTouchMove: false,
            autoplay: false,
        },
    },
    modules: [Pagination, Autoplay],
};

export const HomeCharacteristic: FC<CharacteristicsProps> = ({ list }) => {
    return (
        <div className="HomeCharacteristic">
            <Swiper {...swiperOptions} className="HomeCharacteristic-Slider">
                {list.map((item, index) => (
                    <SwiperSlide key={index} className="HomeCharacteristic-Slide">
                        <h2 className="HomeCharacteristic-h2">{item.title}</h2>
                        <h3 className="HomeCharacteristic-h3">{item.Subtitle}</h3>
                    </SwiperSlide>
                ))}
            </Swiper>

            <div className="HomeCharacteristic-Pagination"></div>
        </div>
    );
};
