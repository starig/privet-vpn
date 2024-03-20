part of 'home_cubit.dart';

class HomeState {
  Color currentBorderColor;
  Color currentStatusColor;
  String currentStatusText;
  VpnConnectionState connectionState;
  CrossFadeState currentCrossFadeState;
  List<ServerItem> servers;
  ServerItem? selectedServer;

  HomeState({
    required this.currentBorderColor,
    required this.currentStatusColor,
    required this.currentStatusText,
    required this.connectionState,
    required this.currentCrossFadeState,
    required this.servers,
    this.selectedServer,
  });
  HomeState copyWith({
    Color? currentBorderColor,
    Color? currentStatusColor,
    String? currentStatusText,
    VpnConnectionState? connectionState,
    CrossFadeState? currentCrossFadeState,
    List<ServerItem>? servers,
    ServerItem? selectedServer,
  }) {
    return HomeState(
      currentBorderColor: currentBorderColor ?? this.currentBorderColor,
      currentStatusColor: currentStatusColor ?? this.currentStatusColor,
      currentStatusText: currentStatusText ?? this.currentStatusText,
      connectionState: connectionState ?? this.connectionState,
      currentCrossFadeState: currentCrossFadeState ?? this.currentCrossFadeState,
      servers: servers ?? this.servers,
      selectedServer: selectedServer ?? this.selectedServer,
    );
  }
}
