<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

	 footer{
      position: fixed;
      bottom: 0;
      left: 0;
      height: 500px;
      width:100%;
      line-height:80px;
   }
	

	#title_name{
		position: absolute;
		top: 20%;
		left:40%;
		font-family:Regular;
		font-size:180px;    
	}
	
	#title_name2{
		position: absolute;
		top: 28%;
		left:20%;
		font-family:Regular;
		font-size:180px;    
	}
	
	
	#form{
		position: absolute;
		top: 35%;
		width:100%;
	}
	
	#button{
		background-color:rgb(147,148,177);
		border-radius:100px;
		font-family:Regular;
		font-weight:bolder;
		border: none;
	}
	
	table{
   	position:relative;
   	border-radius:30px;
   }
	
/*  #user_gym{
display:none
} */
/* #user_gym{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   padding: 50px 50px 50px 50px;
   width:950px;
   height:200px;
   font-size:60px;
   font-family:Regular;
   }
   #user_gym:focus{
   position:relative;
   border-radius:40px;
   font-weight:bolder;
   appearance:none;
   padding: 50px 50px 50px 50px;
   width:950px;
   height:200px;
   font-size:60px;
   font-family:Regular;
   } */
   
/*    #b{
   position:relative;
   width:150px;
   height:50px;
   font-size:30px;
   } */
   
   input{
   border-radius:40px;
   font-weight:bolder;
   padding: 50px 50px 50px 50px;

   }
   
   @font-face{
   	font-family:Regular;
   	src:url('resources/font/FrancoisOne-Regular.ttf');
   }
   
   
	option{
	font-weight:bolder;
	width:500px;
   	height:100px;
	}
	
	#modal_btn{
	position:relative;
	}
	
	#option_click{
	position:absolute;
	top:12%; 
	right:8%; 
	transform: rotate(90deg);
	}
	
.select{
    position: relative;
    padding: 5px 10px;
    margin-left: 113px;
    border-radius: 60px;
    /* border:1px solid salmon; */
    background-color: white;
    background-image: url("https://img.icons8.com/material-rounded/24/000000/expand-arrow.png");
    background-repeat: no-repeat;
    /* background-position: 96% center; */
    cursor: pointer;
    padding-left: 35px;
    padding-top: 15px;
}

/* ?????? ?????? ????????? */
.select ul{
    position: absolute;
    top: 100px;
    left: 0;
    width: 100%;
    border:1px solid salmon;
    border-radius: 5px;
    background-color: white;
    cursor: pointer;
    z-index: 2;
}
.select ul li{	/* ??????????????? */
    padding: 30px;
    height: 100px;
}
.select ul li:first-child{
    background: white;
}
.select ul li:nth-child(2){
    background: white;
}
.select ul li:nth-child(3){
    background: white;
}
.select ul li:nth-child(4){
    background: white;
}
.select ul li:nth-child(5){
    background: white;
}
.select ul li:hover{
    background-color: white;
}
/* ????????? ????????? */
i{
    vertical-align: bottom;
    margin-right: 5px;
}
i img{
    width: 60px;
}	

.hide{
height: 300px;
display: none;
}

#exercise{
font-family:Regular;
width: 850px;
height: 100px;
font-weight: bolder;
font-size: 60px;
padding: 50px;
border: 1px solid black;
text-align: left;
}

ul{
   list-style:none;
   padding-left:0px;
   }

#choice{
padding: 30px;
height: 100px;
font-family: Regular;
font-weight: bolder;
position: absolute;
font-size: 60px;
top: 182px;
left: 120px;
}
</style>


</head>

<body>
	
<div id="title" style="width:100%; height:500px;">
	<a id="title_name"> The </a>
	<a id="title_name2"> Ai Fitness </a>

</div>
	

<body>


	 <form action="/web/loginInsert.do" method ="post" id="form" align="center">
	 
	 <div style="width:100%; height:150px;"></div>
	 

		<div class="middle1">
		

	<div>

		
						<div class="select" data-role="selectBox" name="exercise" id="exercise" name="user_gym">
							<span date-value="optValue" class="selected-option">
								<!-- ????????? ?????? ?????? ???????????? ?????? -->
							</span>
							<!-- ?????? ?????? -->
							<ul class="hide" id="wrap">
								<li class ="?????????" value ="?????????">??????</li>
								<li class ="????????????" value ="????????????">?????????</li>
								<li class ="????????????" value ="????????????">????????????</li>									
							</ul>
						</div>
						<div id="choice">????????????</div>
				<!-- <img id="option_click" src="resources/img/?????????2.png" width="300px" height="300px"> -->
	</div>
	
	<div style="width:100%; height:30px;"></div>
	
	<div>
      <input style="width:850px; height:100px; font-weight:bolder; font-size:60px;" type="text" name="user_id" id="user_id" placeholder="????????????">
    </div>
      
         <div style="width:100%; height:50px;"></div>
         
     
          <input font-family="Regular" id="button" style="width:950px; height:200px;font-size:80px;" class="button" type = "submit" value ="?????????">
 
      	</div>	
      	
      </form>

      <footer align="center">
      
       <div style="width:100%; height:110px;"></div>
      
      <table align="center" style="font-size:40px;color:rgb(143,143,143);">
      	<tr>
      		<td><a> @ 2023 By Riley Olson.</a></td>
      	</tr>
      	<tr>
      		<td><a> Proudly created by Wix.com</a></td>
      	</tr>
      	<tr>
      		<td><a> ?????? : ?????? ????????? ????????? ?????????</a></td>
      	</tr>
      </table>
      </footer>

	<script type="text/javascript"> /* ????????? */
const body = document.querySelector('body');
const select = document.querySelector(`[data-role="selectBox"]`);
const values = select.querySelector(`[date-value="optValue"]`);
const option = select.querySelector('ul');
const opts = option.querySelectorAll('li');
const choice = document.querySelector('#choice');

/* ??????????????? ?????? ??? ?????? ?????????, ????????? */
function selects(e){
    e.stopPropagation();
    option.setAttribute('style',`top:${select.offsetHeight}px`)
    if(option.classList.contains('hide')){
        option.classList.remove('hide');
        option.classList.add('show');
    }else{
        option.classList.add('hide');
        option.classList.remove('show');
    }
    selectOpt();
    choice.classList.add('hide');
}

/* ???????????? */
function selectOpt(){
    opts.forEach(opt=>{
        const innerValue = opt.innerHTML;
        function changeValue(){
        	var html = innerValue+"<input type = 'hidden' value = '"+innerValue+"' name ='user_gym'></input>"
        	values.innerHTML = html;
        }
        opt.addEventListener('click',changeValue)
    });
    
}

/* ????????? div????????? */


/* ????????? ??? ????????? ????????? ?????? ?????? ?????? */
function selectFirst(){
    const firstValue = opts[0].innerHTML;
    values.innerHTML = `${firstValue}`
}



/* ???????????? ??????(=??????) ?????? ??? ?????? ?????? */
function hideSelect(){
    if(option.classList.contains('show')){
        option.classList.add('hide');
        option.classList.remove('show');
    }
}

selectFirst();
select.addEventListener('click',selects);
body.addEventListener('click',hideSelect);


</script>	
</body>
</html>