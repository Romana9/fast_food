part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class LogButtonIndex extends AppState {}

final class IsSecureIcon extends AppState {}

final class IsSearching extends AppState {}

final class RemoveCartList extends AppState {}
