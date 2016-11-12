import React from 'react';
import ReactOnRails from 'react-on-rails';

import Ship from '../containers/Ship';

const ShipApp = (props) => (
  <Ship {...props} />
);

ReactOnRails.register({ ShipApp });
