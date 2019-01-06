import React from "react";
import { Header, Segment, Icon, Grid, SegmentInline } from "semantic-ui-react";


const square = { width: 175, height: 175, marginTop: "10px" };

const Home = () => (
  <Segment basic>
  <Segment circular style={square} inverted floated="left">
    <Header as="h1" textAlign="center">
      <Icon name="comments outline" />
      MeSpace
    </Header>
  </Segment>
    <Grid container columns={3}>
      <h1>
        All users will be renderd here in columns of three
      </h1>
    </Grid>
  </Segment>
);

export default Home;
