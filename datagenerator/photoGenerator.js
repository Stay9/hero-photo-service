const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('data.json');
writeStream.write('[');
const numEntries = 10000000;
let i = 0;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    let str = `{"id":${i}, "listing_review_average": "${faker.lorem.sentences()}", "photo_url": ${getRandomInt(1, 1047)}, "photo_listing_id": ${getRandomInt(1, numEntries)}}`;
    if (i !== numEntries - 1) str += ',';
    else str += ']';
    if ((i + 1) % 100000 === 0) {
      console.log(((i + 1) / 1000000) + ' mil photo entries created');
    }
    i += 1;
    ok = writeStream.write(str);
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();