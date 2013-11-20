import 'dart:html';
import 'package:web_form/contact.dart';
import 'package:web_ui/web_ui.dart';

class ContactAdd extends WebComponent {
  ContactList contactlist;

  add() {
    InputElement nom = query("#ajouter-nom");
    InputElement prenom = query("#ajouter-prenom");
    InputElement email = query("#ajouter-email");
    Element message = query("#ajouter-message");
    var error = false;
    message.text = '';
    if (nom.value.trim() == '' || prenom.value.trim() == '' || email.value.trim() == '')
    {
      message.text = 'champs Obligatoires; ${message.text}';
      error = true;
    }
    
    if (!error) {
      var contact = new Contact();
      contact.idContact=(nom.value + prenom.value).trim();
      contact.nom = nom.value;
      contact.prenom = prenom.value;
      contact.email = email.value;
      if (contactlist.add(contact)) {
        message.text = 'Contact ajouté';
        var contactTable = query('#contact-table').xtag;
        contactTable.showAddContact = false;
        contactlist.order();
      } else {
        message.text = 'Contact existant';
      }
    }
    
  }
}
