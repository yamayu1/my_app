import React from 'react';
import { Outlet, Routes, Route } from 'react-router-dom';
import Home from './Home';
// import ReservationList from './ReservationList';

function Root() {
  return (
    <>
      <header style={{ fontSize: '20px' }}>予約システムテスト</header>
      <Routes>
        <Route path="/" element={<Home />} />
        {/* <Route path="/" element={<ReservationList />} /> */}
      </Routes>
      <Outlet />
    </>
  );
}

export default Root;