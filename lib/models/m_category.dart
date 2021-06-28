class KategoriBarang {
  String id;
  String kategori;

  KategoriBarang({this.id, this.kategori});

  KategoriBarang.fromMap(Map snapshot, String id)
      : id = id ?? '',
        kategori = snapshot['kategori'] ?? '';

  toJson() {
    return {
      "kategori": kategori,
    };
  }
}
