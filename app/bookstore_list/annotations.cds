using BookstoreService as service from '../../srv/service';
annotate service.BookSet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'publishedAt',
                Value : publishedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pages',
                Value : pages,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Entry Information',
            ID : 'EntryInformation',
            Target : '@UI.FieldGroup#EntryInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Chapters',
            ID : 'Chapters',
            Target : 'Chapter/@UI.LineItem#Chapters',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Book Name',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Published At',
            Value : publishedAt,
        },
        {
            $Type : 'UI.DataField',
            Label : 'No of pages',
            Value : pages,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Created At',
            Value : createdAt,
        },
    ],
    UI.SelectionFields : [
        ID,
        price,
    ],
    UI.HeaderInfo : {
        TypeName : 'Book',
        TypeNamePlural : 'Books',
        Title : {
            $Type : 'UI.DataField',
            Value : Title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : genre,
        },
        TypeImageUrl : 'sap-icon://course-book',
        ImageUrl : Title,
    },
    UI.FieldGroup #EntryInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
        ],
    },
);

annotate service.BookSet with {
    Author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'AuthorSet',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate service.BookSet with {
    ID @Common.Label : 'ID'
};

annotate service.BookSet with {
    price @Common.Label : 'Price'
};

annotate service.ChapterSet with @(
    UI.LineItem #Chapters : [
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.title,
            Label : 'title',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.pages,
            Label : 'pages',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.number,
            Label : 'number',
        },
    ]
);

