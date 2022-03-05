import React, { Component } from "react";
import SignUp from "../components/SignUp";
import { Container } from "semantic-ui-react";
import homeImage from "./assets/teacherTools.png";
import "../App.css";

export default class Educators extends Component {
  render() {
    return (
      <Container fluid>
        <div
          className="container"
          style={{
            backgroundImage: `url(${homeImage})`,
            backgroundPosition: "center",
            backgroundSize: "contain",
            backgroundRepeat: "no-repeat",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            minWidth: "100vw",
            minHeight: "100vh",
          }}
        >
          <SignUp />
        </div>
      </Container>
    );
  }
}
