# Welcome to README!

Hi! this is the documentation of **Music Service API**

## Files in the main folder

- database_model: it is the database model used in the project.
- MusicStreamingAPI: ruby on rails API.

##  Endpoints:
Each endpoint will return text in json format
- Albums
-- http://127.0.0.1:3000/album : list in json format all the albums from the database, including all its songs and artists.
- http://127.0.0.1:3000/album/{id} : extract the album with the requested id, including all its songs and artists.
#
