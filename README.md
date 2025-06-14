## DokiDoki Study's Dockerize

### sub-module
#### backend
 - git submodule add https://github.com/DokiDokiStudy/practice-back backend
#### frontend
 - git submodule add https://github.com/DokiDokiStudy/practice-front frontend

#### RUN docker-compose : 권한 부여
```bash
chmod +x run-dev.sh
```

#### Path : dokidoki-dockerize 에서 실행
```bash
sh run-dev.sh
```

#### Git 링크
https://github.com/DokiDokiStudy/practice_back


### 2025-06-05 정리
1. 이메일 중복 체크 말고도 이메일 찾기 시 사용하는 별도의 API 필요하지 않을까요?
    - 별도 API는 나중에 이메일 또는 기타 등등을 해당 이메일로 전송하는 API로 고도화 가능할 것으로 보여서 그렇습니다.
    - 현재는 이메일 중복 체크 가지고 이메일 찾기에 사용 중

2. 아이디(닉네임) 중복 체크 API 필요
3. 로그인 성공 시 사용자 정보 자세한 내용 필요합니다.
    - role은 있어야 할 것 같아요!

4. 일단 아이디 찾기 대신 이메일 찾기 API만 있어서 이메일 찾기로 변경해놨는데 이 부분은 다시 한 번 얘기해보시죠

5. 비밀번호 찾기 - 암호화된 비밀번호 응답하면 안됩니다..!
    - 1) password 평문 반환
    - 2) 추후 리팩토링 사항
        - 임시 password 및 인증 토큰 이메일로 반환

6. 회원 정보 수정은 있는데 회원 정보 조회가 없어요 마이 페이지 제작하려면 필요하다고 생각합니다!
    - 비밀번호는 따로 수정 API 만드시는거쥬?



### 2025-06-15 정리
1. 로그인 API에서 이메일을 반환하지 않고 있어서 이메일로 아이디 표기 불가능

2. category 구분 어떻게 해야 하나요?
    EX) Docker(대) - 1장(중) - 1.1장(소)
    쉽게 하는 방법은 (대)를 구분하는 기준을 groupId라는 컬럼같을 걸 추가해서 카테고리분류가 가능하면 좋겠네요.
    저희는 상세한 카테고리분류는 필요없으니 컬럼레벨에서 해소할 수 있겠습니다.

3. 게시글 가져올 때 댓글, 좋아요 카운트도 한번에 조회할 수 있는 API 없을까요?

4. 좋아요 눌러서 좋아요 id가 생성되면 반환되어야 함
    해당 id가지고 유저 액션 연속성 유지 가능