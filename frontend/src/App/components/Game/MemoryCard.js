import React from "react";
import Icons from '../../assets/Assets';

const MemomyCard = ({id, framework, img, alt, disabled, flipped, parentClickHandler}) => {
  const clicked = () => parentClickHandler(id, framework)

  return (
    <div className={`memory-card ${flipped && 'flip'}`} key={id} data-framework={framework} onClick={disabled ? () => {} : clicked}>
      <img className="front-face" src={img} alt={alt} />
      <img className="back-face" src={Icons.Virus} alt="Virus" />
    </div>
  )
}

export default MemomyCard;
