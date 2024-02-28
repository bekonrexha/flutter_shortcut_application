import 'package:flutter/material.dart';

class ContactDetailsPage extends StatelessWidget {
  final Map<String, String> contact;

  const ContactDetailsPage({Key? key, required this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        titleTextStyle: TextStyle(color: const Color.fromARGB(255, 10, 145, 255), fontSize: 18.0),
        backgroundColor: Colors.black, 
        iconTheme: IconThemeData(color: const Color.fromARGB(255, 10, 145, 255)), 
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(), 
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Center(
                child: Column(
                  children: [
                    // Round image with first letter of name
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 120, 136, 151),
                      radius: 50,
                      child: Text(
                        contact["name"]!.substring(0, 1),
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      contact["name"]!,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), 
                      ),
                      padding: EdgeInsets.all(14.0), 
                      child: Column(
                        children: [
                          Icon(Icons.sms, color: const Color.fromARGB(255, 10, 145, 255)), 
                          SizedBox(height: 8),
                          Text(
                            'message',
                            style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), 
                      ),
                      padding: EdgeInsets.all(14.0), 
                      child: Column(
                        children: [
                          Icon(Icons.phone, color: const Color.fromARGB(255, 10, 145, 255)),
                          SizedBox(height: 8),
                          Text(
                            'home',
                            style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), 
                      ),
                      padding: EdgeInsets.all(14.0), 
                      child: Column(
                        children: [
                          Icon(Icons.video_call, color: const Color.fromARGB(255, 10, 145, 255)), 
                          SizedBox(height: 8),
                          Text(
                            'video',
                            style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), 
                      ),
                      padding: EdgeInsets.all(14.0), 
                      child: Column(
                        children: [
                          Icon(Icons.email, color: const Color.fromARGB(255, 10, 145, 255)), 
                          SizedBox(height: 8),
                          Text(
                            'mail',
                            style: TextStyle(fontSize: 10, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              // Container for full name and phone number with grey background
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.all(14.0), // Inner padding
                      child: Text(
                        "${contact["phone"]}",
                        style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 10, 145, 255)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.all(14.0), // Inner padding
                      child: Text(
                        "Notes",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.all(14.0), // Inner padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Send Message",
                            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Share Contact",
                            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Add to Favorites",
                            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 10, 145, 255)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 14),
              // Container for full name and phone number with grey background
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.all(14.0), // Inner padding
                      child: Text(
                        "Add to Emergency Contacts",
                        style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 10, 145, 255)),
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(height: 14),
              // Container for full name and phone number with grey background
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 41, 41),
                        borderRadius: BorderRadius.circular(8.0), // Rounded corners
                      ),
                      padding: EdgeInsets.all(14.0), // Inner padding
                      child: Text(
                        "Share My Location",
                        style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 10, 145, 255)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
