# 쉘 스크립트 작성 -> 반드시 확장자가 .sh여야 함
touch myscript.sh
nano myscript.sh
echo "hello world"
# user에게 실행 권한 추가
chmod u+x
# 스크립트 실행
./myscript.sh

######## 실습 #########
# 터미널창에 "script pratice start" 문구 출력 -> echo 사용
# 홈 디렉토리에서 mydir이라는 폴더 생성 -> cd로 가서 만들기
# mydir로 이동해서 file1.txt, file2.txt 파일 생성 -> touch로 만들기
# file1.txt에는 hello from file1이라는 문구 입력 -> echo > 사용 (터미널 X, 파일에 입력)
# file2.txt에는 hello from file2라는 문구 입력
# file1.txt 파일을 백업본(copy본)을 생성, 이름은 file1_backup.txt
# file2.txt 파일은 이름을 file2_rename.txt로 변경 -> mv 사용
# 터미널창에 "script pratice end" 문구 출력 -> echo 사용
touch test.sh
echo "script pratice start"
cd
mkdir mydir
cd mydir
touch file1.txt
touch file2.txt
echo "hello from file1" > file1.txt
echo "hello from file2" > file2.txt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
echo "script pratice end"

chmod 764 test.sh # 권한 부여
./test.sh # 쉘 프로그램 실행

# myscript2 생성 후 아래 코드 작성 및 실행
# if문
if [ 1 -gt 2 ]; then # 왼쪽 값이 오른쪽 값보다 크다면 (조건건)
    echo "hello world"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt
if [ -f $file_name ]; then # 현재 디렉토리에 first_file.txt 파일이 있다면(조건)
    echo "$file_name file exists" # 변수 사용시 $ 붙여줘야 함
else
    echo "$file_name file doesn't exists"
fi

# for문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록 조회
for a in * # *에 모든 파일과 디렉토리 목록이 담김김
do
    echo "$a" # 모든 목록을 터미널에 출력
done

# for문에 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1 
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
fc=0
dc=0
for a in *
do  
    if [ -f "$a" ]; then 
        let fc=fc+1
    else    
        let dc=dc+1
    fi
done
echo "file_count is $fc"
echo "dir_count is $dc"