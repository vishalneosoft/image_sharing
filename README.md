# Image Sharing Application

1. Postgresql for database

2. Ruby Version - 2.3.1

3. Rails Version - 5.2.1

4. Run rake db:seed to create user and album and photos

5. Added Jquery Validation for Album and Photo and Log in and Sign up.

6. Added Bootstrap.

7. Once the application is created User will be able to see last 25 photos uploaded on home screen,
   I have added the scope which fetch the last 25 records.

8. On Home Page, User can navigate through the albums and photos, and User can also see the details of,
   particular album and the photos of the album.

9. To Add New Album or Add Photo, first user need to sign up or login, then he can add the album or photo.

10. User can Add the photo, and can select the album from the select box, in which album the user wants to
    upload the photo.

11. The Select field will have album visible of the current user and albums which have photos less than 25.
	I have added the helper for the select field, in the application helper which will find the valid albums.

12. Each Album can have a maximum of 25 photos.

13. User can see their own list of albums under albums page, and delete the album if the album was created
    by the login user.
