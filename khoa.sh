#!/bin/bash

pkg install wget -y && wget https://github.com/Triutheis/v4/raw/main/v4.zip && unzip v4.zip && chmod a+x tun && chmod a+x psiphon-tunnel-core && chmod a+x qexit && chmod a+x wl && chmod a+x ver && chmod a+x v4man && chmod a+x qoa && chmod a+x v4a;
# Khóa cho truy cập
KEY="12345"
# Tệp tin cần bảo vệ
FILE="v4.zip"
# Ngày hết hạn (định dạng YYYY-MM-DD)
EXPIRATION_DATE="2024-10-10"  # Ngày hết hạn

# Kiểm tra ngày hiện tại
CURRENT_DATE=$(date +%Y-%m-%d)

# So sánh ngày hiện tại với ngày hết hạn
if [[ "$CURRENT_DATE" > "$EXPIRATION_DATE" ]]; then
    echo "Khóa đã hết hạn! Không thể truy cập tệp tin."
    
    # Đặt quyền truy cập tệp thành không ai có thể đọc
    chmod 000 "$FILE"
    echo "Quyền truy cập tệp tin đã bị vô hiệu hóa."
else
    echo "Truy cập tệp tin $FILE thành công!"
    # Thực hiện các lệnh khác, nếu cần
fi
