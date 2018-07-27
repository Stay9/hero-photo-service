import React from 'react';
import CSSModules from 'react-css-modules';
import axios from 'axios';
import styles from './save.css';

class Save extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
    	showCreateNewListMessage: true,
    	showNewListInfo: false,
    	userId: 8,
    	lists: [],
    	newListName: '',
    	listingId: 8,
    	fovoriteListsObj: {},
    };
  }

  componentDidMount() {
  	this.getListsOfListing(); // on success get all lists
  }

  getLists() {
    axios.get(`/users/${this.state.userId}/list`)
      .then((response) => {
      	console.log('Lists data: ', response.data);

      	const tempLists = response.data;


      	const objectOfFavLists = {};
  	  	for (let i = 0; i < this.state.favoriteLists.length; i++) {
  	  		objectOfFavLists[this.state.favoriteLists[i].list_id] = 'aaa';
  	  	}

  	  	this.setState({ fovoriteListsObj: objectOfFavLists }); // used in toggleFavorites function

  	  	// now we are sure that the favoritelists are on the objectOfFavLists
  	  	for (let i = 0; i < tempLists.length; i++) {
  	  		const dd = tempLists[i].id;
  	  		if (objectOfFavLists[tempLists[i].id]) {
  	  			tempLists[i].icon = './pinkheart.png';
  	  		} else {
  	  			tempLists[i].icon = './savesymbol.png';
  	  		}
  	  	}

      	this.setState({ lists: tempLists });
      })
      .catch((error) => {
      	console.log('Axios error in getting lists ', error);
      });
  }


  handleListNameChange(e) {
  	this.setState({ newListName: e.target.value });
  	// console.log(e.target.value);
  }

  cancel() {
  	this.setState({ showCreateNewListMessage: true });
  	this.setState({ showNewListInfo: false });
  }

  create() {
  	axios.post(`http://localhost:3000/users/${this.state.userId}/addList`, {
  		list_name: this.state.newListName,
  	  })
  	.then((response) => {
  		console.log(response);
  		this.getLists();
  		this.setState({ showCreateNewListMessage: true });
  	    this.setState({ showNewListInfo: false });
  	})
  	.catch((error) => {
  		console.log('Error in axios in making new list');
  	});
  }

  showOptionsForNewList() {
  	this.setState({ showCreateNewListMessage: false });
  	this.setState({ showNewListInfo: true });
  }

  getListsOfListing() {
  	axios.get(`/listings/${this.state.listingId}/lists`)
  	  .then((response) => {
  	  	console.log('....', response.data);
  	  	this.setState({ favoriteLists: response.data });

  	  	this.getLists();
  	  })
  	  .catch((error) => {
  	  	console.log('Axios error in getting data from listings_lists');
  	  });
  }

  toggleFavorite(e) {
  	const listId = e.target.name;

  	if (this.state.fovoriteListsObj[listId]) {
  		console.log('This is liked, must now remove');
  	} else {
  		console.log('This is not liked, must now add');
  	}
  }

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
          <input type="text" styleName="new-list-input" onChange={this.handleListNameChange.bind(this)} />
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

            {
            this.state.lists.map(list => (
              <div styleName="list-item">
                <p>
                  {list.list_name}
                </p>

                <img styleName="list-save-button" name={list.id} src={list.icon} onClick={this.toggleFavorite.bind(this)} />
              </div>
            	))
            }

          </div>

        </div>

      </div>
    </div>
    );
  }
}

export default CSSModules(Save, styles);
