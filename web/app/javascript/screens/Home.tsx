import React from 'react';
import { Link } from 'react-router-dom';

function Home() {
  return (
    <>
      <h1>Hello World</h1>
      <Link to="/test" style={buttonStyle}>新規登録</Link>
    </>
  );
}

const buttonStyle = {
  display: 'inline-block',
  padding: '5px 10px',
  fontSize: '16px',
  backgroundColor: '#007bff',
  color: '#fff',
  borderRadius: '5px',
  textDecoration: 'none',
  cursor: 'pointer',
};

export default Home;
