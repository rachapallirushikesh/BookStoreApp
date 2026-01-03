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
            {
                $Type : 'UI.DataField',
                Value : stock,
                Label : 'stock',
            },
            {
                $Type : 'UI.DataField',
                Value : status_code,
                Label : 'status_code',
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
            Value : status_code,
            Label : 'Status',
            Criticality : status.criticality,
            CriticalityRepresentation : #WithIcon,
        },
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
        {
            $Type : 'UI.DataField',
            Value : stock,
            Label : 'Stock',
        },
    ],
    UI.SelectionFields : [
        status_code,
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
    ],
    UI.LineItem #tableMacro : [
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
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.ID,
            Label : 'ID',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Genetal Information',
            ID : 'GenetalInformation',
            Target : '@UI.FieldGroup#GenetalInformation',
        },
    ],
    UI.FieldGroup #GenetalInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : book.Chapter.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : book.Chapter.number,
                Label : 'number',
            },
            {
                $Type : 'UI.DataField',
                Value : book.Chapter.pages,
                Label : 'pages',
            },
            {
                $Type : 'UI.DataField',
                Value : book.Chapter.title,
                Label : 'title',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Chapter',
        TypeNamePlural : 'Chapters',
        Title : {
            $Type : 'UI.DataField',
            Value : ID,
        },
    },
    UI.LineItem #tableMacro1 : [
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.pages,
            Label : 'pages',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.title,
            Label : 'title',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.number,
            Label : 'number',
        },
    ],
    UI.LineItem #tableMacro2 : [
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : book.Chapter.modifiedAt,
        },
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
    ],
);

annotate service.BookSet with {
    status @(
        Common.Label : 'Status',
        Common.Text : status.displayText,
        Common.Text.@UI.TextArrangement : #TextOnly,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'BookStatusCode',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_code,
                    ValueListProperty : 'code',
                },
            ],
            Label : 'Status',
        },
        Common.ValueListWithFixedValues : true,
        Common.ExternalID : status.displayText,
        )
};

