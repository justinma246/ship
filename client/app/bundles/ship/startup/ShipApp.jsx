import React from 'react'
import ReactOnRails from 'react-on-rails'

import Ship from '../containers/Ship'
import CurrentUser from '../components/CurrentUser'

const ShipApp = (props) => (
  <Ship {...props} />
);

ReactOnRails.register({ ShipApp, CurrentUser });
