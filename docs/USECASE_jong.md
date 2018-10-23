

- 유스케이스명
   - 출금 내역 조회하기
- 액터
   - 가이드
- 시작 조건
   - 로그인이 되어 있다
   - 가이드 회원이다
- 종료 조건
   - 기간별 본인의 출금 이력을 확인한다
- 성공 시나리오
   - 가이드 : 마이페이지 > 수익관리 > 출금내역 버튼을 클릭한다
   - 시스템 : 최신순으로 기간,가이드 투어,금액을 출력한다
- 예외 시나리오
   1. 출금 내역이 없는 경우
   - 시스템 : "출금 내역이 없습니다"는 메시지를 출력한다
   
   2. 출금 내역이 너무 많은 경우
   - 시스템 : 정렬한 순서 대로 5개씩  리스트로 출력한다
   
   
- 유스케이스명
   - 후기사진 올리기
- 액터
   - 가이드
- 시작 조건
   - 로그인이 되어 있다
   - 가이드 회원이다
   - 지나간 여정 목록이 있다
- 종료 조건
   - 후기 사진이 등록되었다.
- 성공 시나리오
   - 가이드 : 마이페이지 > 내 활동 > 지나간 여정 > 후기 사진을 올릴 여정 항목에서 원하는 날자를 선택한다
   - 시스템 : 해당하는 여정과 날짜에 대한 사진 업로드 창을 출력한다
   - 가이드 : 사진 추가 버튼을 통하여 사진을 업로드 한다
   - 시스템 : 사진이 정상 등록 되었다는 메시지 출력 후, 해당하는 여정과 날짜에 대한 사진 목록 창으로 이동한다
- 예외 시나리오
   1. 정해놓은 사진 용량 크기보다 큰 사진을 업로드 할 경우
   - 시스템 : "사진의 용량이 너무 크다"는 메시지 출력 후 다시 업로드 창으로 이동한다
   
   2. 업로드시 사진 갯수 제한이 초과하는 경우
   - 시스템 : "사진업로드는 최대 30개 까지입니다" 라는 메시지 출력 후 다시 업로드 창으로 이동한다
   
   3. 사진 보관 기관인 15일이 지난 경우
   - 시스템 : "사진 업로드후 15일이 지났습니다" 라는 메시지를 출력한다
   
   
- 유스케이스명
   - 후기사진 조회하기
- 액터
   - 이용자
- 시작 조건
   - 로그인이 되어 있다
   - 지나간 여정 목록이 있다
- 종료 조건
   - 자신의 지나간 여정 목록의 후기 사진을 조회한다
- 성공 시나리오
   - 이용자 : 마이페이지 > 내 활동 > 지나간 여정 > 사진 보기 버튼을 클릭한다
   - 시스템 : 해당하는 여정과 날짜에 대한 사진 목록 창을 출력한다
- 예외 시나리오
   1. 사진이 업로드 되지 않았을 경우
   - 시스템 : 해당하는 여정과 날짜에 대한 사진 목록 창에서 "아직 업로드된 사진이 없습니다" 라는 메시지를 출력한다
   
   2. 사진 보관 기관인 15일이 지난 경우
   - 시스템 : 해당하는 여정과 날짜에 대한 사진 목록 창에서 "사진 업로드후 15일이 지났습니다" 라는 메시지를 출력한다
   
   
   
- 유스케이스명
   - 후기사진 다운로드하기
- 액터
   - 이용자
- 시작 조건
   - 로그인이 되어 있다
   - 지나간 여정 목록이 있다
   - 지나간 여정 상세정보에서 업로드된 사진이 있다 
- 종료 조건
   - 자신의 지나간 여정 목록의 후기 사진을 다운로드한다
- 성공 시나리오
   - 이용자 : 마이페이지 > 내 활동 > 지나간 여정 > 사진 보기 > 해당 사진 다운로드 버튼을 클릭한다
   - 시스템 : 해당 사용자에게 해당 사진을 전송한다
- 예외 시나리오
   1. 사진 보관 기관인 15일이 지난 경우
   - 시스템 : "사진 업로드후 15일이 지났습니다" 라는 메시지를 출력한다.
   
   
   

- 유스케이스명
   - 코스 사진 모아보기
- 액터
   - 이용자
- 시작 조건
   - 없음 
- 종료 조건
   - 해당하는 사진을 조회한다
- 성공 시나리오
   - 이용자 : 페이지 상세보기 > 코스 소개 목록에서 원하는 사진을 클릭한다
   - 시스템 : 해당 코스의 사진 리스트를 출력한다
- 예외 시나리오
   1. 사진이 없는 경우 
   - 시스템 : 사진 목록을 출력하지 않는다

   
- 유스케이스명
   - 키워드 가이드 검색하기
- 액터
   - 이용자
- 시작 조건
   - 없음 
- 종료 조건
   - 검색어에 부합하는 가이드 목록 확인한다
- 성공 시나리오
   - 이용자 : 모든 페이지 > 검색 바에 원하는 키워드를 입력한다
   - 시스템 : 검색어에 부합하는 가이드 목록을 날짜순으로 리스트를 출력 한다
- 예외 시나리오
   1. 해당 검색어에 부합하는 목록이 없을 경우
   - 시스템 : "해당하는 가이드 여정이 없습니다" 라는 문구를 출력한다
   
   