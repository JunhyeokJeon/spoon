# README

#### 프로그래밍 과정
- 외국인 강의
한국어 자막이 없는 상태의 생생한 영어강의라 조금 당황했지만, 깊이 있게 이해하기 보단 강사의 전체적인 흐름에 맞추어 큰 기능들을 정리하고 배워나간다는 느낌으로 쭉 수강하였다.

#### 새로 안 내용
1. image uploader
acts_as_votable 이란 루비 Gem을 이용하여 간단하게 이미지를 업로드 할 수 있게 하는 기능을 접했다. 우리 팀의 프로젝트인 spoon에서도 혼자 밥먹는 것을 인증하기 위해 사진 업로드 기능이 필요하던 참에 궁금증을 해결 할 수 있었다. 
2. devise Gem
정확하게 이해한 기능은 아니지만, devise를 이용하여 User 모델을 생성하였고, pin 모델과 손쉽게 연동하여 Authenticate가 활성화 되어 있을 때 좋아요를 표시 할 수 있거나 글을 작성할 수 있게하는 좋은 기능을 구현할 수 있었다.

#### 오류내용
- 이미지 업로드 기능 설계 중 imagepicker? 오류
50분 동안 삽질하여 패닉상태에 빠졌었는데

`
sudo apt-get update 
sudo apt-get install imagemagick
`

위의 두 줄로 해결하였다.
