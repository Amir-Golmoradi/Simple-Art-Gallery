import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonEvent);

    on<HomeProductCartButtonClickedEvent>(
        homeProductCartButtonEvent);

    on<HomeWishlistButtonNavigateEvent>(
        homeWishlistButtonNavigateEvent);

    on<HomeCartButtonNavigateEvent>(
        homeCartButtonNavigateEvent);
  }

  void homeProductWishlistButtonEvent(
      HomeProductWishlistButtonClickedEvent event,
      Emitter<HomeState> emit) {
    print('Wishlist Button Clicked');
  }

  void homeProductCartButtonEvent(
      HomeProductCartButtonClickedEvent event,
      Emitter<HomeState> emit) {
    print('Cart Button Clicked');
  }

  void homeWishlistNavigateEvent(
      HomeWishlistButtonNavigateEvent event,
      Emitter<HomeState> emit) {}

  void homeCartNavigateEvent(
      HomeCartButtonNavigateEvent event,
      Emitter<HomeState> emit) {}

  void homeWishlistButtonNavigateEvent(
      HomeWishlistButtonNavigateEvent event,
      Emitter<HomeState> emit) {
    print('Wishlist Navigate Clicked');
    emit(HomeNavigateToWishListPageState());
  }

  void homeCartButtonNavigateEvent(
      HomeCartButtonNavigateEvent event,
      Emitter<HomeState> emit) {
    print('Cart Navigate Clicked');
    emit(HomeNavigateToCartPageState());
  }
}
