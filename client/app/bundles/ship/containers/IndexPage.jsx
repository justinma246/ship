import React from 'react'


export default class IndexPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }

  render() {
    // INSERT LOGO HERE
    let user = this.props.user

    return (
      <div>
        INDEX PAGE
        <div>
          <div>
            Current User: {user.name}
          </div>
          <div>
            <img src={user.picture}/>
          </div>
          <a href="signout">Sign out</a>
        </div>
      </div>
    )
  }
}
