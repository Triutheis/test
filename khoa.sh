#!/bin/bash
pkg install wget -y && wget https://github.com/Triutheis/v4/raw/main/v4.zip
# Tệp tin cần bảo vệ
FILE="v4.zip"
# Khóa cho truy cập
KEY="12345"
# Ngày hết hạn (định dạng YYYY-MM-DD)
EXPIRATION_DATE="2024-10-10"  # Ngày hết hạn

# Kiểm tra ngày hiện tại
CURRENT_DATE=$(date +%Y-%m-%d)

# Yêu cầu người dùng nhập khóa
echo "Nhập khóa để truy cập (khóa sẽ hết hạn vào $EXPIRATION_DATE):"
read -s INPUT_KEY

# Kiểm tra khóa
if [ "$INPUT_KEY" == "$KEY" ]; then
    # So sánh ngày hiện tại với ngày hết hạn
    if [[ "$CURRENT_DATE" < "$EXPIRATION_DATE" ]]; then
        echo "Truy cập thành công! Bạn có thể truy cập tệp tin $FILE."
         unzip v4.zip && chmod a+x tun && chmod a+x psiphon-tunnel-core && chmod a+x qexit && chmod a+x wl && chmod a+x ver && chmod a+x v4man && chmod a+x qoa && chmod a+x v4a;
    else
        echo "Khóa đã hết hạn! Truy cập bị từ chối."
        chmod 000 "$FILE"  # Vô hiệu hóa quyền truy cập
        echo "Quyền truy cập tệp tin đã bị vô hiệu hóa."
    fi
else
    echo "Khóa không đúng. Truy cập bị từ chối!"
    chmod 000 "$FILE"  # Vô hiệu hóa quyền truy cập
    echo "Quyền truy cập tệp tin đã bị vô hiệu hóa."
fi
 
