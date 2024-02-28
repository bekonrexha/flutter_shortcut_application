import 'package:flutter/material.dart';
import 'package:flutter_shortcut_application/components/ContactDetails.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, String>> contacts = [
  {"name": "John Doe", "phone": "1234567890"},
  {"name": "Jane Smith", "phone": "4567890123"},
  {"name": "Alice Johnson", "phone": "7890123456"},
  {"name": "Bob Brown", "phone": "0123456789"},
  {"name": "Ziggy Alice", "phone": "3456789012"},
  {"name": "Bob Ross", "phone": "6789012345"},
  {"name": "Dark Knight", "phone": "9012345678"},
  {"name": "Michael Johnson", "phone": "1234567890"},
  {"name": "Emily Brown", "phone": "4567890123"},
  {"name": "Chris Williams", "phone": "7890123456"},
  {"name": "Jessica Davis", "phone": "0123456789"},
  {"name": "Daniel Martinez", "phone": "3456789012"},
  {"name": "Sarah Rodriguez", "phone": "6789012345"},
  {"name": "David Miller", "phone": "9012345678"},
  {"name": "Laura Wilson", "phone": "1234567890"},
  {"name": "James Taylor", "phone": "4567890123"},
  {"name": "Michelle Anderson", "phone": "7890123456"},
  {"name": "Kevin Thomas", "phone": "0123456789"},
  {"name": "Amanda Hernandez", "phone": "3456789012"},
  {"name": "Justin Young", "phone": "6789012345"},
  {"name": "Stephanie Lee", "phone": "9012345678"},
  {"name": "Matthew White", "phone": "1234567890"},
  {"name": "Rebecca Harris", "phone": "4567890123"},
  {"name": "Andrew Martin", "phone": "7890123456"},
  {"name": "Nicole Thompson", "phone": "0123456789"},
];

  List<Map<String, String>> filteredContacts = [];
  bool isTyping = false; // Flag to track whether the user is typing

  @override
  void initState() {
    super.initState();
    filteredContacts.addAll(contacts);
  }

  void filterContacts(String query) {
    setState(() {
      // Update the isTyping flag based on whether the query is empty
      isTyping = query.isNotEmpty;

      // Clear the filteredContacts list
      filteredContacts.clear();

      // Filter the contacts based on the query
      if (query.isNotEmpty) {
        contacts.forEach((contact) {
          if (contact["name"]!.toLowerCase().contains(query.toLowerCase())) {
            filteredContacts.add(contact);
          }
        });
      } else {
        filteredContacts.addAll(contacts);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Create a copy of the filteredContacts list for sorting
    List<Map<String, String>> sortedContacts = List.from(filteredContacts);

    // Sort the sortedContacts list alphabetically by name
    sortedContacts.sort((a, b) => a["name"]!.compareTo(b["name"]!));

    return Scaffold(
      appBar: !isTyping
              ? AppBar(
                  title: Text('Contacts'),
                  backgroundColor: Colors.black,
                  titleTextStyle: TextStyle(color: Colors.white, fontSize: 22.0),
                )
              : null,
      body: Column(
        children: [
        Padding(
  padding: EdgeInsets.only(
    top: isTyping ? 28.0 : 8.0, // Add margin top if isTyping is true
    left: 8.0,
    right: 8.0,
    bottom: isTyping ? 1.0 : 8.0,
  ),
  child: TextField(
    controller: searchController,
    onChanged: (value) {
      filterContacts(value);
    },
    style: TextStyle(color: Colors.white), // Change text color to white
    decoration: InputDecoration(
      labelText: 'Search',
      floatingLabelBehavior: FloatingLabelBehavior.never, 
      labelStyle: TextStyle(color: Colors.white), 
      prefixIcon: Icon(Icons.search, color: Colors.white), 
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0), 
        borderSide: BorderSide(color: Colors.transparent), 
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0), 
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder( 
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      filled: true, 
      fillColor: const Color.fromARGB(255, 41, 41, 41), 
      contentPadding: EdgeInsets.all(0),
    ),
  ),
),

Expanded(
  child: ListView.builder(
    itemCount: sortedContacts.length,
    itemBuilder: (context, index) {
      final contact = sortedContacts[index];
      final currentLetter = contact["name"]![0].toUpperCase();
      final previousLetter = index > 0 ? sortedContacts[index - 1]["name"]![0].toUpperCase() : null;

      // Check if this is the first contact for the current letter
      final isFirstForLetter = previousLetter != currentLetter;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isFirstForLetter)
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8), // Add left padding and bottom spacing
              child: Text(
                currentLetter,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: const Color.fromARGB(255, 106, 102, 102),
                  width: 0,
                ),
              ),
            ),
            
            child: ListTile(
              title: Text(
                contact["name"]!,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the contact details page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactDetailsPage(contact: contact),
                  ),
                );
              },
            ),
          ),
        ],
      );
    },
  ),
),



        ],
      ),
    );
  }
}
