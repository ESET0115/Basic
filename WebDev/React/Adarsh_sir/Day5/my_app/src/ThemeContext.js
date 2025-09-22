import React, { createContext, useState } from 'react';

export const themes = {
  light: {
    background: '#fff',
    color: '#000',
  },
  dark: {
    background: '#000',
    color: '#fff',
  },
};

export const ThemeContext = createContext({
  theme: themes.light,
  toggleTheme: () => {},
});

export const ThemeProvider = ({ children }) => {
  const [theme, setTheme] = useState(themes.light);

  const toggleTheme = () => {
    setTheme((prevTheme) =>
      prevTheme === themes.light ? themes.dark : themes.light
    );
  };

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};
