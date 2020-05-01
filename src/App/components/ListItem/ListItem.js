import React from "react";
import "./ListItem.scss"
import Icons from "../../assets/Assets"

const ListItem = function ({ name, active, icon }) {

  return (
    <div className={`ListItem ${active? "active" : null}`}>
      <img src={Icons[icon]} alt={icon}/>
      <div className="ItemText">
        {name}
      </div>
    </div>
  );
}

export default ListItem;
