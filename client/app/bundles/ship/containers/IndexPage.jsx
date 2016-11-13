import React from 'react'
import 'styles/HomeStyles.styl'

export default class IndexPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    // INSERT LOGO HERE
    let user = this.props.user

    return (
      <div className="wrapperThing">
        <div className="profile">
          <div>
            <img id="profile-img" src={user.picture}/>
          </div>
          <h1>Welcome to ship, {user.name}.</h1>
        </div>
      </div>
    )
  }
}
