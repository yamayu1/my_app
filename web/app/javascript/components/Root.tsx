import React from 'react';
import { Outlet } from 'react-router-dom';

function Root() {
  return (
    <>
      <header style={{ fontSize: '20px' }}>予約システムテスト</header>
      <Outlet />
    </>
  );
}

export default Root;