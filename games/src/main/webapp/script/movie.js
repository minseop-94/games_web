/**
 * 
 */
 //1번 문제
 function parasite(){
	
	//Hint1의 변수설정
	var Hint1 = new Audio();
	Hint1.src = "./moviemp3/parasite_1.mp3";
		
	var btnPlay1 = document.getElementById("btnPlay1");
	var btnPause1 = document.getElementById("btnPause1");
	var btnStop1 = document.getElementById("btnStop1");
		
	btnPlay1.onclick = function () {
		Hint1.play();
	}
		
	btnPause1.onclick = function () {
		Hint1.pause();
	}
		
	btnStop1.onclick = function () {
		Hint1.pause();
		Hint1.currentTime = 0;	//재생시간을 0으로 설정
	}
		
	var Hint2 = new Audio();
	Hint2.src = "./moviemp3/parasite_2.mp3";
		
	var btnPlay2 = document.getElementById("btnPlay2");
	var btnPause2 = document.getElementById("btnPause2");
	var btnStop2 = document.getElementById("btnStop2");
		
	btnPlay2.onclick = function () {
		Hint2.play();
	}
		
	btnPause2.onclick = function () {
		Hint2.pause();
	}
		
	btnStop2.onclick = function () {
		Hint2.pause();
		Hint2.currentTime = 0;
	}
}
 //2번 문제
function extremejob(){
	var Hint1 = new Audio();
	Hint1.src = "./moviemp3/job_1.mp3";
		
	var btnPlay1 = document.getElementById("btnPlay1");
	var btnPause1 = document.getElementById("btnPause1");
	var btnStop1 = document.getElementById("btnStop1");
		
	btnPlay1.onclick = function () {
		Hint1.play();
	}
		
	btnPause1.onclick = function () {
		Hint1.pause();
	}
		
	btnStop1.onclick = function () {
		Hint1.pause();
		Hint1.currentTime = 0;
	}
		
	var Hint2 = new Audio();
	Hint2.src = "./moviemp3/job_2.mp3";
		
	var btnPlay2 = document.getElementById("btnPlay2");
	var btnPause2 = document.getElementById("btnPause2");
	var btnStop2 = document.getElementById("btnStop2");
		
	btnPlay2.onclick = function () {
		Hint2.play();
	}
		
	btnPause2.onclick = function () {
		Hint2.pause();
	}
		
	btnStop2.onclick = function () {
		Hint2.pause();
		Hint2.currentTime = 0;
	}
}

 //3번 문제
function gwansang(){
	var Hint1 = new Audio();
	Hint1.src = "./moviemp3/gwansang_1.mp3";
		
	var btnPlay1 = document.getElementById("btnPlay1");
	var btnPause1 = document.getElementById("btnPause1");
	var btnStop1 = document.getElementById("btnStop1");
		
	btnPlay1.onclick = function () {
		Hint1.play();
	}
		
	btnPause1.onclick = function () {
		Hint1.pause();
	}
		
	btnStop1.onclick = function () {
		Hint1.pause();
		Hint1.currentTime = 0;
	}
		
	var Hint2 = new Audio();
	Hint2.src = "./moviemp3/gwansang_2.mp3";
		
	var btnPlay2 = document.getElementById("btnPlay2");
	var btnPause2 = document.getElementById("btnPause2");
	var btnStop2 = document.getElementById("btnStop2");
		
	btnPlay2.onclick = function () {
		Hint2.play();
	}
		
	btnPause2.onclick = function () {
		Hint2.pause();
	}
		
	btnStop2.onclick = function () {
		Hint2.pause();
		Hint2.currentTime = 0;
	}
}
 //4번 문제
