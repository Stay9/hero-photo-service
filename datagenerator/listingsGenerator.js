const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('listings.json');
writeStream.write('[');
// const numEntries = 10000001;
const numEntries = 3;
let i = 1;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function getEightRandom() {
  var arr = [];
  for (var i = 0; i < 8; i++) {
    arr.push(getRandomInt(1, 1047));
  }
  return arr;
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    
    let str;
    // every listing has at least 5 photos, at most 15 photos 
    for (j = 1; j < 9; j++) {
      let str = `{"id":${i}, "listing_name": "Listing ${i}", "avgreview": ${getRandomInt(1, 5)}, "hostname": "${faker.name.firstName()}", "address": "${faker.address.city()}", "description": "${faker.lorem.sentences()}", "space": "${faker.lorem.sentences()}", "neighborhood": "${faker.lorem.sentences()}", "photos": [${getEightRandom()}]}`;
      // str =`${i}, Listing ${i}, ${getRandomInt(1, 5)}, ${faker.name.firstName()}, ${faker.address.city()}, ${faker.lorem.sentences()}, ${faker.lorem.sentences()}, ${faker.lorem.sentences()}, ${getRandomInt(1, 1047)}\n`;
      ok = writeStream.write(str);
    }
    // if (i !== numEntries - 1) str += ',';
    // else str += ']';
    // if ((i + 1) % 100000 === 0) {
    //   console.log(((i + 1) / 1000000) + ' mil listings entries created');
    // }
    i += 1;
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();