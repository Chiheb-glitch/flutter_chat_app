
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:chat_app/chat_app/views/pages/chat_page.dart';
import 'package:chat_app/core/core.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class detail_top_chat_section extends StatefulWidget {


  @override
  _detail_top_chat_section createState() => _detail_top_chat_section();
}

class _detail_top_chat_section extends State<detail_top_chat_section> with TickerProviderStateMixin{

List<String> items = [
    'Images',
    'Info',
    'Close',
 
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.width*0.06, MediaQuery.of(context).size.width*0.07, MediaQuery.of(context).size.width*0.06),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
       
 GestureDetector(
                  onTap: (){ Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return Chat_Page();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = Offset(-1.0, 0.0); // Change here
                  const end = Offset.zero; // Change here
                  const curve = Curves.easeInOutQuart;

                  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                  var offsetAnimation = animation.drive(tween);

                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              ),
            );
                  },
   child: Icon(BootstrapIcons.arrow_left,
                                color: Colors.white,),
 ), 

        Text(
            "Order no",
       style: TextStyle(
     color: Colors.white, // Set the text color
    fontFamily:
            'Poppins', // Set the font family
       fontWeight: FontWeight.w400, // Set the font weight
       fontSize: 20, // Set the font size
                                       ),
                                     ),
    
                              
 Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: const Row(
              children: [
            
              ],
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 50,
              width: 80,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
             
                color:  Colors_app["background_color"],
              ),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                BootstrapIcons.three_dots_vertical,
              ),
              iconSize: 24,
              iconEnabledColor: Color.fromARGB(255, 217, 217, 217),
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 200,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color:  Colors_app["background_color"],
              ),
              offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),
      ),
       ],
     ));
  }
}