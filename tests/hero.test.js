import React from 'react';
import Hero from '../client/src/components/Hero.jsx';
import { shallow, mount, render } from 'enzyme';
import stylesClass from '../client/src/components/hero.css';
// Step 1: this next line is important since the finders expect a '.' at the string start
const wrapper = shallow(<Hero/>);

describe('Hero tests', () => {
 test('Paws should render correct # of full paw icons', () => {
   expect(wrapper.find('.hero')).to.have.lengthOf(1);
 });

});

