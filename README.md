
Ubuntu

Информация про  Shadowsocks здесь https://github.com/dockage/shadowsocks-server

Информация по настройке клиентов Shadowsocks - google.com

1. Зайти на арендованный сервер
2. sudo apt update && sudo apt upgrade -y && sudo apt install git -y
3. git clone https://github.com/maximkasimov/vpninstall.git
4. sudo sh install_ansible.sh
5. passwd vpn это если нужен этот аккаунт для входа

Пароль для доступа к shadowsocks в плейбуке:
     SS_PASSWORD: "S@cretP@ss"  ---  поменяйте на свой

Порт для доступа к shadowsocks стандартный - 8388, тоже можно поменять
