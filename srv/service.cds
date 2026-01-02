using { rushi.db as db} from '../db/schema';

service BookstoreService @(path: 'BookstoreService') {

    entity BookSet as projection on db.Books;
    entity AuthorSet as projection on db.Authors;
    entity ChapterSet as projection on db.Chapters;
}