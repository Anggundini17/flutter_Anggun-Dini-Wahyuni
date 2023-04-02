part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class AddContact extends ContactEvent {
  final String name;
  final String phoneNumber;

  AddContact({required this.name, required this.phoneNumber});
  // log(data);
  @override
  List<Object> get props => [name, phoneNumber];
}

class UpdateContact extends ContactEvent {
  final String name, phoneNumber;
  final int index;

  const UpdateContact(
      {required this.name, required this.phoneNumber, required this.index});

  @override
  List<Object> get props => [name, phoneNumber, index];
}

class RemoveContact {
  final int index;

  const RemoveContact({required this.index});

  @override
  List<Object> get props => [index];
}
