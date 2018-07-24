import React from 'react';
import CSSModules from 'react-css-modules';
import GalleryModal from './GalleryModal.jsx';
import axios from 'axios';
import styles from './hero.css';

class Hero extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showGalleryModal: false,
      heroUrl: '',
      photos: [],
    };

    this.handleShowGallery = this.handleShowGallery.bind(this);
    this.handleHideGallery = this.handleHideGallery.bind(this);
  }

  componentDidMount() {
    this.getListingPhotos();
  }

  handleShowGallery() {
  	this.setState({ showGalleryModal: true });
  }

  handleHideGallery() {
  	this.setState({ showGalleryModal: false });
  }

  getListingPhotos() {
    axios.get('/listings/45/photos')
      .then((response) => {
        console.log('Listings photos data: ', response.data);
        this.setState({ heroUrl: response.data[0].photo_url });
        this.setState({ photos: response.data });
        console.log('photos from state side: ', this.state.photos);
      })
      .catch((error) => {
        console.log('Axios error in getting listing photos ', error);
      });
  }

  render() {
    const imgUrl = this.state.heroUrl;
    const divStyle = {
      backgroundImage: `url(${imgUrl})`,
    };

    const modal = this.state.showGalleryModal ? (
      <GalleryModal>
        <div styleName="modal">
          <div>
            With a portal, we can render content into a different
            part of the DOM, as if it were any other React child.
          </div>
          This is being rendered inside the #modal-container div.
          <button onClick={this.handleHideGallery}>Hide modal</button>
        </div>
      </GalleryModal>
    ) : null;

    return (
      <div style={divStyle} styleName="hero">
        <button styleName="hero-view-photos-button" onClick={this.handleShowGallery}>
View Photos
        </button>
        {modal}
        <div styleName="hero-top-right-buttons">
          <button styleName="hero-share-button">
            <img styleName="hero-button-image" src="./sharesymbol.png" />
              Share
          </button>
          <button styleName="hero-save-button">
            <img styleName="hero-button-image" src="./savesymbol.png" />
              Save
          </button>
        </div>
      </div>
    );
  }
}

export default CSSModules(Hero, styles);
