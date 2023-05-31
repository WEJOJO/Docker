# Docker

# 요구 사항
<img width="540" alt="요구사항" src="https://github.com/WEJOJO/Docker/assets/46590247/2bc72a12-9ef6-4bba-9aa8-2a531c96c1d8">

- nginx / wordpress / mariadb의 **공식 이미지를 Dockerfile의 base로 사용해선 안됌.**
- 각 컨테이너는 별개로 존재해야 한다.
- https 방식을 사용.
- ENV에 비밀번호를 노출하는 방식은 안됌.
- docker stop후 다시 up을 해도 데이터가 남아있어야 한다.


![Docker1](https://github.com/WEJOJO/Docker/assets/46590247/252ad4cb-82cf-41d2-b46b-5f043667b41a)
