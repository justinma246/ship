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
    let you_voted = this.props.you_voted
    let voted_you = this.props.voted_you
    let youVotedRows = []
    let votedYouRows = []
    for (var i = 0; i < you_voted.length; i++) {
      youVotedRows.push(
         <div className = "shipRow">
            <b>{you_voted[i]["voteCount"]} ships for</b>
            <div className="row">
              <div className="shipEntry col-md-6">
                <img className="shipImage" src={you_voted[i]["user1"].picture}/>
                {you_voted[i]["user1"].name}
              </div>
              <div className="shipEntry col-md-6">
                <img className="shipImage" src={you_voted[i]["user2"].picture}/>
                {you_voted[i]["user2"].name}
              </div>
              <br/>
            </div>
          </div>)
    }
    for (var i = 0; i < voted_you.length; i++) {
      votedYouRows.push(
          <div className = "shipRow">
            <b>{voted_you[i]["voteCount"]} ships for</b>
            <div className="row">
              <div className="shipEntry col-md-6">
                <img className="shipImage" src={voted_you[i]["user1"].picture}/>
                {voted_you[i]["user1"].name}
              </div>
              <div className="shipEntry col-md-6">
                <img className="shipImage" src={voted_you[i]["user2"].picture}/>
                {voted_you[i]["user2"].name}
              </div>
              <br/>
            </div>
          </div>)
    }

    return (
      <div className="backgradient">
      <div className="wrapperThing">
        <div className="profile">
          <div>
            <img id="profile-img" src={user.picture}/>
          </div>
          <h1>Welcome to ship, {user.name}.</h1>
        </div>
        <div className="feed row">
          <div className="col-md-6">
            <div className="panel panel-default">
              <div className="panel-heading">Ships Involving You</div>
              <div className="panel-body">
                {votedYouRows}
              </div>
            </div>
          </div>
          <div className="col-md-6">
            <div className="panel panel-default">
              <div className="panel-heading">Peopled You Shipped</div>
              <div className="panel-body">
                {youVotedRows}
              </div>
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
      </div>
    )
  }
}
