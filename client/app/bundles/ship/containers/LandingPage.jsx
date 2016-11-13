import React from 'react'

import 'styles/LandingPage.styl'

export default class LandingPage extends React.Component {

  show(id) {
    document.getElementById(id).style.visibility = "visible";
  }
  hide(id) {
    document.getElementById(id).style.visibility = "hidden";
  }

  render() {
    return (
      <div className="page">
        <div className="ship">ship.</div>
        <div className="signUp">
        <img className="logo" src='assets/ship-white-trans.png'/>
          <a className="button" href="/auth/facebook">Sign in with Facebook</a>
        </div>
        <div className="help" onMouseOver={()=>this.show('div1')} onMouseOut={()=>this.hide('div1')}>?</div>
        <div id="div1">Forget the struggles of searching for your own soul mate - have other people find them for you!

</div>
      </div>
    )
  }
}
