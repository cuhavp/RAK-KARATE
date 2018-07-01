Feature: Book API sample

  Scenario: get list books
    * url 'http://restapi.demoqa.com/utilities/books/getallbooks'
    When method get
    * print response
    * def titles = $..title
    * print titles
    * def books_with_isbn = $..books[?(@.isbn)]
    * print books_with_isbn
    * def books_with_page_greater = $..books[?(@.pages > 400)]
    * print books_with_page_greater
    * print $..books[:2]
    * print $..books[-2:]
