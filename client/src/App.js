import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";
import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  createHttpLink,
} from "@apollo/client";
import { setContext } from "@apollo/client/link/context";

import "./App.css";

import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import About from "./pages/About";
import DonateItems from "./pages/DonateItems";
import Home from "./pages/Home";
import Testimonials from "./pages/Testimonials";
import Contact from "./pages/Contact";
import Team from "./pages/Team";
import Educators from "./pages/Educators";
import Profile from "./pages/Profile";
import RequestPickup from "./pages/RequestPickup";

const httpLink = createHttpLink({
  uri: "/graphql",
});

const authLink = setContext((_, { headers }) => {
  const token = localStorage.getItem("id_token");
  return {
    headers: {
      ...headers,
      authorization: token ? `Bearer ${token}` : "",
    },
  };
});

const client = new ApolloClient({
  link: authLink.concat(httpLink),
  cache: new InMemoryCache(),
});

function App() {
  return (
    <ApolloProvider client={client}>
      <Router>
        <Navbar />
        <div className="content-container">
          <Route exact path="/">
            <Home />
          </Route>
          <Route exact path="/contact">
            <Contact />
          </Route>
          <Route exact path="/about">
            <About />
          </Route>
          <Route exact path="/testimonials">
            <Testimonials />
          </Route>
          <Route exact path="/Donate">
            <DonateItems />
          </Route>
          {/*future development pages*/}
          <Route exact path="/RequestPickup">
            <RequestPickup />
          </Route>
          {/*<Route exact path="/shop"><Shop/></Route>*/}
          <Route exact path="/Educators">
            <Educators />
          </Route>
          <Route exact path="/team">
            <Team />
          </Route>
          <Route exact path="/profile">
            <Profile />
          </Route>
        </div>
        <Footer />
      </Router>
    </ApolloProvider>
  );
}

export default App;
