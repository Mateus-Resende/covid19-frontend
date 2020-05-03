import React from 'react';
import Sidebar from './views/Sidebar/Sidebar';
import Content from './views/Content/Content';

import './App.scss';

class App extends React.Component {
  state = {}

  render () {
    return (
      <div className="App">
        <Sidebar />
        <Content />
      </div>
    );
  }
}

export default App;
