import React from 'react';
import './Sidebar.scss'

import ListItem from '../../components/ListItem/ListItem'

class Sidebar extends React.Component {
  state = {
    activeItem: 0
  }

  list = [{
    name: 'Suprimentos Médicos',
    icon: 'ShoppingCart',
    path: ''
  }, {
    name: 'Casos próximos',
    icon: 'NearbyCases',
    path: 'nearby-cases'
  }, {
    name: 'Consulta online',
    icon: 'OnlineAppointment',
    path: 'online-appointment'
  }, {
    name: 'Onde fazer o teste',
    icon: 'WhereToTest',
    path: 'where-to-test'
  }, {
    name: 'Jogos',
    icon: 'Games',
    path: 'games'
  }, {
    name: 'Noticias',
    icon: 'News',
    path: 'news'
  }]

  handleItemClick = (index) => {
    this.setState({ activeItem: index })
  }

  render () {
    const items = this.list.map((item, index) => {
      return <ListItem
        name={item.name}
        key={index}
        active={index === this.state.activeItem}
        icon={item.icon}
        path={item.path}
        click={this.handleItemClick.bind(this, index)}
      />
    })

    return (
      <div className="SidebarContainer">
        <div className="Sidebar">
          <div>
            <h2 key="1">Menu</h2>
          </div>
          {items}
        </div>
      </div>
    );
  }
}

export default Sidebar
