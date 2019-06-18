public class ContactSearch {
    
    public static list<contact> searchForContacts(string lname, string mcode)
    {
        list<Contact> cnt =[select id, firstname, mailingpostalcode from contact 
                            where lastname=:lname or mailingpostalcode=: mcode];
        system.debug(cnt);
        return cnt;
    }

}