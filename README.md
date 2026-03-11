# Thai League Shop App ⚽🇹🇭

แอปพลิเคชันร้านค้าออนไลน์ (E-Commerce) บนมือถือ สำหรับการเลือกซื้อเสื้อแข่งฟุตบอลสโมสรในไทยลีก พัฒนาขึ้นด้วยเทคโนโลยี Flutter และใช้บริการของ Firebase เพื่อจัดการระบบเบื้องหลังทั้งหมด

## 🌟 ฟีเจอร์หลัก (Features)
- **ระบบสมาชิก (Authentication):** ผู้ใช้สามารถสมัครสมาชิก เข้าสู่ระบบ และขอกู้คืนรหัสผ่าน (Forgot Password) ผ่านอีเมลได้อย่างปลอดภัยด้วย Firebase Auth
- **หน้าร้านค้า (Shopping Home):** แสดงรายการแคตตาล็อกสินค้าเสื้อฟุตบอลทีมชั้นนำในไทยลีก (เช่น บุรีรัมย์ ยูไนเต็ด, การท่าเรือ เอฟซี, บีจี ปทุม ยูไนเต็ด, ชลบุรี เอฟซี ฯลฯ) พร้อมระบุราคา
- **ระบบตะกร้าสินค้า (Cart Management):** สามารถคลิกเพิ่มสินค้าเข้าตะกร้า ปรับลดหรือเพิ่มจำนวนสินค้าแต่ละชิ้น และคำนวณราคารวมทั้งหมดได้โดยอัตโนมัติ (จัดการ State ด้วย `scoped_model`)
- **ฐานข้อมูลผู้ใช้ (Database):** มีการบันทึกข้อมูลชื่อผู้ใช้งานและอีเมลลงในฐานข้อมูล Cloud Firestore

## 🛠️ โครงสร้างเทคโนโลยีและเครื่องมือ (Tech Stack)
- **Frontend Framework:** Flutter / Dart
- **Backend & Database:** Firebase (Firebase Authentication, Cloud Firestore)
- **State Management:** Scoped Model (`scoped_model`)
- **Application ID:** `com.example.shop_final`
- **Android SDK:** กำหนดค่าขั้นต่ำ (minSdkVersion) ที่ API Level 21 (Android 5.0 Lollipop)

## 📂 โครงสร้างไฟล์ที่สำคัญ (Project Structure)
- `lib/main.dart` - ไฟล์หลักที่เป็นจุดเริ่มต้นของแอปพลิเคชัน
- `lib/main_page.dart` - จัดการ State ของเซสชันผู้ใช้ (ตรวจสอบว่าล็อกอินอยู่หรือไม่ เพื่อนำทางไปยังหน้า Home หรือ Auth)
- `lib/auth_page.dart` - หน้าควบคุมการสลับระหว่างหน้าเข้าสู่ระบบและหน้าสมัครสมาชิก
- `lib/signin.dart` & `lib/register.dart` - หน้า UI สำหรับเข้าสู่ระบบและสมัครสมาชิก
- `lib/forgotpassword.dart` - หน้าสำหรับกรอกอีเมลเพื่อส่งลิงก์รีเซ็ตรหัสผ่าน
- `lib/home_page.dart` - หน้าต้อนรับหลังจากล็อกอินสำเร็จ
- `lib/home_shopping.dart` - หน้าหลักแสดงรายการสินค้าเสื้อฟุตบอลทั้งหมด
- `lib/cart_page.dart` & `lib/cart_model.dart` - หน้าจอแสดงตะกร้าสินค้าและโมเดลตรรกะสำหรับการคำนวณราคาสินค้า

## 🚀 วิธีการติดตั้งและรันโปรเจกต์ (Getting Started)
1. ตรวจสอบให้แน่ใจว่าเครื่องคอมพิวเตอร์ของคุณได้ติดตั้ง Flutter SDK และตั้งค่า Android Studio/VS Code เรียบร้อยแล้ว
2. โคลนโปรเจกต์นี้ลงในเครื่องของคุณ
3. เปิดเทอร์มินัล (Terminal) ในโฟลเดอร์โปรเจกต์ และรันคำสั่งเพื่อดาวน์โหลด Dependencies ทั้งหมด:
   ```bash
   flutter pub get

##โปรเจกต์นี้มีการแนบไฟล์ google-services.json สำหรับการตั้งค่า Firebase บน Android ไว้แล้ว สามารถเสียบสายเชื่อมต่ออุปกรณ์จริงหรือเปิด Emulator แล้วรันคำสั่งด้านล่างได้ทันที:

'''Bash
  flutter run
