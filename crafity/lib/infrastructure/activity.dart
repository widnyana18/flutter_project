class Activity {
  final String userId, prodId, role;
  final Map<String, dynamic> product;

  const Activity({this.prodId, this.product, this.role, this.userId});

  @override
  List<Object> get props => [prodId, product, role, userId];
}
