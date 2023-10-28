<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TemperatureConverter</title>
 <style> 
        * { 
            margin: 0; 
            padding: 0; 
            font-family:  
                Verdana, Geneva, Tahoma, sans-serif; 
        } 
  
        .container { 
            width: 100%; 
            height: 100vh; 
             background-color: #cccccc;
            display: flex; 
            flex-direction: column; 
            justify-content: center; 
            align-items: center; 
        } 
  
        .container h1 { 
            color: grey; 
            font-weight: 700; 
            font-size: 25px; 
            text-align: center; 
        } 
  
        .converter-row { 
            margin-top:20px ;
            display: flex; 
            width: 40%; 
            justify-content: space-between; 
            align-items: center; 
            background-color:orange;
            border-radius: 10px; 
            padding: 50px 20px; 
            
        } 
  
        .col { 
            flex-basis: 32%; 
            text-align: center; 
        } 
  
        .col label { 
            font-size: 15px; 
            font-weight: 500; 
            margin-bottom: 10px; 
            color: black; 
        } 
  
        .col input { 
            width: 150px; 
            height: 30px; 
            background: white; 
            border-radius: 5px; 
            text-align: center; 
        } 
    </style> 
</head>
<body>
<div class="container"> 
        <h1>Temperature Converter<br> 
        Using HTML , CSS , Javascript.
            </h1>
        <div class="converter-row">
            <div class="col"> 
                <label><b>Fahrenheit</b></label> 
                <input type="number" 
                       id="fahrenheit"> 
            </div> 
  
            <div class="col"> 
                <label><b>Celsius</b></label> 
                <input type="number" 
                       id="celsius"> 
            </div> 
  
            <div class="col"> 
                <label><b>Kelvin</b></label > 
                <input type="number" 
                       id="kelvin"> 
            </div> 
        </div> 
    </div> 
  
    <script> 
        let celsius =  
            document.getElementById('celsius'); 
        let fahrenheit =  
            document.getElementById('fahrenheit'); 
        let kelvin =  
            document.getElementById('kelvin'); 
        celsius.oninput = function () { 
            let f = (parseFloat(celsius.value) * 9) / 5 + 32; 
            fahrenheit.value = parseFloat(f.toFixed(2)); 
  
            let k = (parseFloat(celsius.value) + 273.15); 
            kelvin.value = parseFloat(k.toFixed(2)); 
        } 
        fahrenheit.oninput = function () { 
            let c = ((parseFloat( 
                fahrenheit.value) - 32) * 5) / 9; 
            celsius.value = parseFloat(c.toFixed(2)); 
  
            let k = (parseFloat( 
                fahrenheit.value) - 32) * 5 / 9 + 273.15; 
            kelvin.value = parseFloat(k.toFixed(2)); 
        } 
        kelvin.oninput = function () { 
            let f = (parseFloat( 
                kelvin.value) - 273.15) * 9 / 5 + 32; 
            fahrenheit.value = parseFloat(f.toFixed(2)); 
  
            let c = (parseFloat(kelvin.value) - 273.15); 
            celsius.value = parseFloat(c.toFixed(2)); 
        } 
    </script> 
</body>
</html>