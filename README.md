# Welcome to the Music Service API Documentation!

Hi! This is the documentation for the **Music Service API**.

## Files in the Main Folder

- `database_model`: This file contains the database model used in the project.
- `MusicStreamingAPI`: This folder contains the Ruby on Rails API.

## Endpoints

Each endpoint returns data in JSON format.

### Albums

- **List All Albums**
  - **URL:** `http://127.0.0.1:3000/album`
  - **Description:** Lists all the albums from the database, including all their songs and artists.

- **Get Album by ID**
  - **URL:** `http://127.0.0.1:3000/album/{id}`
  - **Description:** Retrieves the album with the specified ID, including all its songs and artists.

