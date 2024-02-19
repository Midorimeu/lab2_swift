class Book {
   let title: String
   let author: String
   let year: Int
   let pageCount: Int

   init(title: String, author: String, year: Int, pageCount: Int) {
       self.title = title
       self.author = author
       self.year = year
       self.pageCount = pageCount
   }

   func displayBookInfo() {
       print("Title: \(title)")
       print("Author: \(author)")
       print("Year: \(year)")
       print("Page Count: \(pageCount)\n")
   }
}

class Library {
   var books : [Book]

   init() {
       self.books = []
   }

   func addBook(book: Book) {
       books.append(book)
       print("Book '\(book.title)' added to the library.")
   }

   func removeBook(title: String) {
       if let index = books.firstIndex(where: { $0.title == title }) {
           let removedBook = books.remove(at: index)
           print("Book '\(removedBook.title)' removed from the library.")
       } 
       else {
           print("Book with title '\(title)' is not found in the library.")
       }
   }

   func displayLibraryBooks() {
       if books.isEmpty {
           print("The library is empty.")
       } 
       else {
           print("Books in the library:")
           for book in books {
               print("- \(book.title) by \(book.author)")
           }
       }
   }
}

let book1 = Book(title: "Big four Atlantida", author: "Miler Mitary", year: 1956, pageCount: 423)
let book2 = Book(title: "Losted Alan", author: "Azamat Umirzakov", year: 1978, pageCount: 342)
book1.displayBookInfo()
book2.displayBookInfo()

let library = Library()
library.addBook(book: book1)
library.addBook(book: book2)
library.displayLibraryBooks()

library.removeBook(title: "Losted Alan")
library.displayLibraryBooks()