import React from 'react'
import ReactOnRails from 'react-on-rails'

import Ship from '../containers/Ship'
import LandingPage from '../containers/LandingPage'
import IndexPage from '../containers/IndexPage'
import ChatPage from '../containers/ChatPage'
import DockPage from '../containers/DockPage'
import ProfilePage from '../containers/ProfilePage'

const ShipApp = props => <Ship {...props} />

ReactOnRails.register({
  ShipApp,
  LandingPage,
  IndexPage,
  ChatPage,
  DockPage,
  ProfilePage,
});
