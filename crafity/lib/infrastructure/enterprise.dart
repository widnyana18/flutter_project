class Enterprise {
  final String id, userId, companyName, location, description, typeId;
  final int employes, found;
  final Owner owner;

  const Enterprise(
      {this.id,
      this.userId,
      this.companyName,
      this.location,
      this.description,
      this.typeId,
      this.found,
      this.owner,
      this.employes});

  @override
  List<Object> get props => [
        id,
        userId,
        companyName,
        location,
        description,
        typeId,
        found,
        owner,
        employes,
      ];

  // @override
  // String toString => ''' ''';
}

class Owner {
  final String name, status;

  const Owner({this.name, this.status});

  @override
  List<Object> get props => [name, status];
}
