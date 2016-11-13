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
        <div className="help" onMouseOver={()=>this.show('div2')} onMouseOut={()=>this.hide('div2')}>?</div>
        <div id="div2">
          <h4>Ship Guide</h4>
          <p>Ship is a dating app where you can "ship" others - making you the matchmaker.</p>
          <p>You can either "sail" or "sink" the couple. Enough sails and they can connect! But too many sinks and they are stranded.</p>
          <p>What's the incentive? Not only will you feel good about pairing up a happy couple, but you will also become an eligible bachelor or bachelorette as long as you stay active!</p>
          <p>Don't forget to fill out your biography, interests, and threshold (how many reviews YOU think is necessary before pairing up)</p>
          <p>What are you waiting for? Let's set sail!</p>
        </div>
      </div>
    )
  }
}
