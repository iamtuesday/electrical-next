import { FC, } from "react";
import { Titles } from "../atoms";
import { ContactData, ServiceList } from "../../interfaces";
import Image from "next/image";
import { Form } from "../molecules";

interface ContactProps {
    contact: ContactData,
    services: ServiceList[]
}

export const ContactSection: FC<ContactProps> = ({
    contact,
    services
}) => {
    const { info: { title, subtitle, content, card }, name, email, phone, service, submit, message, messages } = contact;
    return (
        <div className="Contact">
            <div className="Contact-Titles">
                <Titles title={title} subtitle={subtitle} />
                <div className='Contact-Text'
                    dangerouslySetInnerHTML={{ __html: content! }}
                />

                <ul className='Contact-ul'>
                    {
                        card.map(({ icon, type, value }, index) => {
                            return <li key={index} className='Contact-li'>
                                <figure className='Contact-icon'>
                                    <Image src={icon.url} alt='' width={50} height={50} />
                                </figure>
                                <div>
                                    <h2 className="Contact-h2">{type}</h2>
                                    <div className='Contact-p'
                                        dangerouslySetInnerHTML={{ __html: value! }}
                                    />
                                </div>
                            </li>
                        })
                    }

                </ul>
            </div>
            <div className='Contact-form'>
                <Form name={name}
                    phone={phone}
                    email={email}
                    message={message}
                    service={service}
                    submit={submit}
                    services={services}
                    messages={messages}
                />
            </div>
        </div>

    );
};
