import React from 'react';
import CSSModules from 'react-css-modules';
import styles from './hero.css';

console.log(styles, 'ss');

class Hero extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
     <div className={styles.new}> Page is rendering with a React Component </div>
    );
  }
}

//export default Hero;
export default CSSModules(Hero, styles);
