part of web_form;

class ContactForm extends ConceptModel {
  static final String contact = 'Contact';

  Map<String, ConceptEntities> newEntries() {
    var contactlist = new ContactList();
    var map = new Map<String, ConceptEntities>();
    map[contact] = contactlist;
    return map;
  }


  ContactList get contactlist => getEntry(contact);

  init() {
    var c1 = new Contact();
    c1.idContact="c1";
    c1.nom = 'jim';
    c1.prenom = 'jimmy';
    c1.email = 'jjimmy@yahoo.ca';
    contactlist.add(c1);
    
    var c2 = new Contact();
    c2.idContact="c2";
    c2.nom = 'Alice';
    c2.prenom = 'Bertrand';
    c2.email = 'abertrand@gmail.com';
    
    contactlist.add(c2);

  }  
  
  display() {
    print('Nouveau modele de contact /t');
    
    for (var contact in contactlist) {
      print('  Contact/t');
     
      print(contact.toString());
    }
    
  }

  
  
}
