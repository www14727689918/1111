window.onload = function() {
  var oIco = document.getElementById("ico");
  var aBtn = oIco.getElementsByTagName("a");
  var oSlide = document.getElementById("slide");
  var oUl = oSlide.getElementsByTagName("ul");
  var aLi = oUl[0].getElementsByTagName("li");

  var baseWidth = aLi[0].offsetWidth;
  //alert(baseWidth);
  oUl[0].style.width = baseWidth * aLi.length + "px";
  var iNow = 0;
  for(var i=0;i<aBtn.length;i++) {
    aBtn[i].index = i;
    aBtn[i].onclick = function() {
      //alert(this.index);
      //alert(oUl[0].style.left);
      move(this.index);
      //aIco[this.index].className = "active";
    }
  }

  var curIndex = 0;
  var timeInterval = 2000;
  setInterval(change,timeInterval);
  function change() {
    if(curIndex == aBtn.length) {
      curIndex =0;
    } else {
      move(curIndex);
      curIndex += 1;
    }
  }
  function move(index) {
    //document.title = index;
    if(index>aLi.length-1) {
      index = 0;
      iNow = index;
    }
    if(index<0) {
      index = aLi.length - 1;
      iNow = index;
    }
    for(var n=0;n<aBtn.length;n++) {
      aBtn[n].className = "";
    }
    aBtn[index].className = "active";
    oUl[0].style.left = -index * baseWidth + "px";
    //buffer(oUl[0],{
    // left: -index * baseWidth
    // },8)
  }
};
//关于背景音乐
var ctrl=document.querySelector('.ctrl');
var ctrlImg = document.querySelector('.ctrl img');
ctrl.onclick = function(e){
  e.preventDefault();
  if(bg.paused){  //当前处于暂停状态
    bg.play();  //播放视频
    ctrlImg.src = 'images/pause.jpg';
  }else {   //当前处于播放状态
    bg.pause(); //暂停播放
    ctrlImg.src = 'images/play.jpg';
  }
};

$.ajax({
  type:'GET',
  url:'/msg',
  success:function(msgList){
    console.log('接收到服务器返回的留言列表');
    console.log(msgList);
    var html='';
    for(var i=0;i<msgList.length;i++){
      var m=msgList[i];
      html +=`
      <li>
        <img src="img/bai_00.png"/>
        <div class="msg">
          <img src="img/${m.pic}"/>
          <p>
            用户名：${m.mname}
            <br/>
            <span style="display: inline-block; margin-top:10px;">时间：${m.pubtime}</span>
          </p>
          <div>
            评论内容：${m.content}
          </div>
        </div>
      </li>
      `;
    }
    $('.msgUl').html(html);
  }
});