import React from 'react'
import ReactOnRails from 'react-on-rails'

import Ship from '../containers/Ship'
import LandingPage from '../containers/LandingPage'
import IndexPage from '../containers/IndexPage'
import ChatPage from '../containers/ChatPage'


const ShipApp = props => <Ship {...props} />

ReactOnRails.register({
  ShipApp,
  LandingPage,
  IndexPage,
  ChatPage,
});
