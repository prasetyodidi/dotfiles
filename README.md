# 💻 Mac/Zsh Dotfiles

Repositori ini berisi konfigurasi **Dotfiles** untuk mengatur Terminal (Zsh) dan daftar aplikasi (Homebrew) di sistem operasi macOS. Dengan menggunakan sistem dotfiles, kita dapat menyimpan semua konfigurasi penting ke dalam satu tempat, sehingga memudahkan sinkronisasi dan migrasi ke laptop atau komputer baru secara instan.

## 🗂 Apa Saja Isinya?

1. **`zshrc`**: Berisi konfigurasi shell Zsh, termasuk *plugin* (seperti `zsh-autosuggestions`, *fuzzy matching*), *alias*, dan *environment variables*.
2. **`Brewfile`**: Daftar semua paket Homebrew (aplikasi CLI, runtime, dan aplikasi GUI) yang terpasang di Mac, digunakan untuk instalasi otomatis.

---

## 🚀 Cara Membuat Dotfiles Anda Sendiri (Backup)

Jika Anda ingin membuat repositori dotfiles dari nol atau ingin membackup sistem saat ini, ikuti langkah-langkah berikut:

### 1. Buat `Brewfile` Secara Otomatis
Homebrew dapat memindai Mac Anda dan menghasilkan daftar semua aplikasi yang terinstal.
Buka Terminal dan jalankan:
```bash
cd ~
brew bundle dump
```
Ini akan membuat dokumen `Brewfile` di direktori *home* (`~`) Anda.

### 2. Kumpulkan File Konfigurasi
Buat folder `dotfiles` dan salin file konfigurasi Anda ke dalamnya.
```bash
mkdir ~/dotfiles
cp ~/.zshrc ~/dotfiles/zshrc
cp ~/Brewfile ~/dotfiles/Brewfile
```
*(Catatan: Tanda titik `.` pada nama `.zshrc` dihilangkan agar filenya tidak tersembunyi dan lebih mudah dikelola).*

### 3. Unggah ke GitHub
Inisialisasi Git dan dorong (*push*) konfigurasi Anda ke repositori GitHub (buat repositori baru di GitHub terlebih dahulu, bisa disetel *Private*):
```bash
cd ~/dotfiles
git init
git add .
git commit -m "Initial commit dotfiles"
git remote add origin https://github.com/USERNAME_ANDA/dotfiles.git
git branch -M main
git push -u origin main
```

---

## 🛠 Cara Install di Laptop Baru (Restore)

Saat Anda berganti ke Mac baru, Anda tidak perlu menginstal aplikasi atau mengatur ulang Terminal satu per satu. Cukup lakukan langkah-langkah ini:

### 1. Install Homebrew
Buka Terminal bawaan Mac baru dan jalankan perintah instalasi Homebrew:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Unduh Dotfiles dari GitHub
*Clone* repositori dotfiles Anda ke Mac baru:
```bash
git clone https://github.com/USERNAME_ANDA/dotfiles.git ~/dotfiles
```

### 3. Buat Symlink
Hubungkan file konfigurasi dari folder `dotfiles` ke sistem utama menggunakan *Symlink*. Dengan begitu, setiap Anda mengedit file di `~/dotfiles`, konfigurasi sistem juga ikut diperbarui.
```bash
ln -sf ~/dotfiles/zshrc ~/.zshrc
```

### 4. Install Semua Aplikasi Otomatis
Perintahkan Homebrew untuk menginstal seluruh aplikasi, tools CLI, dan dependensi coding yang tertera di `Brewfile` sekaligus:
```bash
brew bundle --file ~/dotfiles/Brewfile
```

Selesai! Sekarang tinggal menyeduh kopi, biarkan Terminal bekerja. Mac baru Anda akan mengunduh dan menata dirinya sendiri hingga identik dengan lingkungan kerja Anda sebelumnya! ☕️
