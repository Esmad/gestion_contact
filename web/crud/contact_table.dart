import 'dart:html';

//import 'package:web_form/web_form.dart';
import 'package:web_ui/web_ui.dart';

class ContactTable extends WebComponent {
  ContactList contactlist;
  Contact contact;
  @observable
  bool showAddContact = false;
  @observable
  bool showEditContact = false;
  

  add() {
    ButtonElement addContact = query("#addContactButton");
    if (addContact.text == 'Ajouter un contact') {
      showAddContact = true;
      addContact.text = '';
    } else {
      showAddContact = false;
      addContact.text = 'Ajouter un contact';
    }
  }

  edit(Contact contact) {
    showEditContact = true;
    showAddContact = false;
    this.contact = contact;
  }

  delete(Contact contact) {
    contactlist.remove(contact);
  }
  
}