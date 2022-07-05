import React from "react"
import Navbar from "./components/Navbar"
import MainComponent from "./components/Hero"
import Card from "./components/Card"
import data from "./data"

import './App.css';


/*
Challenge: Build the Navbar component.
Check the Figma file for the design specifics.
*/

export default function App() {
console.log(data)
    const cards = data.map(item => < Card 
      key={item.id} 
      {...item}/>)

    return (
        <div className="app">
            <Navbar />
            <MainComponent />
            <section className="cards-list">
              {cards}
            </section>
        </div>
    )
}