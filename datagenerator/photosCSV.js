// Create 80M records of photos in CSV for PostgreSQL
const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('photos.csv');
const numEntries = 10000001;
let i = 1;
let id = 1;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    let str; 
    for (j = 1; j < 9; j++) {
      str = `${id}, ${getRandomInt(1, 1047)}, ${i}\n`;
      id += 1;
      ok = writeStream.write(str);
    }
    if ((i + 1) % 100000 === 0) {
      console.log(((i + 1) / 1000000) + ' mil photo entries created');
    }
    i++;
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();