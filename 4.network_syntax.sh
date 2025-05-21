# 프로세스 목록 조회
ps -ef
ps -ef | grep "nginx"

# 패키지 관련
# yum: 레드햇계열 패키지 관리 도구
# apt 또는 apt-get: 데비안계열 패키지 관리 도구
sudo apt update #패키지 목록 최신화

# nginx 설치
# 설치 명령 검색할 때, ubuntu @@설치로 서치하기 (yum X)
sudo apt install nginx
# 프로그램 실행 관리 도구: systemctl
sudo systemctl start nginx
sudo systemctl stop nginx

# 프로세스 강제 종료
kill -9 프로세스ID

# 네트워크 관련 명령어
# 로컬 ip 정보 조회
ifconfig

# 특정 도메인의 ip 주소 정보 조회: DNS 서버 문의
nslookup naver.com

# 네트워크 연결 상태 조회
# 일반적으로 ping은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8

# ip와 포트를 이용해, 특정 프로그램에 이용 가능 상태까지 조회
# 일반적으로 telnet이 막혀있거나, 사용하기를 권장하지 않음
telnet IP주소 포트번호
nc -zv IP주소(또는 도메인) 포트번호 # nc -> 넷캣(netcat)

# 원격 접속: 22port
ssh 계정명@도메인주소(또는 ip주소)
# 원격 파일 전송: 22port
scp 전송하고자하는파일 원격지주소