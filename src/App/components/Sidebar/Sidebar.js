import React from 'react';
import './Sidebar.scss'

import ListItem from '../ListItem/ListItem'

const list = [{
  name: 'Suprimentos Médicos',
  active: false,
  icon: 'ShoppingCart'
}, {
  name: 'Casos próximos',
  active: true,
  icon: 'NearbyCases'
}, {
  name: 'Consulta online',
  active: false,
  icon: 'OnlineAppointment'
}, {
  name: 'Onde fazer o teste',
  active: false,
  icon: 'WhereToTest'
}, {
  name: 'Jogos',
  active: false,
  icon: 'Games'
}, {
  name: 'Noticias',
  active: false,
  icon: 'News'
}]

const Sidebar = function () {
  const items = list.map((item, index) => {
    return <ListItem
      name={item.name}
      key={index}
      active={item.active}
      icon={item.icon}
    />
  })

  return (
    <div className="SidebarContainer">
      <div className="Sidebar">
        <h2 key="1">Menu</h2>
        {items}
      </div>
    </div>
  );
}

export default Sidebar
