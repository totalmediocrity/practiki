import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(ListInitial());

  int totalizer = 0;
  List<String> elements = <String>[];

  void ClickAdd(int count, Brightness currTheme){

    if(currTheme == Brightness.light){
      elements.add("Светлая тема: $count");
    } else {
      elements.add("Темная тема: $count".replaceAll("Entry", ""));
    }

    
    totalizer++;

    emit(OnClickAdd());
  }

  void ClickDel(){

    if(elements.isNotEmpty){

      elements.removeAt(totalizer-1);
      
      totalizer--;

      if(totalizer == 0){
        emit(EmptyList());
      } else{
        emit(OnClickDel());
      }
    }

  }
}