public class ContactControllerasdasd {
@AuraEnabled
    public static List<Contact> getContacts() {
        return [Select Id, FirstName, LastName, Email, Phone From Contact ];
    }
}