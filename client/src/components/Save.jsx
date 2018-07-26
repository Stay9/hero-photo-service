import React from 'react';
import CSSModules from 'react-css-modules';
import styles from './save.css';

class Save extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
    	showCreateNewListMessage: true,
    	showNewListInfo: false,
    };
  }

  cancel() {
  	this.setState({ showCreateNewListMessage: true });
  	this.setState({ showNewListInfo: false });
  }

  create() {
  	alert('Create button clicked!');
  }

  showOptionsForNewList() {
  	this.setState({ showCreateNewListMessage: false });
  	this.setState({ showNewListInfo: true });
  };

  render() {
    let theNewListMessage = null;
    let theNewListInfo = null;

    if (this.state.showCreateNewListMessage === true) {
    	theNewListMessage = (
      <div styleName="create-new-list-container">
        <h3 styleName="create-new-list" onClick={this.showOptionsForNewList.bind(this)}>
          {' '}
Create a new list
          {' '}
        </h3>
      </div>
      );
    } else {
    	theNewListMessage = null;
    }

    if (this.state.showNewListInfo === true) {
    	theNewListInfo = (
      <div styleName="new-list-info-container">
        <div styleName="new-list-name-container">
          <h3 styleName="new-list-name">
            {' '}
Name
            {' '}
          </h3>
        </div>

        <div styleName="new-list-input-container">
          <input type="text" styleName="new-list-input" />
        </div>

        <div styleName="new-list-buttons-container">
          <button styleName="new-list-cancel-button" onClick={this.cancel.bind(this)}>
            {' '}
Cancel
            {' '}
          </button>
          <button styleName="new-list-create-button" onClick={this.create.bind(this)}>
            {' '}
Create
            {' '}
          </button>
        </div>

      </div>
      );
    } else {
    	theNewListInfo = null;
    }

  	return (
    <div styleName="save-container">
      <div styleName="save">

        <div styleName="xbutton-container">
          <img styleName="xbutton" onClick={this.props.onClick} src="./blackx.png" />
        </div>

        <div styleName="title-container">
          <h1 styleName="title">
            {' '}
Save to list
            {' '}
          </h1>
        </div>


        {theNewListMessage}

        {theNewListInfo}


        <div styleName="list-container">
          <div styleName="list">
            <div styleName="list-item">
              <p>
                {' '}
List item 1
                {' '}
              </p>
              <img styleName="list-save-button" src="./pinkheart.png" />
            </div>

            <div styleName="list-item">
              <p>
                {' '}
List item 1
                {' '}
              </p>
              <img styleName="list-save-button" src="./savesymbol.png" />
            </div>

            <div styleName="list-item">
              <p>
                {' '}
List item 1
                {' '}
              </p>
              <img styleName="list-save-button" src="./savesymbol.png" />
            </div>

          </div>

        </div>

      </div>
    </div>
    );
  }
}

export default CSSModules(Save, styles);
