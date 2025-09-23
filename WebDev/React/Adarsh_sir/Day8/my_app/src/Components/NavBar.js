import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = () => (
  <nav style={{ background: '#333', color: '#fff', padding: '1rem' }}>
    <ul style={{ display: 'flex', listStyle: 'none', margin: 0, padding: 0 }}>
      <li style={{ marginRight: '1rem' }}><Link style={{ color: '#fff', textDecoration: 'none' }} to="/">Home</Link></li>
      <li style={{ marginRight: '1rem' }}><Link style={{ color: '#fff', textDecoration: 'none' }} to="/about">About</Link></li>
      <li style={{ marginRight: '1rem' }}><Link style={{ color: '#fff', textDecoration: 'none' }} to="/contact">Contact</Link></li>
      <li><Link style={{ color: '#fff', textDecoration: 'none' }} to="/services">Services</Link></li>
    </ul>
  </nav>
);

export default NavBar;
