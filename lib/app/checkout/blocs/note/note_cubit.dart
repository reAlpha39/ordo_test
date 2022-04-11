import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'note_state.dart';
part 'note_cubit.freezed.dart';

@injectable
class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(const NoteState.initial());

  List<bool> isNoteShownList = [true, true];
  List<int> totalItemList = [2, 1];
  List<String> noteList = ['', ''];
  List<TextEditingController> noteControllerList = [
    TextEditingController(),
    TextEditingController(),
  ];

  final List<String> imageAsset = [
    'assets/images/image11.png',
    'assets/images/image13.png'
  ];
  final List<String> title = ['Tas Gucci', 'Tas Elger'];
  final List<String> price = ['Rp. 75.000', 'Rp. 75.000'];

  TextEditingController catatanPesanan = TextEditingController();

  void initialData() {
    emit(const NoteState.loading());
    isNoteShownList = [true, true];
    totalItemList = [2, 1];
    noteList = ['', ''];
    noteControllerList[1].text =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore';
    emit(const NoteState.success());
  }

  void toggleNote(int index) {
    emit(const NoteState.loading());
    isNoteShownList[index] = !isNoteShownList[index];
    emit(const NoteState.success());
  }

  void addItem(int index) {
    emit(const NoteState.loading());
    totalItemList[index] += 1;
    emit(const NoteState.success());
  }

  void removeItem(int index) {
    emit(const NoteState.loading());
    totalItemList[index] -= 1;
    emit(const NoteState.success());
  }

  void changeNote(int index) {
    emit(const NoteState.loading());
    noteList[index] = noteControllerList[index].text;
    emit(const NoteState.success());
  }

  void clearController(int index) {
    emit(const NoteState.loading());
    noteControllerList[index].clear();
    emit(const NoteState.success());
  }
}
