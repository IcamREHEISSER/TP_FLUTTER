import 'package:flutter/material.dart';
import 'package:helloworld/widgets/application_contacts/add_contact_page.dart';

import '../../model/contact.dart';
import 'carte_contact.dart';

class ListeContactsPage extends StatefulWidget {
  const ListeContactsPage({super.key});

  @override
  State<ListeContactsPage> createState() => _ListeContactsPageState();
}

class _ListeContactsPageState extends State<ListeContactsPage> {

  List<Contact> listeContacts = [];
  List<CarteContact> listeCartesContacts = [];

  @override
  void initState() {
    listeContacts = Contact.listeContacts;
    _refreshContacts();
    super.initState();
  }
  
  void _refreshContacts() {
    for (Contact contact in listeContacts) {
      listeCartesContacts.add(CarteContact(
        nom: contact.name, 
        prenom: contact.firstName, 
        numeroTelephone: contact.phoneNumber,
        adresse: contact.adress,
        genre: contact.gender
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mes contacts"),backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: listeCartesContacts,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {_versPageAjoutContact(context);},),
    );
  }

  void _versPageAjoutContact(BuildContext context) {
    final nouveauContact = Navigator.push(context,
      MaterialPageRoute(builder: (context) => const AddContactPage()),
    );
    Contact.listeContacts.add(nouveauContact as Contact);
     _refreshContacts();
    setState(() {});
  }
}
