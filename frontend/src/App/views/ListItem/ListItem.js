import React from "react";
import { NavLink } from "react-router-dom";

import "./ListItem.scss";
import Icons from "../../assets/Assets";

const ListItem = function ({ name, icon, click, path }) {
  return (
    <div onClick={click} className="ListItemContainer">
      <NavLink to={path} className="ListItem" activeClassName="active" exact>
        <img src={Icons[icon]} alt={icon}/>
        <div className="ItemText">
          {name}
        </div>
      </NavLink>
    </div>
  );
}

export default ListItem;
