sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bookstorelist/test/integration/pages/BookSetList",
	"bookstorelist/test/integration/pages/BookSetObjectPage"
], function (JourneyRunner, BookSetList, BookSetObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bookstorelist') + '/test/flpSandbox.html#bookstorelist-tile',
        pages: {
			onTheBookSetList: BookSetList,
			onTheBookSetObjectPage: BookSetObjectPage
        },
        async: true
    });

    return runner;
});

