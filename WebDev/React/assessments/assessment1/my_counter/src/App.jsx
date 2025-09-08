import { useState } from 'react'
import React from "react"
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'


const Button = ({ label, onClick }) => {
  return (
    <button onClick={onClick}> {label} </button>
  );
};

const App = () => {
  let count = 0;

  const updateDisplay = () => {
    document.getElementById("countDisplay").innerText = count;
  };

  const handleIncrement = () => {
    count++;
    console.log("Increment clicked");
    updateDisplay();
  };

  const handleDecrement = () => {
    count--;
    console.log("Decrement clicked");
    updateDisplay();
  };

  return (
    <div>
      <h1>My Counter App</h1>
      <h2>
        Count: <span id="countDisplay">{count}</span>
      </h2>
      <div>
        <Button label="Decrement" onClick={handleDecrement} />
        <Button label="Increment" onClick={handleIncrement} />
      </div>
    </div>
  );
};

export default App;
