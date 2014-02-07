wbdv465 midterm
===============

### Get Setup

1. Fork this repo.
2. Clone your fork.
3. Run bundle.
4. Create, migrate, and seed the database.
5. Start the server.

### Current State

This is a basic application for book worms to share the books they’ve read, are reading, or want to read to a list. They can write reviews of the books they have read as well as see the reviews of those books by others. Users can browse a list of books and narrow the list by genres. When viewing a book, they can add it to their list and mark it as read, reading, or want to read.

Right now, the site has basic authentication setup, as well as the ability for admins to create books. The follow features need to be implented

### Task
1. `5pts` -  Add ISBN attribute to book
2.  `5pts` - Validate book fields
  - require a title, author, summary
  - require the ISBN to be 10 digits
3. `20pts` -  Implement the ability for users to add books to a “list”
  - Hint: You will need to create a many to many relationship between users and books, as well has allowing that relationship to have a status attribute of “read”, “reading”, or “will read”
4.  `20pts` - Add the ability to add genres to books
  - Hint: Use https://github.com/mbleigh/acts-as-taggable-on
  - add code to allow viewing books for a particular tag (/tags/fiction)
5. `20pts` -  Add the ability for users to add reviews to books
  - review should include a rating (0-5)
    - validate that a review is an acceptable value
  - review should belong to users and books
6.  `10pts` - Ensure books and reviews are browsable by guests but only users can mark books as being read, reading or will read, as well as write reviews.

### Extra Credit:
- `5pts` - Prevent users from creating multiple reviews for the same book.
- `5pts` - Add the ability for photos to be added and displayed on books

### How to submit 
_`20pts` of your grade comes from correctly turning it in by midnight the night before class_

1. Commit changes to your fork.
2. Send a pull request from your fork to the original repo (this one.)

