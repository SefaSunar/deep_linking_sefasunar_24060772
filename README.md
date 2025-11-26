#  Deep Linking  Ödevi



##  Uygulanan Çözüm ve Mimari

### 1. Deep Link Formatı

Uygulama, **`myapp`** şeması üzerinden parametreli linkleri tanımak üzere yapılandırılmıştır:

* **Format:** `myapp://product/:id`
* **Örnek:** `myapp://product/42`


### 2. Hata ve Geçerlilik Kontrolü

Proje, sadece doğru ID'leri değil, hatalı girişleri de yönetir.


| **Geçerli ID** (`/product/42`) | ID, sayısal bir değer olarak doğrulanır. | **ProductDetailPage** açılır. |
| **Hatalı ID** (`/product/abc`) | **`int.tryParse()`** ile ID'nin sayısal olup olmadığı kontrol edilir. | **404 Hata Sayfası** açılır. |

---

##  Uygulama Test Adımları

Uygulamanın doğru çalıştığını kontrol etmek için terminalde (uygulama açıkken veya kapalıyken) aşağıdaki komutlar kullanılabilir

### a. Başarılı Yönlendirme (ProductDetailPage)

```bash
# Geçerli ID: 42 ile yönlendir
adb shell am start -W -a android.intent.action.VIEW -d "myapp://product/42" com.example.deep_linking_sefasunar_24060772

# Hata Testi: Sayısal olmayan ID göndererek hata sayfasını aç
adb shell am start -W -a android.intent.action.VIEW -d "myapp://product/test_hata" com.example.deep_linking_sefasunar_24060772

