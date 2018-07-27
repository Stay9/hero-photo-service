import React from 'react';
import CSSModules from 'react-css-modules';
import axios from 'axios';
import Modal from './Modal.jsx';
import Gallery from './Gallery.jsx';
import Save from './Save.jsx';
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
    this.handleShowShare = this.handleShowShare.bind(this);
    this.handleHideShare = this.handleHideShare.bind(this);
    this.handleShowSave = this.handleShowSave.bind(this);
    this.handleHideSave = this.handleHideSave.bind(this);
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
    axios.get('/listings/90/photos')
      .then((response) => {
        this.setState({ heroUrl: response.data[0].photo_url });
        this.setState({ photos: response.data });
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

    let modal = null;
    if (this.state.showGalleryModal === true) {
    	modal = (
      <Modal>
        <div styleName="modal-dark-black">
          <Gallery galleryPhotos={this.state.photos} onClick={this.handleHideGallery.bind(this)} />
        </div>
      </Modal>
      );
    } else if (this.state.showShareModal === true) {
    	modal = (
      <Modal>
        <div styleName="modal-dark-black">
          <Gallery galleryPhotos={this.state.photos} onClick={this.handleHideShare.bind(this)} />
        </div>
      </Modal>
      );
    } else if (this.state.showSaveModal === true) {
    	modal = (
      <Modal>
        <div styleName="modal-white">
          <Save galleryPhotos={this.state.heroUrl} onClick={this.handleHideSave.bind(this)} />
        </div>
      </Modal>
      );
    } else {
    	modal = null;
    }

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
          <button styleName="hero-save-button" onClick={this.handleShowSave}>
            <img styleName="hero-button-image" src="./savesymbol.png" />
              Save
          </button>
        </div>
      </div>
    );
  }
}

export default CSSModules(Hero, styles);
