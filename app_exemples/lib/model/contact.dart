import 'genre_enum.dart';

class Contact {

  // ignore: constant_identifier_names
  static const String CONTACT_TABLE_NAME = "contacts_table";

  static final List<Contact> listeContacts = [
    const Contact(name: "EINSTEIN", firstName: "Albert", phoneNumber: "+33689587411", adress: "Rue de la relativité", gender: Genre.homme),
    const Contact(name: "CURIE", firstName: "Marie", phoneNumber: "+33665398825", adress: "Rue des radiations", gender: Genre.femme),
    const Contact(name: "MBAPPE", firstName: "Kyllian", phoneNumber: "+3362333547", adress: "Rue du Real Madrid", gender: Genre.homme),
    const Contact(name: "CARTER", firstName: "Beyonce", phoneNumber: "+33744125896", adress: "Avenue du halo", gender: Genre.femme),
  ];

  final String name;
  final String firstName;
  final String adress;
  final String phoneNumber;
  final Genre gender;

  const Contact({
    required this.name, 
    required this.firstName, 
    required this.adress, 
    required this.phoneNumber, 
    required this.gender
  });

}