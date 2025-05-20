# 사용자 추가 및 비밀번호 지정
sudo useradd newuser1
sudo passwd newuser1

# 사용자 변경: 변경하고자 하는 계정의 비밀번호
# sudo의 경우, 현재 사용자의 비밀번호 -> 2가지 헷갈리지 않게 주의!
su - newuser1 

# chmod는 권한 부여: r(4), w(2), x(1), u(소유자)g(그룹)o(그 외)로 구성
chmod 644 파일명 # 644 -> rw(4+2) r(4) r(4)
chmod u+x 파일명 #실행(x) 권한 추가
chmod u-x 파일명 #실행(x) 권한 삭제
chmod u=r 파일명 #user 권한을 r로 지정 

# 소유자: 그룹 변경
chown newuser1:newuser1 파일명