import * as React from "react";
import ImageList from "@mui/material/ImageList";
import ImageListItem from "@mui/material/ImageListItem";
import ImageListItemBar from "@mui/material/ImageListItemBar";
import { Button } from "semantic-ui-react";

export default function TitlebarBelowImageList() {
  return (
    <>
      <div
        style={{
          padding: "3rem",
          display: "flex",
          justifyContent: "center",
        }}
      >
        <Button
          href="/Donate"
          size="large"
          style={{ backgroundColor: "#F19351" }}
        >
          Things You Can Donate
        </Button>
      </div>
      <div
        style={{
          width: "100%",
          display: "flex",
          justifyContent: "center",
        }}
      >
        <ImageList style={{ width: "80%", height: "100%" }} cols={4} gap={20}>
          {itemData.map((item) => (
            <ImageListItem key={item.img}>
              <img
                src={`${item.img}?w=248&fit=crop&auto=format`}
                srcSet={`${item.img}?w=248&fit=crop&auto=format&dpr=2 4x`}
                alt={item.title}
                loading="lazy"
              />
              <ImageListItemBar
                title={item.title}
                //   subtitle={<span>by: {item.author}</span>}
                position="below"
              />
            </ImageListItem>
          ))}
        </ImageList>
      </div>
    </>
  );
}

const itemData = [
  {
    img: "./images/furniture.png",
    title: "Furniture",
  },
  {
    img: "./images/smallappliances.png",
    title: "Small Appliances",
  },
  {
    img: "./images/metals.png",
    title: "Metal Pieces",
  },
  {
    img: "./images/glassbottles.png",
    title: "Glass",
  },
  {
    img: "./images/largeappliances.png",
    title: "Large Appliances",
  },
  {
    img: "./images/wood.png",
    title: "Wood",
  },
  {
    img: "./images/plastic.png",
    title: "Plastic",
  },
  {
    img: "./images/otherpaper.png",
    title: "Paper",
  },
];
