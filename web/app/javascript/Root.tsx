import React from 'react';
import { Outlet } from 'react-router-dom';

export default function Root() {
  return (
    <>
      <header style={{ fontSize: '20px' }}>React + Rails GraphQLテスト</header>
      <Outlet />
    </>
  );
}
