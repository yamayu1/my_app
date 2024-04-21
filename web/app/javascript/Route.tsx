import React from 'react';
import { createBrowserRouter } from 'react-router-dom';
import Root from './Root';
import Graphiql from './screens/Graphiql';
import Home from './screens/Home';

const router = createBrowserRouter([
  {
    path: '/',
    element: <Root />,
    children: [
      {
        path: '',
        element: <Home />,
      },
      {
        path: '/graphiql',
        element: <Graphiql />,
      },
    ],
  },
]);

export default router;
