<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TeamPage</title>
    <link rel="stylesheet" href="./assest/css/style.css" />
    <script src="./jquery.js"></script>
    <script>
      $(document).ready(function(){
        $("NewTeam_button").click(function(){
          
        })
        $("RandomTeam_button").click(function(){
          
        })
      })
      
    </script>
  </head>
  <body>
    <div class="main">
      <div class="imgColumn">
        <img class="logoImg" src="img/logo.jpg" />
        <div class="gradient"></div>
      </div>
      <div class="firstColumn">
        <div class="FirstRow">
          <div class="TeamConstruct" onclick="">
            <span></span>${sessionScope.Classinfo[0]}<br/>
            <span>- description</span>
          </div>
          <div class="TeamConstruct">
            <span>Team02</span><br />
            <span>- description</span>
          </div>
          <div class="TeamConstruct">
            <span>Team03</span><br />
            <span>- description</span>
          </div>
          <div class="TeamConstruct">
            <span>Team04</span><br />
            <span>- description</span>
          </div>
          <div class="TeamConstruct">
            <span>Team05</span><br />
            <span>- description</span>
          </div>
        </div>
        <div class="TeamPageButton">
          <form method="get" action="">
            <input
              class="RoundInput"
              type="text"
              placeholder="이름을 입력해 주세요..."
              name="student_name"
              value=""
            />
            <button class= "SearchIcon"value="">
              <i class="fa-solid fa-magnifying-glass fa-lg"></i>
            </button>
          </form>
        </div>
        <div class="SecondRow">
          <div class="introduceTable">
            <div class="introduceBox">
              <div class="introduceBox__name">2020112049 박준규</div>
              <div class="introduceBox__content">자기소개</div>
            </div>
            <div class="introduceBox">
              <div class="introduceBox__name">2020112062 이태환</div>
              <div class="introduceBox__content">자기소개</div>
            </div>
            <div class="introduceBox">
              <div class="introduceBox__name">2022111993 진명훈</div>
              <div class="introduceBox__content">자기소개</div>
            </div>
            <div class="introduceBox">
              <div class="introduceBox__name"></div>
              <div class="introduceBox__content"></div>
            </div>
            <div class="introduceBox">
              <div class="introduceBox__name"></div>
              <div class="introduceBox__content"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="secondColumn">
        <div class="buttonBox">
          <button class="NewTeam_button">새로운 팀 만들기</button>
          <button class="RandomTeam_button">랜덤 팀 만들기</button>
        </div>
      </div>
    </div>
    <script src="./assest/js/TeamPage.js"></script>
    <script
      src="https://kit.fontawesome.com/cacb8915e2.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
    