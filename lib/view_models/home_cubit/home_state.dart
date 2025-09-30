part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  HomeLoaded({required this.products, required this.carouselItems});

  final List<ProductItemModel> products;
  final List<CarousalItemModel> carouselItems;
}

final class HomeError extends HomeState {
  HomeError({required this.errorMessage});

  final String errorMessage;
}
