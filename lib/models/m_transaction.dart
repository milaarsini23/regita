class ListBarang {
  final String id;
  final String pembeli;
  final String idBarang;
  final String qty;

  ListBarang(
      {this.id,
      this.pembeli,
      this.idBarang,
      this.qty});

  factory ListBarang.fromJson(Map<String, dynamic> json) {
    return ListBarang(
      id: json['id'],
      pembeli: json['pembeli'],
      idBarang: json['idBarang'],
      qty: json['qty'],
    );
  }
}
