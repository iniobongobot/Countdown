<!DOCTYPE html>
<html>
<head>
	<title>Maureen's brithday</title>
</head>
<body>
	<main>
		<h1>
			Fayvour's Birthday
		</h1>
		<p id="demo">
			
		</p>
	</main>
</body>
</html>
<script type="text/javascript">
	var deadline = new Date("April 9, 2022 00:00:01").getTime(); 
var x = setInterval(function() { 
var now = new Date().getTime(); 
var t = deadline - now; 
var days = Math.floor(t / (1000 * 60 * 60 * 24)); 
var hours = Math.floor((t%(1000 * 60 * 60 * 24))/(1000 * 60 * 60)); 
var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60)); 
var seconds = Math.floor((t % (1000 * 60)) / 1000); 
document.getElementById("demo").innerHTML ="COUNTDOWN: </br>"+ days + "Days "  
+ hours + "Hours " + minutes + "Minutes " + seconds + "Seconds "; 
    if (t < 0) { 
        clearInterval(x); 
        document.getElementById("demo").innerHTML = "HAPPY BIRTHDAY Favour"; 
    } 
}, 1000);

</script>
<style type="text/css">
	*{box-sizing: border-box;}
	body{
		background: linear-gradient(45deg, #1118, #fff8, #3338), url('Fayvour.jpeg');
		padding: 0px;
		margin: 0px;
		background-repeat: repeat;
		
	}
	main{
		margin:20% 20%;
		width: 60%;
		height:20%;
		background-color: #3339;
		padding: 10%;
		border-radius: 50px;
		text-align: center;
		color: green;
		animation-name: colo;
		animation-duration: 10s;
		animation-iteration-count: infinite;
		animation-fill-mode: backwards;
		transition: 2s ease;
	}
	@keyframes colo{
		0%{color:olive;}
		10%{color:darkorange;}
		20%{color:lime;}
		30%{color:navy;}
		40%{color:fuchsia;}
		50%{color:aqua;}
		60%{color:yellow;}
		70%{color:maroon;}
		80%{color:grey;}
		90%{color:teal;}
		100%{color:cyan;}
	}
	h1{
		font-family: helvetica;
		font-size: 5rem;
	}
	p{
		font-size: 4rem;
		font-family: courier;
		font-weight: bolder;
	}
</style>