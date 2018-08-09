# Project Name

> Project description

## Related Projects

  - https://github.com/teamName/repo
  - https://github.com/teamName/repo
  - https://github.com/teamName/repo
  - https://github.com/teamName/repo

## Table of Contents

1. [Usage](#Usage)
1. [Requirements](#requirements)
1. [Development](#development)

## CRUD Usage

- GET /listings/:listing_id/photos 
Given a listing id, return all the photos associated with this listing.
```js
{
  id: int, 
  photo_description: string,
  photo_url: string,
  photo_listing_id: int
}
```

- GET /users/:users_id/list 
Given a user id, return all the lists owned by this id.
```js
{
  list_user_id: int
}
```

- POST /users/:user_id/addList 
Create a list 
```js
{
  list_name: string,
  list_user_id: int
}
```

- GET /listings/:listing_id/lists
Given a listing id, get all the lists that contain this listing
```js
  {
    list_id: int
  }
```

- POST /listings/:listing_id/lists/:list_id
Add a listing to a list 
```js
{
  list_name: string,
  list_user_id: int
}
```

- DELETE /listings/:listing_id/lists/:list_id
Delete a listing from a list 

- GET /listings/:listing_id/details
Get all the information about a listing
```js
{
  id: int, 
  listing_review_average: int,
  listing_review_total: int,
  listing_host_name: string,
  listing_address: string, 
  listing_host_photo_url: string,
  listing_description: string,
  listing_space_description: string, 
  listing_neighborhood_description: string,
}
```

#### Extended CRUD Operations 

- GET /users/:users_id
When given a user id, retrieve all the information about that user
```js
{
  id: int, 
  user_name: string,
  membership_date: string,
  user_photo_url: string
}
```

- GET /listings/:listing_id/photos 
Given a listing id, return all the photos associated with this listing
```js
{
  id: int, 
  photo_description: string,
  photo_url: int
  photo_listing_id: int
}
```

- POST  /listings/:listing_id/photos/addPhoto 
Add a photo associated with a listing 
```js
{
  id: int, 
  photo_description: string,
  photo_url: int
  photo_listing_id: int
}
```

- PUT /listings/:listing_id/photos/:id 
Update the information of a photo
```js
{
  id: int, 
  photo_description: string,
  photo_url: int
  photo_listing_id: int
}
```

- DELETE 
delete a photo /listings/:listing_id/photos/:id 

## Requirements

An `nvmrc` file is included if using [nvm](https://github.com/creationix/nvm).

- Node 6.13.0
- etc

## Development

### Installing Dependencies

From within the root directory:

```sh
npm install -g webpack
npm install
npm run react-dev

within the database directory, run schema.sql then run Populator.js to populate the database.
```

