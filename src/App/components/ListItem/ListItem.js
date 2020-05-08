import React from "react";
import { NavLink } from "react-router-dom";

import "./ListItem.scss";
import Icons from "../../assets/Assets";

const ListItem = function ({ name, icon, click, path }) {

  return (
    <NavLink to={path} activeClassName="active">
      <div onClick={click} className="ListItemContainer">
        <div className="ListItem">
          <img src={Icons[icon]} alt={icon}/>
          <div className="ItemText">
            {name}
          </div>
        </div>
      </div>
    </NavLink>
  );
}

export default ListItem;
