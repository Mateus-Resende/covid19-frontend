import React from 'react';
import './Sidebar.scss'

import ListItem from '../ListItem/ListItem'

class Sidebar extends React.Component {
  state = {
    activeItem: 0
  }

  list = [{
    name: 'Suprimentos Médicos',
    icon: 'ShoppingCart'
  }, {
    name: 'Casos próximos',
    icon: 'NearbyCases'
  }, {
    name: 'Consulta online',
    icon: 'OnlineAppointment'
  }, {
    name: 'Onde fazer o teste',
    icon: 'WhereToTest'
  }, {
    name: 'Jogos',
    icon: 'Games'
  }, {
    name: 'Noticias',
    icon: 'News'
  }]

  handleItemClick = (index, event) => {
    this.setState({ activeItem: index })
  }

  render () {
    const items = this.list.map((item, index) => {
      return <ListItem
        name={item.name}
        key={index}
        active={index === this.state.activeItem}
        icon={item.icon}
        click={this.handleItemClick.bind(this, index)}
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
}

export default Sidebar
