import 'dart:html';

//import 'package:web_form/web_form.dart';
import 'package:web_ui/web_ui.dart';



class ContactEdit extends WebComponent {
  ContactList contactlist;
  Contact contact;

  update() {
    InputElement nom = query("#editer-nom");
    InputElement prenom = query("#editer-prenom");
    InputElement email = query("#editer-email");
    TextAreaElement adresse = query("#editer-adresse");
    Element message = query("#editer-message");
    var error = false;
    message.text = '';
    if (nom.value.trim() == '' || prenom.value.trim() == '' || email.value.trim() == '' || adresse.value.trim() == '' ) {
      message.text = 'Veuiller remplire les Champs Obligatoires ${message.text}';
      error = true;
    }
    else{
    
    contact.nom = nom.value;
    contact.prenom = prenom.value;
    contact.email = email.value;
    contact.adresse = adresse.value;
    contactlist.order();
    message.text = 'Contact ajouté';
    var contactTable = query('#contact-table').xtag;
    contactTable.showEditContact = false;
   }
  }
}