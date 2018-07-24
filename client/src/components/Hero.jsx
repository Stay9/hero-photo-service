import React from 'react';
import CSSModules from 'react-css-modules';
import axios from 'axios';
import styles from './hero.css';

class Hero extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      heroUrl: '',
      photos: [],
    };
  }

  componentDidMount() {
    this.getListingPhotos();
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
    return (
      <div style={divStyle} styleName="hero">
        <button styleName="hero-view-photos-button">
View Photos
        </button>
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
