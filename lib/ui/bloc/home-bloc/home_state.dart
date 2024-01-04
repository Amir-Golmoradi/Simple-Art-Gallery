part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeFailureState extends HomeState {}

// reference of App Actions State
// What Are App Actions? Navigation to other pages from home page !!

class HomeNavigateToWishListPageState
    extends HomeActionState {}

class HomeNavigateToCartPageState extends HomeActionState {}
