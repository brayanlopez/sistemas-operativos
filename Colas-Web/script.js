var contenido=[
	{año:1948,texto:"askdjalkda asdjkasd asjdklasd jaksld "},
	{año:1948,texto:"askdjalkda asdjkasd asjdklasd jaksld asdasd"}]


for (var i = 0; i < contenido.length; i++) {
	var $div =$("<div>");
	$div.css("boder","1px solid black");
	$div.html(contenido[i].año+"<br/>" + contenido[i].texto);
	$("body").append($div);
}


//console.log(body);