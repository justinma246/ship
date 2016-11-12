class Index extends React.Component {
  render () {
    return (
      <div>
        <div>Test: {this.props.test}</div>
      </div>
    );
  }
}

Index.propTypes = {
  test: React.PropTypes.string
};
