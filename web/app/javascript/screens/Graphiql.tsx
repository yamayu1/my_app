import { createGraphiQLFetcher } from '@graphiql/toolkit';
import { GraphiQL } from 'graphiql';
import 'graphiql/graphiql.css';
import React from 'react';

export default function Graphiql() {
  const fetcher = createGraphiQLFetcher({
    url: 'http://localhost:3000/graphql',
  });
  return (
    <div style={{ height: '100vh' }}>
      <GraphiQL fetcher={fetcher} />
    </div>
  );
}
