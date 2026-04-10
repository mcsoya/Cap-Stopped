# 딥러닝 기반 주차공간 안내 시스템 (어플)
<img width="683" height="428" alt="캡디_어플 사진1" src="https://github.com/user-attachments/assets/3b2711ef-bb84-43ca-a7cd-8c0e352a3459" />

<div>
  <h3>📜 배경</h3>  
  <hr>
  
  <ul>
    <li>실내 주차장에서 볼 수 있는 만차등과 같은 시스템은 야외 주차장에서 적용하기 쉽지 않아 교통 혼잡도 증가와 같은 문제를 일으킬 우려가 있다고 생각하였습니다.</li>
    <li>이에 따라, 주차 공간 현황을 안내하는 방법을 안내하는 애플리케이션을 개발하고자 하였습니다.</li>
  </ul>
</div>

<br>
<br>

<div>
  <h3>🔎 프로젝트 내용</h3>
  <hr>

  <div>
    <p>📅 개발일자: 2022.09 ~ 2022.12</p>
    <p>⭐ 인원 수: 5명 (팀 프로젝트)</p>
    <ul>
      <li>AI 개발 : 3명</li>
      <li>애플리케이션 및 DB 개발 : 2명 (본인)</li>
      <li>데이터셋 수집 및 분류 : 3명 (본인)</li>
    </ul>
    <p>🛠️ 관련 기술</p>
    <img src="https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=white">
    <img src="https://img.shields.io/badge/firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=white">
    <img src="https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">
    <img src="https://img.shields.io/badge/yolo-FCC624?style=for-the-badge&logo=yolo&logoColor=black">
  </div>

  <br>

  <div>
    <h4>데이터 수집 단계</h4>
    <p><img width="718" height="478" alt="스크린샷 2026-04-08 191745" src="https://github.com/user-attachments/assets/72a7e485-df9f-45b8-abc0-76cd130972a6"/></p>    
    <ul>
      <li>주변 주차장 촬영 및 다양한 차량의 사진을 통해 데이터 셋을 구성</li>
      <li>roboflow 사이트를 통해 수집한 데이터 셋을 분류</li>
    </ul>
  </div>

  <br>

  <div>
    <h4>주차 여유 공간 판단</h4>
    <p><img width="710" height="225" alt="cap1 checking" src="https://github.com/user-attachments/assets/53344f98-0810-4f70-842f-b1572afbb641" /></p>
    <ul>
      <li>카메라를 통해 촬영된 주차 공간을 와핑(warping)하는 과정을 거쳐 Top-View로 전환한다.</li>
      <li>YOLO를 활용하여 실시간 객체 탐지를 수행하고, 주차 공간의 여유 공간을 구분하여 DB에 저장한다.</li>
    </ul>
  </div>

  <br>

  <div>
    <h4>애플리케이션</h4>
    <p><img width="621" height="471" alt="cap design1" src="https://github.com/user-attachments/assets/2863f515-9ecd-4f4e-b8ae-d61884cc6aee" /></p>
    <ul>
      <li>지도를 통해 주차장을 선택하고 현재 주차 여유 공간 정보를 확인할 수 있다.</li>
    </ul>
  </div>
</div>

<br>
<br>

<div>
  <h3>🔎 문제점 및 해결 방법</h3>
  <hr>

  <ul>
    <li>
      <p>카메라 촬영 각도의 문제</p>
      <ul> 
        <li>특정 차량의 일부가 가려지는 현상으로 인해 주차장의 top-view시점에서 카메라 촬영이 필요</li>
        <li>이미지를 왜곡하는 기술인 와핑(warping)을 사용해 top-view시점으로 전환하여 진행</li>
      </ul>
    </li>
    <li>
      <p>주차 여유 공간을 판단하기 위해 차량의 이동이 필요</p>
      <ul> 
        <li>주차 여유 공간의 구분이 제대로 되는지 확인하기 위해 지속적으로 주차장에 배치된 차량 이동이 필요</li>
        <li>소형의 주차장 세트와 차량 모형을 통해 실험을 진행</li>
      </ul>
    </li>
    
    
  </ul>
</div>
