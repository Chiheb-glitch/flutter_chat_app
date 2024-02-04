
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:chat_app/core/core.dart';
import 'package:flutter/material.dart';

class top_chat_section extends StatelessWidget {
  const top_chat_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.width*0.06, MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.width*0.06),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        Text(
            "Chat",
       style: TextStyle(
     color: Colors_app["sample_text"], // Set the text color
    fontFamily:
            'Poppins', // Set the font family
       fontWeight: FontWeight.w400, // Set the font weight
       fontSize: 20, // Set the font size
                                       ),
                                     ),
    
                              Icon(BootstrapIcons.x_circle,
                              color: Colors_app["sample_text"],),       
       ],
     ));
  }
}