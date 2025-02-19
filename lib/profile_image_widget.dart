library profile_image_widget;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileImage extends StatelessWidget {
  final String photoUrl; // Dışarıdan gelen zorunlu URL
  final double size; // Profil fotoğrafının boyutu
  final String defaultImageUrl; // Varsayılan profil fotoğrafı URL'si

  const ProfileImage({
    super.key,
    required this.photoUrl, // Firebase bağımsız hale getirmek için required yaptık
    this.size = 100,
    this.defaultImageUrl = 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
  });

  @override
  Widget build(BuildContext context) {
    final String imageUrl = (photoUrl.isNotEmpty && Uri.tryParse(photoUrl)?.hasAbsolutePath == true) ? photoUrl : defaultImageUrl;

    return ClipOval(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200], // Arka plan rengi
        ),
        child: CachedNetworkImage(imageUrl: imageUrl, width: size, height: size, fit: BoxFit.cover, placeholder: (context, url) => _loadingWidget(context), errorWidget: (context, url, error) => _defaultProfileIcon()),
      ),
    );
  }

  // Varsayılan profil resmi (Hata durumunda veya `photoUrl` boşsa)
  Widget _defaultProfileIcon() {
    return CircleAvatar(radius: size / 2, backgroundColor: Colors.grey[300], child: Icon(Icons.person, size: size * 0.6, color: Colors.grey));
  }

  // Yükleme animasyonu (Loading sırasında gösterilecek)
  Widget _loadingWidget(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.beat(
        color: Theme.of(context).primaryColor, // Temaya duyarlı renk
        size: size / 2,
      ),
    );
  }
}
