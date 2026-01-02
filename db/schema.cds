using { cuid, managed } from '@sap/cds/common';
namespace rushi.db;


entity Books: cuid, managed{
    Title: String;
    Author: Association to Authors;
    Chapter: Composition of many Chapters on Chapter.book = $self;
}

entity Authors: cuid, managed{
    name: String;
    books: Association to many Books on books.Author = $self;
}

entity Chapters: cuid, managed{
    number: Integer;
    key book: Association to Books;
}