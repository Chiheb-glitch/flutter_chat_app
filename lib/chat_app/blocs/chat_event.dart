import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable{

}


class LoadChatEvent extends ChatEvent{

  @override
  List<Object?> get props =>[];
}