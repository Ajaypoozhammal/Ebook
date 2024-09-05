part of 'summery_bloc.dart';

@immutable
sealed class SummeryState {}

final class SummeryInitial extends SummeryState {}
class SummeryBlocLoading extends SummeryState {}
class SummeryBlocLoaded extends SummeryState {}
class SummeryBlocError extends SummeryState {}
