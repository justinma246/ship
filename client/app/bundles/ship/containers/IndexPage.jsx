import React from 'react'
import 'styles/HomeStyles.styl'

export default class IndexPage extends React.Component {
  static propTypes = {
    user: React.PropTypes.object.isRequired,
  }
  show(id) {
    document.getElementById(id).style.visibility = "visible";
  }
  hide(id) {
    document.getElementById(id).style.visibility = "hidden";
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
        <div className="feed">
          <div className="panel panel-default">
            <div className="panel-heading">Your Feed</div>
            <div className="panel-body">
              This is your feed
            </div>
          </div>
        </div>
        <div className="help" onMouseOver={()=>this.show('div1')} onMouseOut={()=>this.hide('div1')}>?</div>
        <div id="div1">HELLO???</div>
      </div>
    )
  }
}
