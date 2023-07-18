import 'package:flutter/material.dart';
import 'dart:math';
import '../model/ticket.dart';

final List<Ticket> initialData = List.generate(
    5,
    (index) => Ticket(
        ClassId: 'ClassId$index',
        Ticketd: 'TicketId$index',
        Statment: 'Statment',
        remaingUser: 3,
        totalUserAdded: 7,
        MaxposibleGain: 100,
        price: 10));

class TicketProvider extends ChangeNotifier {
  final List<Ticket> _ticket = initialData;
  List<Ticket> get ticket => _ticket;

  void setTicket(Ticket ticket) {
    notifyListeners();
  }
}
