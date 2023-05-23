import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'wallet_page_event.dart';
part 'wallet_page_state.dart';

class WalletPageBloc extends Bloc<WalletPageEvent, WalletPageState> {
  WalletPageBloc() : super(WalletPageInitial()) {
    on<WalletPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
