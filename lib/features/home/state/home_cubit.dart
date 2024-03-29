import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:privet_vpn/config/colors.dart';
import 'package:privet_vpn/features/home/home_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
          currentBorderColor: AppColors.defaultWhite,
          currentStatusColor: AppColors.primaryGray,
          currentStatusText: "Disconnected",
          connectionState: VpnConnectionState.disconnected,
          currentCrossFadeState: CrossFadeState.showFirst,
        ));

  connectVPN() async {
    state.currentBorderColor = AppColors.primaryOrange;
    state.connectionState = VpnConnectionState.pending;
    state.currentCrossFadeState = CrossFadeState.showSecond;
    state.currentStatusText = "Connecting";
    state.currentStatusColor = AppColors.primaryOrange;
    emit(state.copyWith(
      currentBorderColor: state.currentBorderColor,
      connectionState: state.connectionState,
      currentStatusText: state.currentStatusText,
      currentCrossFadeState: state.currentCrossFadeState,
      currentStatusColor: state.currentStatusColor,
    ));

    Future.delayed(Duration(seconds: 4), () {
      state.currentBorderColor = AppColors.primaryPurple;
      state.currentStatusColor = AppColors.primaryPurple;
      state.connectionState = VpnConnectionState.connected;
      state.currentCrossFadeState = CrossFadeState.showSecond;
      state.currentStatusText = "Connected";
      emit(state.copyWith(
        currentBorderColor: state.currentBorderColor,
        connectionState: state.connectionState,
        currentCrossFadeState: state.currentCrossFadeState,
        currentStatusColor: state.currentStatusColor,
        currentStatusText: state.currentStatusText,
      ));
    });
  }

  disconnectVPN() {
    state.currentBorderColor = AppColors.defaultWhite;
    state.connectionState = VpnConnectionState.disconnected;
    state.currentCrossFadeState = CrossFadeState.showFirst;
    state.currentStatusText = "Disconnected";
    state.currentStatusColor = AppColors.primaryGray;
    emit(state.copyWith(
      currentBorderColor: state.currentBorderColor,
      connectionState: state.connectionState,
      currentCrossFadeState: state.currentCrossFadeState,
      currentStatusText: state.currentStatusText,
      currentStatusColor: state.currentStatusColor,
    ));
  }
}
