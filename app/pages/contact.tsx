import type { NextPage } from "next";
import { GetStaticProps } from "next";
import { getGenerals } from '../lib/getGenerals';
import { baseApi } from '../lib/baseApi';
import { Contact, ContactData, Home } from "../interfaces";
import { ContactSection } from "../components/organisms";
import { ServiceList } from '../interfaces/home';
import { SeoEngine } from '../components/globals'


interface HomeProps {
    contact: ContactData
    services: ServiceList[]
}

const Contact: NextPage<HomeProps> = ({ contact, services }) => {

    return (
        <div className='main-page'>
            <ContactSection contact={contact} services={services} />
            <SeoEngine seo={contact.seo} />
        </div>
    )
}

export default Contact;

export const getStaticProps: GetStaticProps = async () => {
    const generals = await getGenerals();

    const [{ data: home }, { data: contact }] = await Promise.all([
        baseApi.get<Home>("/home?populate=deep"),
        baseApi.get<Contact>("/form?populate=deep"),
    ]);

    return {
        props: {
            services: home.data.service_list,
            contact: contact.data,
            generals,
        },
        revalidate: 1
    };
};
