import 'package:assesment/models/enums/transaction_type.dart';

class Transaction {
  final String name;
  final String date;
  final TransactionType type;
  final String amount;
  final String status;

  Transaction({
    required this.name,
    required this.date,
    required this.amount,
    required this.status,
    required this.type,
  });
}
