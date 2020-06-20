import React, { useState, useEffect, useRef } from "react";
import Icons from '../../assets/Assets';

const MemomyCard = ({id, framework, img, alt, disabled, mustUnflip, parentClickHandler}) => {
  const [classes, setClasses] = useState(['memory-card'])

  const clicked = () => {
    classes.includes('flip')
      ? setClasses(['memory-card'])
      : setClasses(['memory-card', 'flip'])
    parentClickHandler(id, framework)
  }

  useEffect (() => {
    debugger
    if (mustUnflip) {
      setClasses(['memory-card'])
      mustUnflip = false
    }
  }, [mustUnflip]);


  return (
    <div className={classes.join(' ')} key={id} data-framework={framework} onClick={disabled ? () => {} : clicked}>
      <img className="front-face" src={img} alt={alt} />
      <img className="back-face" src={Icons.Virus} alt="Virus" />
    </div>
  )
}

export default MemomyCard;
