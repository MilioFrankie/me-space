import React, { Fragment } from "react";
import Home from "./components/Home";
import NoMatch from "./components/NoMatch";
import Navbar from "./components/NavBar";
// import Login from "./components/Register";
import { Switch, Route } from "react-router-dom";
import { Container } from "semantic-ui-react";
import { register } from "./serviceWorker";

const App = () => (
  <Fragment>
    <Navbar />
    <Container>
      <Switch>
        <Route exact path="/" component={Home} />
        {/* <Route exact path="/login" component={Login} /> */}
        {/* <Route exact path="/register" component={Register} /> */}
        <Route component={NoMatch} />
      </Switch>
    </Container>
  </Fragment>
);

export default App;
