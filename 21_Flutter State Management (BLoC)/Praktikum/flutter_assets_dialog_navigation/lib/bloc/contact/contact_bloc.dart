import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/contact.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactState(contacts: [])) {
    on<AddContact>((event, emit) => emit(ContactState(
        contacts: List.of(state.contacts)
          ..add(Contact(name: event.name, phone: event.phoneNumber)))));

    //update

    // final List<String> updatedList = List.from(state.contacts);

    // state.contacts.elementAt(1).name = "asas";
    // state.contacts.elementAt(1).phoneNumber = "asas";

    // on<UpdateData>((event, emit) => emit(ContactState(
    //     contacts: List.of(state.contacts)..elementAt(1).name = "asas")));

    // on<AddData>(_onAddData);
  }
}
