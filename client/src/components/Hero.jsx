import React from 'react';
import CSSModules from 'react-css-modules';
import axios from 'axios';
import Modal from './Modal.jsx';
import Gallery from './Gallery.jsx';
import styles from './hero.css';

class Hero extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      showGalleryModal: false,
      showShareModal: false,
      showSaveModal: false,
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

  handleShowShare() {
    this.setState({ showShareModal: true });
  }

  handleHideShare() {
    this.setState({ showShareModal: false });
  }

  handleShowSave() {
    this.setState({ showSaveModal: true });
  }

  handleHideSave() {
    this.setState({ showSaveModal: false });
  }

  getListingPhotos() {
    axios.get('/listings/100/photos')
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
      <Modal>
        <div styleName="modal">
          <Gallery galleryPhotos={this.state.photos} onClick={this.handleHideGallery.bind(this)} />
        </div>
      </Modal>
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
