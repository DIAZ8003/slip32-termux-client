#!/data/data/com.termux/files/usr/bin/bash
set -e

BIN_URL="https://raw.githubusercontent.com/DIAZ8003/slip32-termux-client/main/slip32"
INSTALL_PATH="$PREFIX/bin/slip32"

echo "[+] Installing slip32 (ARM 32-bit)..."

pkg install -y wget openssl libc++ >/dev/null 2>&1 || true

wget -q -O "$INSTALL_PATH" "$BIN_URL"
chmod +x "$INSTALL_PATH"

echo
echo "[✓] slip32 installed successfully"
echo "Run with: slip32 --help"
