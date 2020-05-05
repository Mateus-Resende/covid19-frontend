import React from "react";
import { Link } from "react-router-dom";

import "./ListItem.scss";
import Icons from "../../assets/Assets";

const ListItem = function ({ name, active, icon, click, path }) {

  return (
    <div onClick={click} className={`ListItemContainer${active? " active" : ''}`}>
      <div className="ListItem">
        <img src={Icons[icon]} alt={icon}/>
        <div className="ItemText">
          <Link to={path}>{name}</Link>
        </div>
      </div>
    </div>
  );
}

export default ListItem;