function veteran(){
	var Hint1 = new Audio();
	Hint1.src = "./moviemp3/veteran_1.mp3";
		
	var btnPlay1 = document.getElementById("btnPlay1");
	var btnPause1 = document.getElementById("btnPause1");
	var btnStop1 = document.getElementById("btnStop1");
		
	btnPlay1.onclick = function () {
		Hint1.play();
	}
		
	btnPause1.onclick = function () {
		Hint1.pause();
	}
		
	btnStop1.onclick = function () {
		Hint1.pause();
		Hint1.currentTime = 0;
	}
		
	var Hint2 = new Audio();
	Hint2.src = "./moviemp3/veteran_2.mp3";
		
	var btnPlay2 = document.getElementById("btnPlay2");
	var btnPause2 = document.getElementById("btnPause2");
	var btnStop2 = document.getElementById("btnStop2");
		
	btnPlay2.onclick = function () {
		Hint2.play();
	}
		
	btnPause2.onclick = function () {
		Hint2.pause();
	}
		
	btnStop2.onclick = function () {
		Hint2.pause();
		Hint2.currentTime = 0;
	}
}
 //5번 문제
function assassination(){
	var Hint1 = new Audio();
	Hint1.src = "./moviemp3/assassination_1.mp3";
		
	var btnPlay1 = document.getElementById("btnPlay1");
	var btnPause1 = document.getElementById("btnPause1");
	var btnStop1 = document.getElementById("btnStop1");
		
	btnPlay1.onclick = function () {
		Hint1.play();
	}
		
	btnPause1.onclick = function () {
		Hint1.pause();
	}
		
	btnStop1.onclick = function () {
		Hint1.pause();
		Hint1.currentTime = 0;
	}
		
	var Hint2 = new Audio();
	Hint2.src = "./moviemp3/assassination_2.mp3";
		
	var btnPlay2 = document.getElementById("btnPlay2");
	var btnPause2 = document.getElementById("btnPause2");
	var btnStop2 = document.getElementById("btnStop2");
		
	btnPlay2.onclick = function () {
		Hint2.play();
	}
		
	btnPause2.onclick = function () {
		Hint2.pause();
	}
		
	btnStop2.onclick = function () {
		Hint2.pause();
		Hint2.currentTime = 0;
	}
}

 
 function confirm1(){

	if(document.form.asn.value.length == 0){
		alert("정답을 입력해주세요.")
		form.asn.focus();
		return false;
	}else if(document.form.asn.value == "기생충" || document.form.asn.value == "parasite"){
		alert("정답입니다!")
		form.asn.focus();
		return true;
	}else{
		alert("오답입니다. 다시 한번 도전해보세요!")
		return false;
	}
}

function confirm2(){

	if(document.form.asn.value.length == 0){
		alert("정답을 입력해주세요.")
		form.asn.focus();
		return false;
	}else if(document.form.asn.value == "극한직업"){
		alert("정답입니다!")
		form.asn.focus();
		return true;
	}else{
		alert("오답입니다. 다시 한번 도전해보세요!")
		return false;
	}
}

function confirm3(){

	if(document.form.asn.value.length == 0){
		alert("정답을 입력해주세요.")
		form.asn.focus();
		return false;
	}else if(document.form.asn.value == "관상"){
		alert("정답입니다!")
		form.asn.focus();
		return true;
	}else{
		alert("오답입니다. 다시 한번 도전해보세요!")
		return false;
	}
}

function confirm4(){

	if(document.form.asn.value.length == 0){
		alert("정답을 입력해주세요.")
		form.asn.focus();
		return false;
	}else if(document.form.asn.value == "베테랑"){
		alert("정답입니다!")
		form.asn.focus();
		return true;
	}else{
		alert("오답입니다. 다시 한번 도전해보세요!")
		return false;
	}
}

function confirm5(){

	if(document.form.asn.value.length == 0){
		alert("정답을 입력해주세요.")
		form.asn.focus();
		return false;
	}else if(document.form.asn.value == "암살"){
		alert("정답입니다!")
		form.asn.focus();
		return true;
	}else{
		alert("오답입니다. 다시 한번 도전해보세요!")
		return false;
	}
}

