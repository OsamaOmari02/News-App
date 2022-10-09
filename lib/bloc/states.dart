abstract class NewsStates {}

class InitialState extends NewsStates {}

class NewsBottomNavState extends NewsStates{}

class LoadingState extends NewsStates{}

class BusinessSuccessState extends NewsStates{}
class BusinessErrorState extends NewsStates{
  final String error;
  BusinessErrorState(this.error);
}

class SportsSuccessState extends NewsStates{}
class SportsErrorState extends NewsStates{
  final String error;
  SportsErrorState(this.error);
}

class ScienceSuccessState extends NewsStates{}
class ScienceErrorState extends NewsStates{
  final String error;
  ScienceErrorState(this.error);
}

class SearchSuccessState extends NewsStates{}
class SearchErrorState extends NewsStates{
  final String error;
  SearchErrorState(this.error);
}
class DarkModeState extends NewsStates{}




