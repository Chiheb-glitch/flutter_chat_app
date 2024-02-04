

import 'package:chat_app/chat_app/data/Chat_entity.dart';
import 'package:chat_app/chat_app/data/Chat_model.dart';
import 'package:equatable/equatable.dart';

abstract class Chat_State extends Equatable{}



class Chat_CalmState extends Chat_State{


  @override
  List<Object?> get props=>[];
}

class Chat_TrigerState extends Chat_State{
ChatEntity Chat_Entity;

  Chat_TrigerState({required this.Chat_Entity});
  @override
  List<Object?> get props=>[];
}

class Chat_LoadedState extends Chat_State{
 List<ChatModel> Chat_Model;

  Chat_LoadedState({required this.Chat_Model});
  @override
  List<Object?> get props=>[];
}