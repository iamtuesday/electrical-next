import { FC, } from "react";
import { Heading } from "../atoms";
import { HowWeWork } from "../../interfaces";
import Image from "next/image";

interface HowWeWorkProps {
    how: HowWeWork,
    section: string
}

export const HomeWeWork: FC<HowWeWorkProps> = ({
    how,
    section
}) => {
    const { title, subtitle, card } = how;

    return (
        <div className="HomeWeWork" data-section={section}>
            <div className="HomeWeWork-titles">
                <Heading title={title} subtitle={subtitle} />
            </div>

            <div className="HomeWeWork-Content">
                {
                    card?.map((item, idx) => {
                        return (
                            <div className="HomeWeWork-CardWork" key={idx}>
                                <div className="HomeWeWork-CardWork-Top">
                                    <div className="HomeWeWork-CardWork-Icon">
                                        <figure>
                                            <Image src={item.icon.url} width={50} height={50} alt="Icon" />
                                        </figure>
                                        <span>0{idx + 1}</span>
                                    </div>
                                    <h2 className="HomeWeWork-CardWork-h2">{item.title}</h2>
                                    <div className="HomeWeWork-CardWork-p"
                                        dangerouslySetInnerHTML={{ __html: item.content }}
                                    />
                                </div>
                                <figure className="HomeWeWork-CardWork-Bottom">
                                    <Image src="/img/line.svg" alt="line" height={50} width={300} />
                                </figure>
                            </div>
                        )
                    })
                }
            </div>
        </div>

    );
};
