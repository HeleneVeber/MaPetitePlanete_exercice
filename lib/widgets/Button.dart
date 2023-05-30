import 'package:flutter/material.dart';
import '../screens/ContactPage.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(context, 
          MaterialPageRoute(
            builder: (context) => ContactPage(title: 'Contact'),
          ),
        );
      },
      icon: Icon(
        Icons.contact_page_outlined),
      label:Text('Contact'),
      style: ElevatedButton.styleFrom(
        //La couleur du texte ne fonctionne pas
        /* textStyle: TextStyle(color: Colors.black), */                 
        fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 54)
      ),
    );
  }
}