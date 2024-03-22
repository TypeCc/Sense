# Sense - Firebase Chat Uygulaması

Sense, Firebase kullanarak geliştirilmiş bir grup mesajlaşma chat uygulamasıdır. Kullanıcılar, giriş yaparak topluluğa katılabilir ve en fazla 40 karakterlik mesajlarını paylaşabilirler. Mesajlar Firebase Firestore'da depolanır.

## Özellikler

- **Giriş Yapma**: Kullanıcılar, e-posta ve şifreleriyle giriş yaparak uygulamaya erişebilirler.
- **Grup Mesajlaşma**: Kullanıcılar, topluluğun tamamına veya belirli bir kullanıcıya mesaj gönderebilirler.
- **40 Karakter Sınırlı Mesajlar**: Mesajlar en fazla 40 karakter içerebilir.
- **Firestore Depolama**: Gönderilen mesajlar Firebase Firestore'da güvenli bir şekilde depolanır.

## Gereksinimler

- Xcode 12 veya üzeri
- Swift 5.0 veya üzeri
- Firebase projesi ve Firebase SDK kurulumu

## Kullanım

1. Projeyi bilgisayarınıza klonlayın veya ZIP olarak indirin.
2. Firebase konsolunda yeni bir proje oluşturun ve proje ayarlarını yapın.
3. Firebase projesine iOS uygulaması ekleyin ve gerekli adımları tamamlayın (GoogleService-Info.plist dosyasını projenize ekleyin).
4. Firestore ve Authentication servislerini etkinleştirin.
5. Xcode'u açın ve projeyi açın.
6. Projeyi derleyin ve çalıştırın.
7. Uygulamayı emülatörde veya bir iOS cihazında test edin.
8. E-posta ve şifrenizle giriş yapın ve topluluğa katılın.
9. Mesaj göndermek için metin kutusuna en fazla 40 karakterlik bir mesaj yazın ve "Gönder" düğmesine basın.
10. Topluluğun geri kalanıyla sohbet edin ve gününüzü paylaşın!

## Katkıda Bulunma

1. Bu depoyu fork edin.
2. Yeni özellikler eklemek, hataları düzeltmek veya geliştirmeler yapmak için bir dal oluşturun (`git checkout -b feature/xyz`).
3. Değişikliklerinizi yapın ve bunları doğrulamak için test edin.
4. Değişikliklerinizi göndermek için bir pull isteği oluşturun

