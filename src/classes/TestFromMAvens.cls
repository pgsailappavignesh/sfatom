public with sharing class TestFromMAvens {

	private final sObject mysObject;

    // The extension constructor initializes the private member
    // variable mysObject by using the getRecord method from the standard
    // controller.
    //Created by Sailappa
    public TestFromMAvens(ApexPages.StandardController stdController) {
        this.mysObject = (sObject)stdController.getRecord();
    }

    public String getRecordName() {
        return 'Hello ' + (String)mysObject.get('name') + ' (' + (Id)mysObject.get('Id') + ')';
    }
}