import React from "react";
import "./ListItem.scss"
import Icons from "../../assets/Assets"

const ListItem = function ({ name, active, icon, click }) {

  return (
    <div onClick={click} className={`ListItemContainer${active? " active" : ''}`}>
      <div className="ListItem">
        <img src={Icons[icon]} alt={icon}/>
        <div className="ItemText">
          {name}
        </div>
      </div>
    </div>
  );
}

export default ListItem;
