class Blog {
  final String deskripsi;
  final String id;
  final String judul;
  final String gambar;

  const Blog({
    required this.deskripsi,
    required this.id,
    required this.judul,
    required this.gambar,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      deskripsi: json['deskripsi'],
      id: json['id'],
      judul: json['judul'],
      gambar: json['gambar'],
    );
  }
}