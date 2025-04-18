# Ruby on Rails 공략과정

Ruby on Rails는 웹 애플리케이션 개발을 위한 강력한 프레임워크입니다. 아래는 Ruby on Rails를 학습하고 프로젝트를 진행하기 위한 공략과정입니다.

## 1. 기본 개념 이해

- Ruby 언어 기초 학습
  - 변수, 조건문, 반복문, 클래스, 모듈 등
- MVC 패턴 이해
  - Model, View, Controller의 역할과 구조

## 2. 개발 환경 설정

- Ruby 설치
- Rails 설치
- 데이터베이스 설정 (SQLite, PostgreSQL 등)
- Bundler와 Gem 관리

## 3. Rails 프로젝트 생성

- 새로운 Rails 애플리케이션 생성
  ```bash
  rails new 프로젝트명
  ```
- 디렉토리 구조 이해

## 4. 라우팅과 컨트롤러

- `config/routes.rb` 파일 설정
- 컨트롤러 생성 및 액션 정의
  ```bash
  rails generate controller 컨트롤러명 액션명
  ```

## 5. 모델과 데이터베이스

- 모델 생성 및 마이그레이션
  ```bash
  rails generate model 모델명 필드명:타입
  rails db:migrate
  ```
- Active Record를 사용한 데이터 조작

## 6. 뷰와 레이아웃

- ERB 템플릿을 사용한 뷰 작성
- 레이아웃 파일 설정 (`app/views/layouts/application.html.erb`)

## 7. CRUD 기능 구현

- Create, Read, Update, Delete 기능 구현
- RESTful 라우팅 활용

## 8. 폼과 유효성 검사

- 폼 빌더 사용 (`form_with`)
- 모델 유효성 검사 추가

## 9. Gem 활용

- Devise: 사용자 인증
- Kaminari: 페이지네이션
- CarrierWave: 파일 업로드

## 10. 테스트 작성

- RSpec 또는 Minitest를 사용한 테스트 작성
- 단위 테스트, 통합 테스트

## 11. 배포

- Heroku 또는 AWS를 사용한 배포
- `rails assets:precompile` 명령어로 정적 파일 준비

## 12. 추가 학습

- WebSocket과 ActionCable을 사용한 실시간 기능
- API 개발 및 JSON 응답 처리
- 성능 최적화 및 캐싱

Ruby on Rails는 실습을 통해 배우는 것이 가장 효과적입니다. 간단한 블로그 애플리케이션을 만들어보며 위 과정을 따라가 보세요!
