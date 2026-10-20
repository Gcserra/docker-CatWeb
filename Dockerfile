# 1. Adım: Bilgisayarında Python kurulu olmasa bile, 
# Docker'a arka planda hafif bir Python ortamı (imajı) indirmesini söylüyoruz.
FROM python:3.9-slim

# 2. Adım: Bu sanal kutunun içinde kendimize '/uygulama' adında bir klasör yaratıyoruz.
WORKDIR /uygulama

# 3. Adım: Bilgisayarımızdaki (VS Code'daki) tüm dosyaları, bu sanal kutunun içine kopyalıyoruz.
COPY . /uygulama

# 4. Adım: Dışarıdan bu web sitesine erişebilmek için 8000 numaralı kapıyı (portu) açıyoruz.
EXPOSE 8000

# 5. Adım: Sanal kutu çalışmaya başladığında Python'un web sunucusunu başlatan komutu veriyoruz.
CMD ["python", "-m", "http.server", "8000"]