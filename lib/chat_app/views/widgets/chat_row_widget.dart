

import 'package:chat_app/chat_app/data/Chat_model.dart';
import 'package:chat_app/core/core.dart';
import 'package:flutter/material.dart';

class chat_row_widget extends StatelessWidget {
  ChatModel chat_model;
   chat_row_widget({
    required this.chat_model
  });
  // Constructor that requires a color parameter

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0,10),
      child: Row(children: [
      
      
          
                           Container(
               margin: EdgeInsets.fromLTRB(5, 0, 10, 5),
               height: 40,
               width:40,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(40.0),
                 boxShadow: [
                   BoxShadow(
                     blurRadius: 8, // Set the blur radius
                     // Set the spread radius
                     offset: Offset(0, 2), // Set the offset
                   ),
                 ],
                 image: DecorationImage(
                   image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkkVsRNVJ7O7xNGK7IXtRwchi4NsKzUUdPMMcmIdbDKH_x6DKXR2EQGWrBiM8KKga7Ey0&usqp=CAU"),
                   fit: BoxFit.cover,
                 ),
               )),
          
          
           Container(child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                         Container(
                          width: MediaQuery.of(context).size.width*0.68,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           
                             children: [
                               Text(
                                              "${chat_model.user_name}",
                                         style: TextStyle(
                                       color: Colors_app["sample_text"], // Set the text color
                                      fontFamily:
                                              'Poppins', // Set the font family
                                         fontWeight: FontWeight.w500, // Set the font weight
                                         fontSize: 15, // Set the font size
                                                ),
                                              ),
         chat_model.index_no_readed >0? Container(
            padding: EdgeInsets.all(4),
 decoration: BoxDecoration(
        gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.blue, Colors.blue,Colors.blue,Color.fromARGB(255, 153, 239, 241)],
              ),
                 borderRadius: BorderRadius.circular(5.0),
             
                
               ),

                 child: Text(
                                                                                                                           "${chat_model.index_no_readed}",
                                                                                                                      style: TextStyle(
                                                                                                                    color: Colors.white, // Set the text color
                                                                                                                   fontFamily:
                                                                                                                           'Poppins', // Set the font family
                                                                                                                      fontWeight: FontWeight.w300, // Set the font weight
                                                                                                                      fontSize: 10, // Set the font size
                                                                                                                             ),
                                                                                                                           ),
                                                                           ):SizedBox(),
                           
                           
                             ],
                           ),
                         ),
                               Text(
                chat_model.content_quote.length < 30 ? "${chat_model.content_quote}":"${extractSubstring( chat_model.content_quote,0,30)}...",
          style: TextStyle(
        color: chat_model.index_no_readed>0?  Color.fromARGB(255, 216, 216, 216) : Colors_app["sample_text"], // Set the text color
       fontFamily:
               'Poppins', // Set the font family
          fontWeight: FontWeight.w300, // Set the font weight
          fontSize: 15, // Set the font size
                                          ),
                                        ),                               
          
           ]),)
            
          
          
          
          ],),
    );
  }
}

String extractSubstring(String text, int startIndex, int endIndex) {
  if (startIndex >= 0 && endIndex < text.length && startIndex <= endIndex) {
    return text.substring(startIndex, endIndex + 1);
  } else {
    return text; // Return the original text if indices are out of bounds
  }
}