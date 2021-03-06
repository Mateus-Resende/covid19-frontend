import React from 'react';
import Sidebar from './views/Sidebar/Sidebar';
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";

import News from './components/News/News';
import Game from './components/Game/Game';
import RiskPreview from './components/RiskPreview/RiskPreview';
import NearbyCases from './components/NearbyCases/NearbyCases';
import Information from './components/Information/Information';
import WhereToTest from './components/WhereToTest/WhereToTest';
import Shop from './components/Shop/Shop'
import Footer from './components/Footer/Footer'
import './App.scss';

class App extends React.Component {
  state = {}

  demoWatson () {
    window.loadWatsonAssistantChat({
      integrationID: process.env.REACT_APP_IBM_WATSON_INTEGRATION,
      region: "us-south"
    }).then((instance) => {
      instance.render()
    })
  }

  render () {
    this.demoWatson()
    return (
      <div className="App">
        <Router>
          <Sidebar />
          <div className="Content" onScroll={() => console.log('blabla')}>
            <Switch>
              <Route exact path="/">
                <Shop />
              </Route>
              <Route exact path="/risk-preview">
                <RiskPreview />
              </Route>
              <Route path="/nearby-cases">
                <NearbyCases />
              </Route>
              <Route path="/faq">
                <Information />
              </Route>
              <Route path="/where-to-test">
                <WhereToTest />
              </Route>
              <Route path="/games">
                <Game />
              </Route>
              <Route path="/news">
                <News />
              </Route>
            </Switch>
            <Footer />
          </div>
        </Router>
      </div>
    );
  }
}

export default App;
