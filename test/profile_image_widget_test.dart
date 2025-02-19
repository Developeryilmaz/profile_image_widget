import 'package:flutter_test/flutter_test.dart';

import 'package:profile_image_widget/profile_image_widget.dart';

void main() {
  test('adds one to input values', () {
    final profileImage = ProfileImage(photoUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png');
    expect(profileImage.size, 100);
    expect(profileImage.defaultImageUrl, 'https://cdn-icons-png.flaticon.com/512/149/149071.png');
  });
}
