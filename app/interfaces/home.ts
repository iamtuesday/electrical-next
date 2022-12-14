export interface Home {
    data: HomeData;
    meta: HomeMeta;
}

export interface HomeData {
    id: number;
    createdAt: string;
    updatedAt: string;
    publishedAt: string;
    banner_prin: BannerPrin;
    services: HowWeWork;
    service_list: ServiceList[];
    characteristics: Characteristic[];
    about: About;
    review: Review;
    gallery: Gallery;
    how_we_work: HowWeWork;
    seo: SEO;
}

export interface About {
    id: number;
    title: string;
    subtitle: string;
    content: string;
    img: Img;
    img_mob: Img;
    card: AboutCard[];
    img_two: Img;
}

export interface AboutCard {
    id: number;
    content: string;
    icon: Img;
    title?: string;
}

export interface Img {
    id: number;
    name: string;
    alternativeText: null;
    caption: null;
    width: number;
    height: number;
    formats: Formats | null;
    hash: string;
    ext: EXT;
    mime: MIME;
    size: number;
    url: string;
    previewUrl: null;
    provider: Provider;
    provider_metadata: null;
    createdAt: Date;
    updatedAt: Date;
}

export enum EXT {
    Jpg = '.jpg',
    PNG = '.png',
    SVG = '.svg'
}

export interface Formats {
    small?: Large;
    thumbnail: Large;
    large?: Large;
    medium?: Large;
}

export interface Large {
    ext: EXT;
    url: string;
    hash: string;
    mime: MIME;
    name: string;
    path: null;
    size: number;
    width: number;
    height: number;
}

export enum MIME {
    ImageJPEG = 'image/jpeg',
    ImagePNG = 'image/png',
    ImageSVGXML = 'image/svg+xml'
}

export enum Provider {
    AwsS3 = "aws-s3",
}

export interface BannerPrin {
    id: number;
    title: string;
    content: string;
    subtitle: string;
    bg: Img;
    bg_mob: Img;
}

export interface Characteristic {
    id: number;
    title: string;
    Subtitle: string;
}

export interface Gallery {
    id: number;
    title: string;
    subtitle: string;
    content: string;
    items: Item[];
}

export interface Item {
    id: number;
    img: Img;
    img_zoom: Img;
}

export interface HowWeWork {
    id: number;
    title: string;
    subtitle: string;
    card?: AboutCard[];
    content?: string;
}

export interface Review {
    id: number;
    title: string;
    subtitle: string;
    card: ReviewCard[];
    bg: Img;
    bg_mob: Img;
}

export interface ReviewCard {
    id: number;
    content: string;
    name: string;
    stars: Img;
    avatar: Img;
}

export interface SEO {
    id: number;
    metaTitle: string;
    metaDescription: string;
    keywords: null;
    metaRobots: null;
    structuredData: null;
    metaViewport: string;
    canonicalURL: string;
    metaImage: Img;
    metaSocial: MetaSocial[];
}

export interface MetaSocial {
    id: number;
    socialNetwork: string;
    title: string;
    description: string;
    image: Img;
}

export interface ServiceList {
    id: number;
    title: string;
    content: string;
    slug: null;
    image: Img;
    icon: Img;
}

export interface HomeMeta {
}
