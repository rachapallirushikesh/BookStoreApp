using { cuid, managed } from '@sap/cds/common';
namespace rushi.db;


entity Books: cuid, managed{
    Title: String;
    Author: Association to Authors;
    genre: String;
    publishedAt: Date;
    pages: Integer;
    price: Decimal(9,2);
    stock: Integer;
    status: Association to Bookstockstatus;
    Chapter: Composition of many Chapters on Chapter.book = $self;
}

entity Bookstockstatus{
    key code: String(1) enum{
        Avaialable = 'A';
        Low_Stock = 'L';
        Unavailable = 'U';
    };
    criticality: Integer;
    displayText: String;
}

entity Authors: cuid, managed{
    name: String;
    books: Association to many Books on books.Author = $self;
}

entity Chapters: cuid, managed{
    key book: Association to Books;
    number: Integer;
    title: String;
    pages: Integer;
}