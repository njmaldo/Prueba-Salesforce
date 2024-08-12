public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String mailPostalCode) {
        List<Contact> contacts = [SELECT ID, LastName, MailingPostalCode FROM Contact
                 WHERE LastName= : lastName AND MailingPostalCode = : mailPostalCode ];
        System.debug('Found Contacts:' + contacts);
        return contacts;
    }
}