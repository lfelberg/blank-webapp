import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      query: '',
    };
  }

  render() {
    return (
      <div id="container">
        Hello!
      </div>
    );
  }
}

export default App;
