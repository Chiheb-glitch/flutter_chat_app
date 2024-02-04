

 import 'package:chat_app/chat_app/blocs/chat_event.dart';
import 'package:chat_app/chat_app/blocs/chat_state.dart';
import 'package:chat_app/chat_app/data/chat_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StreamBLoc extends Bloc<LoadChatEvent,Chat_State>{
 final ChatRepo  repo;
  StreamBLoc(this.repo) : super(Chat_CalmState());

  
  
}