import { FC, } from "react";
import { Titles } from "../atoms";
import { HowWeWork, ServiceList } from "../../interfaces";
import { ServiceCard } from "../molecules";

interface HomeServicesProps {
    service: HowWeWork,
    service_list: ServiceList[],
    section: string
}

export const HomeServices: FC<HomeServicesProps> = ({
    service,
    service_list,
    section
}) => {
    const { title, subtitle, content } = service;

    return (
        <div className="HomeServices" data-section={section}>
            <div className="HomeServices-titles">
                <Titles title={title} subtitle={subtitle} />
                <div className='HomeServices-p'
                    dangerouslySetInnerHTML={{ __html: content! }}
                />
            </div>
            <div className="HomeServices-CardContainer">
                {
                    service_list?.map((service, index) => {
                        return <ServiceCard service_list={service} key={index} />
                    })
                }
            </div>

        </div>

    );
};
