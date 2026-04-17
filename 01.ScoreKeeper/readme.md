# 01.ScoreKeeper 정리

## 1. 핵심 뷰 컴퓨넌트
### 1) ForEach - 반복 생성기
- **문법**: `ForEach(데이터, id: 식별값) {항목 in 뷰 }`

### 2) TextField - 텍스트 입력창
- **바인딩($)**: 사용자가 글자를 치는 순간 원본 데이터 즉시 수정
- **문법**: `TextField("안내문구", text: $데이터)`

### 3) Button - 액션 실행기
- **문법**: `Button("라벨") { 실행할 코드 }`

### 4) Stepper - 수량 조절기
- **문법**: `Stepper("수량 선택", value: $value, in: 0...10)`

---

## 2. 레이아웃 시스템

### VStack
- **예시**: `VStack(alignment: .leading, spacing: 20) { ... }`

### 🏁 Grid - 격자 모양의 정교한 배치
VStack보다 더 정교한 '표(Table)' 형태의 레이아웃을 만들 때 사용합니다.

- **초기화**: `Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 10)`
- **구조**:
    - `GridRow`: 그리드 내부의 한 행을 정의합니다.
    - `.gridCellColumns(n)`: 하나의 뷰가 n개의 열을 차지하도록 병합합니다.



## HIG 포인트
### Stepper 사용 시 주의사항
1) **범위 확인**: 범위가 100번 넘는 경우 -> Slider나 Text Field 활용'
2) **정보 제공**: 숫자가 무엇을 의미하는지 즉각 알 수 있도록 텍스트 제공 ex) 수량, 온도, 세트 수
3) **기본값 설정**: 선택할 법한 값을 기본값으로 설정


<img width="307" height="619" alt="image" src="https://github.com/user-attachments/assets/2b339ff6-03d8-42c4-9bb2-5c133a5f475d" />

<img width="305" height="614" alt="image" src="https://github.com/user-attachments/assets/49617905-5888-4db7-9a55-13e4111ac550" />





