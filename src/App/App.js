import React from 'react';
import Sidebar from './components/Sidebar/Sidebar';
import Content from './components/Content/Content';

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
