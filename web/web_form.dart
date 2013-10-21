import 'dart:html';
import 'dart:convert';

import 'package:dartlero/dartlero.dart';
//import 'package:web_form/web_form.dart';
import 'package:web_ui/web_ui.dart';

ContactForm contactForm;
ContactList contactlist;

load() {
  String json = window.localStorage['contact'];
  if (json == null) {
    contactForm.init();
  } else {
    contactlist.fromJson(JSON.decode(json));
  }
  contactlist.order();
}

save() {
  window.localStorage['contact'] =
      JSON.encode(contactlist.toJson());
}

main() {
  contactForm = new ContactForm();
  contactlist = contactForm.contactlist;
  load();
  contactlist.internalList = toObservable(contctlist.internalList);
}