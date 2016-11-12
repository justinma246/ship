import React from 'react'


export default class LandingPage extends React.Component {
  render() {
    // INSERT LOGO HERE

    return (
      <div>
        <div>
          Not logged in
        </div>
        <a href="/auth/facebook">Sign in with Facebook</a>
      </div>
    )
  }
}
