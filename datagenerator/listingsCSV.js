// Create 10M records of listings in CSV for PostgreSQL
const faker = require('faker');
const fs = require('fs');

const writeStream = fs.createWriteStream('listings.csv');
const numEntries = 10000001;
let i = 1;

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; 
}

function write() {
  let ok = true;
  while (i < numEntries && ok) {
    let str =`${i}, Listing ${i}, ${getRandomInt(1, 5)}, ${faker.name.firstName()}, ${faker.address.city()}, ${faker.lorem.sentences()}, ${faker.lorem.sentences()}, ${faker.lorem.sentences()}, ${getRandomInt(1, 1047)}\n`;
    i += 1;
    ok = writeStream.write(str);
    if ((i + 1) % 100000 === 0) {
      console.log(((i + 1) / 1000000) + ' mil listings entries created');
    }
  }
  if (i < numEntries) {
    writeStream.once('drain', write);
  }
}
write();