// import 'package:cloud_firestore/cloud_firestore.dart';
class Order {
  final String id;
  final String date;
  final Map<String, dynamic> order;

  const Order({this.id, this.date, this.order});

  @override
  List<Object> get props => [id, date, order];
}
