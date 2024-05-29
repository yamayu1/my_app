import React from 'react';
import ReactDOM from 'react-dom';
import Home from '../components/Home'; // Homeコンポーネントのパスを正しく指定する

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  if (root) {
    ReactDOM.render(<Home />, root);
  }
});