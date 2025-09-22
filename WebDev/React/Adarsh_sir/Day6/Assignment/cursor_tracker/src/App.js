
import React, { useState, useEffect } from 'react';
import logo from './logo.svg';
import './App.css';
// MouseTracker component
function MouseTracker() {
  const [position, setPosition] = useState({ x: 0, y: 0 });

  useEffect(() => {
    const handleMouseMove = (event) => {
      setPosition({ x: event.clientX, y: event.clientY });
    };
    window.addEventListener('mousemove', handleMouseMove);
    return () => {
      window.removeEventListener('mousemove', handleMouseMove);
    };
  }, []);

  return (
    <div>
      <h2>Mouse Position</h2>
      <p>X: {position.x}, Y: {position.y}</p>
    </div>
  );
}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <MouseTracker />
      </header>
    </div>
  );
}

export default App;
