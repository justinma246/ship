class ShipApp extends React.Component {
  static propTypes = {
    test: React.PropTypes.string
  }

  render () {
    return (
      <div>
        <div>Test: {this.props.test}</div>
      </div>
    )
  }
}
