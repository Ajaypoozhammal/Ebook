import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/Api/Summery.dart';
import '../Repository/Modelclass/SummeryModel.dart';

part 'summery_event.dart';
part 'summery_state.dart';

class SummeryBloc extends Bloc<SummeryEvent, SummeryState> {
  late  SummeryModel summeryModel;
  SummeryApi summeryApi=SummeryApi();
  SummeryBloc() : super(SummeryInitial()) {
    on<SummeryEvent>((event, emit)async {
      emit(SummeryBlocLoading());
      try{
        summeryModel= await summeryApi.getSummery();
        emit(SummeryBlocLoaded());
      }
      catch(e){
        emit(SummeryBlocError());
      }
    });
  }
}
