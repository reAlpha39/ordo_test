part of 'note_cubit.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial() = _Initial;
  const factory NoteState.loading() = _Loading;
  const factory NoteState.error(String message) = _Error;
  const factory NoteState.success() = _Success;
}
