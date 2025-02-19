# 📌 Changelog

Tüm önemli değişiklikler bu dosyada belgelenmektedir. **Semantik Versiyonlama** kullanılmıştır.

## [0.0.1] - 2024-02-19
### 🚀 İlk Yayın
- `ProfileImageWidget` eklendi.
- Profil resmi için `imageUrl`, `size` ve `shape` parametreleri destekleniyor.
- Hata durumunda varsayılan ikon gösteriliyor.
- Örnek proje `example/` dizinine eklendi.
- **MIT Lisansı** ile yayınlandı.

## [0.0.2] - 2024-03-01
### 🛠️ Güncellemeler
- Profil resmi yüklenirken `loading` göstergesi eklendi.
- `borderColor` ve `borderWidth` parametreleri eklendi.
- Daha iyi hata mesajları ve hata yakalama sistemi geliştirildi.
- `dart analyze` sonuçları temizlendi.

## [0.1.0] - 2024-03-15
### 🎨 Yeni Özellikler
- Kare (square) ve yuvarlak (circle) şeklinde çerçeve seçenekleri eklendi.
- İçeriğe `tooltip` özelliği eklendi.
- **Daha iyi performans** için `CachedNetworkImage` desteği sağlandı.

### 🐞 Hata Düzeltmeleri
- Varsayılan resmin yanlış hizalanma hatası giderildi.
- `size` parametresi null olduğunda yaşanan hata çözüldü.

## [0.2.0] - 2024-04-01
### 🔥 Büyük Güncelleme
- `fadeInDuration` ve `fadeOutDuration` seçenekleri eklendi.
- `errorWidget` özelleştirme desteği eklendi.
- **Dokümantasyon iyileştirildi.**
- **Performans artırıldı.**

---

📌 **Not:**  
- **[X.Y.Z]** formatı: `MAJOR.MINOR.PATCH` şeklindedir.  
- Yeni özellikler için **MINOR** (0.1 → 0.2),  
- Hata düzeltmeleri için **PATCH** (0.2.0 → 0.2.1),  
- Büyük değişiklikler için **MAJOR** (0 → 1 → 2) artırılır.  
- Daha fazla detay için [SemVer](https://semver.org/) sitesini inceleyebilirsin. 🚀
