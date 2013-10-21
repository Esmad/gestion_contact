part of web_form;

class Contact extends ConceptEntity<Contact> {

String _code;  
String _nom;
String _prenom;
String _email;




Contact newEntity() => new Contact();


String get idContact => _code;
set idContact (String idC){ 
  if(code == null)
  _code = idC;
  this.code = _code;
}
String get nom => _nom;
set nom(String nom) {
  _nom = nom;
}

String get prenom => _prenom;
set prenom(String prenom) {
  _prenom = prenom;
}

String get email => _email;
set email(String email) {
  _email = email;
}

String toString() {
  return '  {\n '
  '    ${super.toString()}, \n '
  '    Nom: ${_nom}\n'
  '    Prenom: ${_prenom}\n'
  '    email: ${_email}\n'
  '  }\n';
}

//Form Entities to JSON
Map<String, Object> toJson() {
  Map<String, Object> entityMap = super.toJson();
  entityMap['nom'] = _nom;
  entityMap['prenom'] = _prenom;
  entityMap['email'] = _email;
  return entityMap;
}


//from JSON to Entities
fromJson(Map<String, Object> entityMap) {
  super.fromJson(entityMap);
  _nom = entityMap['nom'];
  _prenom = entityMap['prenom'];
  _email = entityMap['email'];
  
}
  
} 

class ContactList extends ConceptEntities<Contact> {
  ContactList newEntities() => new ContactList();
  Contact newEntity() => new Contact();
}
