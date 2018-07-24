import React from 'react';
import ReactDOM from 'react-dom';
const galleryModal = document.getElementById('gallery');

class GalleryModal extends React.Component {
  constructor(props) {
    super(props);
    // creating a div that we'll render the modal into
    this.el = document.createElement('div');
  }

  componentDidMount() {
    // append the element into the DOM on mount
    galleryModal.appendChild(this.el);
  }

  componentWillUnmount() {
    // remove the element from the DOM when we unmount
    galleryModal.removeChild(this.el);
  }

  render() {
    // use a portal to render the children into the element
    return ReactDOM.createPortal(this.props.children, this.el);
  }
}

export default GalleryModal;
