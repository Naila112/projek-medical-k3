import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final IconData icon;
  final double size;
  final VoidCallback? onTap; // Callback untuk menangani ketika avatar diklik

  const ProfileAvatar({
    super.key,
    required this.imageUrl,
    required this.icon,
    this.size = 100,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Panggil fungsi callback ketika avatar diklik
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: imageUrl.isNotEmpty
              ? DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                )
              : null,
          color: imageUrl.isNotEmpty
              ? null
              : Colors.grey[300], // Warna latar belakang jika tidak ada gambar
        ),
        child: imageUrl.isEmpty // Jika tidak ada gambar, tampilkan ikon
            ? Icon(
                icon,
                size: size * 0.5,
                color: Colors.grey[600],
              )
            : null,
      ),
    );
  }
}
