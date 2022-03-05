import React from "react";
import homeImage from "./assets/teacherTools.png";
import "../App.css";
import {
  Button,
  Container,
  Grid,
  Header,
  Image,
  Segment,
} from "semantic-ui-react";
import { borderRadius } from "@mui/system";

const Home = () => (
  <Segment style={{ padding: "0em 0em 5em" }} vertical>
    <Image
      className="homeimg"
      style={{ borderRadius: "none" }}
      src={homeImage}
      alt={"hanging flower pots"}
    />

    <Grid
      container
      stackable
      verticalAlign="middle"
      style={{ padding: "6em 0em" }}
    >
      <Grid.Row>
        <Grid.Column width={8}>
          <Header as="h3" style={{ fontSize: "2em" }}>
            Five interesting facts about recycling!
          </Header>
          <p style={{ fontSize: "1.33em" }}>
            The United States annually recycles enough iron and steel scrap
            metals (known as ferrous scrap), by weight, to build more than 900
            Golden Gate Bridges — a bridge stretching nearly 9,000 feet.
          </p>
          <p style={{ fontSize: "1.33em" }}>
            More than 52 million tons of paper products were recycled in 2018.
            That’s roughly the same weight as almost 350,000 blue whales.
          </p>
          <p style={{ fontSize: "1.33em" }}>
            Recycling one aluminum can saves enough energy to run a 55-inch HDTV
            to watch your favorite movie. If we recycled all of the aluminum
            cans in the U.S., the energy saved could power 4.1 million homes for
            a full year.
          </p>
          <p style={{ fontSize: "1.33em" }}>
            Recycling helps save energy. If you recycle one glass bottle, it
            saves enough energy to light a 100-watt bulb for four hours, power a
            computer for 30 minutes, or a television for 20 minutes.
          </p>
          <p style={{ fontSize: "1.33em" }}>
            Cardboard (also known as corrugated) boxes can be recycled at least
            seven times and can be used to make new packaging boxes and even
            furniture.
          </p>
        </Grid.Column>
        <Grid.Column floated="right" width={6}>
          <Image bordered rounded size="large" src="/images/Trashbin.png" />
        </Grid.Column>
      </Grid.Row>
    </Grid>
    <Image
      // className="homeimg"
      style={{
        float: "right",
        width: "70%",
        paddingRight: "10rem",
        borderRadius: "none",
      }}
      src="/images/dropofflocation.png"
      alt={"hanging flower pots"}
    />
    <Container text style={{ paddingTop: "8rem", marginBottom: "80px" }}>
      <Image
        // className="homeimg"
        style={{ borderRadius: "none" }}
        src="/images/boxesMap.png"
        alt={"hanging flower pots"}
      />
    </Container>
    <Grid celled="internally" columns="equal" stackable>
      <Grid.Row textAlign="center">
        <Grid.Column style={{ paddingBottom: "5em", paddingTop: "5em" }}>
          <Header as="h3" style={{ fontSize: "2em" }}>
            "We Love how all of our house plants are all in one location! Makes
            watering much easier!"
          </Header>
        </Grid.Column>
        <Grid.Column style={{ paddingBottom: "5em", paddingTop: "5em" }}>
          <Header as="h3" style={{ fontSize: "2em" }}>
            "Loved every minute of using PlantHub!"
          </Header>
          <p style={{ fontSize: "1.33em" }}>
            <Image avatar src="./images/favicon.ico" />
            <b>Jen</b> Member since 2021
          </p>
        </Grid.Column>
      </Grid.Row>
      <Grid.Column
        textAlign="center"
        href="/MyGarden"
        style={{ marginTop: "30px" }}
      >
        <Button href="/Donate" size="large">
          Read More About What You Can Donate!
        </Button>
      </Grid.Column>
    </Grid>
  </Segment>
);

export default Home;
