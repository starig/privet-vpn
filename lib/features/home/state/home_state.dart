part of 'home_cubit.dart';

class HomeState {
  Color currentBorderColor;
  Color currentStatusColor;
  String currentStatusText;
  VpnConnectionState connectionState;
  CrossFadeState currentCrossFadeState;

  HomeState({
    required this.currentBorderColor,
    required this.currentStatusColor,
    required this.currentStatusText,
    required this.connectionState,
    required this.currentCrossFadeState,
  });
  HomeState copyWith({
    Color? currentBorderColor,
    Color? currentStatusColor,
    String? currentStatusText,
    VpnConnectionState? connectionState,
    CrossFadeState? currentCrossFadeState,
  }) {
    return HomeState(
      currentBorderColor: currentBorderColor ?? this.currentBorderColor,
      currentStatusColor: currentStatusColor ?? this.currentStatusColor,
      currentStatusText: currentStatusText ?? this.currentStatusText,
      connectionState: connectionState ?? this.connectionState,
      currentCrossFadeState:
          currentCrossFadeState ?? this.currentCrossFadeState,
    );
  }
}
