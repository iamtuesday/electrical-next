import Image from "next/image";
import { FC } from "react";

interface ReviewCardProps {
  name: string;
  content: string;
  avatar: string;
  stars: string
}

export const ReviewCard: FC<ReviewCardProps> = ({ content, avatar, name, stars }) => {
  return (
    <article className="ReviewCard">
      <Image className="ReviewCard-stars" src={stars} width={120} height={50} alt={name} />

      <picture className="ReviewCard-picture">
        <Image className="ReviewCard-img" src={avatar} fill alt={name} />
      </picture>
      <div className="ReviewCard-content">
        <p className="ReviewCard-p">{content}</p>
        <h3 className="ReviewCard-h3">{name}</h3>
      </div>
    </article>
  );
};
