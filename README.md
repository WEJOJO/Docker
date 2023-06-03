# Subject_Link
https://www.notion.so/Docker-inception-cb4d73a88c7043f18fdb001218ec97ba?pvs=4#dc2870d33a0e40db81e04ccd5c3edd5b

# 주요 요구 사항
<img width="540" alt="요구사항" src="https://github.com/WEJOJO/Docker/assets/46590247/2bc72a12-9ef6-4bba-9aa8-2a531c96c1d8">

- 각 nginx / wordpress / mariadb **컨테이너는 별도**로 존재할 것.
- **공식 이미지를 Dockerfile의 base로 사용 금지(직접 작성할 것)**
- 빌드 시점에 모든 세팅이 완료.
- https 방식을 사용.
- ENV에 비밀번호를 노출하는 방식 금지.
- docker stop후 다시 up을 해도 데이터가 남아있어야 함.

## 동작

### Wordpress (WP)
![Docker1](https://github.com/WEJOJO/Docker/assets/46590247/252ad4cb-82cf-41d2-b46b-5f043667b41a)

### WP - Make msg
![test_msg](https://github.com/WEJOJO/Docker/assets/46590247/8ecd098c-7ded-4f65-9dc3-5e92350341c6)

### WP - Admin Login
![admin_login](https://github.com/WEJOJO/Docker/assets/46590247/0688a42a-f510-4f83-90c1-fb3d0a763584)

### DataBase (MariaDB)
![in_db2](https://github.com/WEJOJO/Docker/assets/46590247/fd38c569-ca64-45e2-b226-679096173bd8)
