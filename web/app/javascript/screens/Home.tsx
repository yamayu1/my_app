import React from 'react';
import { Link } from 'react-router-dom';

function Home() {
  return (
    <>
      <h1>Hello World</h1>
      <Link to="/test">テストページへ</Link>
    </>
  );
}

export default Home;
