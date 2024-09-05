import 'package:bloc/bloc.dart';
import 'package:ebook/Repository/Api/api.dart';
import 'package:ebook/Repository/Modelclass/EbookModel.dart';
import 'package:meta/meta.dart';

part 'ebook_event.dart';
part 'ebook_state.dart';

class EbookBloc extends Bloc<EbookEvent, EbookState> {
  late List< EbookModel> ebookModel;
  EbookApi ebookApi=EbookApi();
  EbookBloc() : super(EbookInitial()){
    on<EbookEvent>((event, emit) async {
      emit(EbookBlocLoading());
      try{
        ebookModel= await ebookApi.getEbook();
        emit(EbookBlocLoaded());
      }
      catch(e){
        emit(EbookBlocError());
      }
    });
  }
}
