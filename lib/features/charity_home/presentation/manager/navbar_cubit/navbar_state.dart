part of 'navbar_cubit.dart';

@immutable
sealed class NavbarState {}

final class NavbarInitial extends NavbarState {}

final class NavbarUpdate extends NavbarState {
  final int currentIndex;

  NavbarUpdate(this.currentIndex);
}
