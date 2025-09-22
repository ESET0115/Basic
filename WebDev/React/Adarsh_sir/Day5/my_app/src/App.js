import React, { useContext } from 'react';
import { ThemeProvider, ThemeContext } from './ThemeContext';
import './App.css';


function ThemeSwitcherContent() {
  const { theme, toggleTheme } = useContext(ThemeContext);
  return (
    <div style={{ background: theme.background, color: theme.color, minHeight: '100vh', display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>
      <h1>Hello Students!</h1>
      <button onClick={toggleTheme} style={{ padding: '10px 20px', marginTop: '20px', cursor: 'pointer' }}>
        Toggle Theme
      </button>
    </div>
  );
}

function App() {
  return (
    <ThemeProvider>
      <ThemeSwitcherContent />
    </ThemeProvider>
  );
}

export default App;
