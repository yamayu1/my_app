import React from 'react';
import { createRoot } from 'react-dom/client';

const container = document.getElementById('Hoge')!;
const root = createRoot(container);
root.render((
    <div>
      <h1>予約アプリ</h1>
    </div>
  ));