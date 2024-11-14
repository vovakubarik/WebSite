﻿<%@LANGUAGE="JAVASCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Документ без названия</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<style type="text/css">
<!--
body {
	font: 100%/1.4 Verdana, Arial, Helvetica, sans-serif;
	background-color: #000000;
	margin: 0;
	padding: 0;
	color: #000;
}

/* ~~ Селекторы элементов/тегов ~~ */
ul, ol, dl { /* Из-за различий между браузерами рекомендуется обнулять поля в списках. Для согласованности можно указать нужные величины либо здесь, либо в элементах списка (LI, DT, DD), которые они содержат. Помните, что сделанное здесь последовательно включается в список .nav, если только не будет прописан более конкретный селектор. */
	padding: 0;
	margin: 0;
}
h1, h2, h3, h4, h5, h6, p {
	margin-top: 0;	 /* удаление верхнего поля позволяет обойти проблему выхода полей за границы содержащего их контейнера DIV. Оставшееся нижнее поле отделит его от любых последующих элементов. */
	padding-right: 15px;
	padding-left: 15px; /* добавление боковых полей к элементам внутри контейнеров DIV, а не к самим контейнерам избавляет от необходимости расчетов рамочной модели. В качестве альтернативы можно использовать вложенный контейнер DIV с боковыми полями. */
	color: #FFF;
}
a img { /* этот селектор убирает стандартную синюю рамку, которая появляется у изображений в некоторых браузерах, если вокруг изображения есть ссылка */
	border: none;
}

/* ~~ Оформление ссылок на вашем сайте должно оставаться в этом порядке, включая группу селекторов, создающих эффект наведения. ~~ */
a:link {
	color: #FFFFFF;
	text-decoration: underline; /* если только ссылки не должны выглядеть исключительно своеобразно, то для быстрого зрительного распознавания рекомендуется использовать подчеркивание */
}
a:visited {
	color: #FFFFFF;
	text-decoration: underline;
}
a:hover, a:active, a:focus { /* эта группа селекторов обеспечивает пользователю, работающему с клавиатурой, такие же возможности наведения, как и при использовании мыши. */
	text-decoration: none;
	color: #FFFFFF;
}

/* ~~ этот контейнер окружает все остальные контейнеры DIV, задавая их ширину на процентной основе ~~ */
.container {
	width: 80%;
	max-width: 1260px;/* желательно задать максимальную ширину, чтобы макет не стал слишком широким на большом экране. Это повышает удобство чтения строк. В IE6 это объявление не соблюдается. */
	min-width: 780px;/* желательно задать минимальную ширину, чтобы макет не стал слишком узким. Это повышает удобство чтения строк в боковых столбцах. В IE6 это объявление не соблюдается. */
	background-color: #000;
	margin: 0 auto; /* автоматическое задание величин по бокам в совокупности с шириной центрирует макет. Это необязательно, если ширина контейнера составляет 100 %. */
}

/* ~~ верхнему колонтитулу не задана ширина. Он растянется на всю ширину макета. Он содержит заполнитель для изображения, который должен быть заменен логотипом по ссылке ~~ */
.header {
	background-color: #000000;
}

/* ~~ Столбцы для макета. ~~ 

1) Поля размещены только вверху и/или внизу DIV. Элементы в этих DIV имеют боковые поля. Это избавляет пользователя от необходимости расчетов рамочной модели. Помните, что при добавлении боковых полей или границы к самому DIV их ширина будет добавлена к задаваемой ширине, что образует "полную" ширину. Кроме того, можно удалить поля элемента в DIV и поместить внутри него второй DIV без ширины и с необходимыми по проекту полями.

2) Столбцы не снабжаются полями, поскольку все они обтекающие. Если нужно добавить поля, то  желательно не с той стороны, с которой обтекается столбец (например, правое поле у div, настроенного на обтекание справа).  Часто вместо этого можно применить padding. В случаях, когда это правило приходится нарушить, следует добавить к правилу div объявление "display:inline", чтобы исправить ошибку с удвоением полей в некоторых версиях Internet Explorer. 

3) Поскольку классы можно использовать в документе многократно (а к элементу можно применять несколько классов), то столбцам вместо идентификаторов назначены имена классов. Например, два DIV с боковыми панелями могут при необходимости стыковаться. По желанию имена можно легко заменить на идентификаторы при условии, что они используются по одному на документ.

4) Если вы предпочитаете, чтобы панель навигации была справа, а не слева, просто установите обтекание столбцов в противоположном направлении (все справа, а не слева), они выстроятся в обратном порядке. Перемещать DIV в исходном коде HTML-документа не нужно.

*/
.sidebar1 {
	float: left;
	width: 30%;
	background-color: #000000;
	padding-bottom: 10px;
}
.content {
	padding: 10px 0;
	width: 50%;
	float: left;
}
.sidebar2 {
	float: left;
	width: 20%;
	background-color: #000000;
	padding: 10px 0;
}

/* ~~ Этот сгруппированный селектор выдает списки в пространстве .content ~~ */
.content ul, .content ol { 
	padding: 0 15px 15px 40px; /* это поле зеркально повторяет правое поле в правиле для заголовков и параграфов выше. Внизу поле помещено как граница между элементами списков, а слева — как отступ. Поля можно настраивать по желанию. */
}

/* ~~ Стили списка навигации (можно убрать, если решено использовать готовое подменю, например Spry) ~~ */
ul.nav {
	list-style: none; /* удаляет маркер списка */
	border-top: 1px solid #666; /* создает верхнюю границу ссылок — все остальные размещаются с использованием нижней границы в LI */
	margin-bottom: 15px; /* создает пространство между навигацией по содержимому ниже */
	color: #FFF;
}
ul.nav li {
	border-bottom: 1px solid #666; /* разделяет кнопки */
}
ul.nav a, ul.nav a:visited { /* группировка этих селекторов гарантирует, что ссылки будут выглядеть как кнопки даже после того, как пользователь перейдет по ним */
	padding: 5px 5px 5px 15px;
	display: block; /* наделяет ссылку свойствами блока, из-за чего она заполняет весь содержащий ее элемент LI. При этом вся область реагирует на щелчок мышью. */
	text-decoration: none;
	background-color: #000000;
	color: #FFF;
}
ul.nav a:hover, ul.nav a:active, ul.nav a:focus { /* изменяет цвет текста и фона при навигации с помощью клавиатуры и мыши */
	background-color: #000000;
	color: #FFF;
}

/* ~~ Нижний колонтитул ~~ */
.footer {
	padding: 10px 0;
	background-color: #000000;
	position: relative;/* IE6 получает hasLayout для правильной очистки */
	clear: both; /* это свойство очистки заставляет .container видеть место окончания столбцов и включать их */
}

/* ~~прочие классы float/clear~~ */
.fltrt {  /* этот класс можно использовать для обтекания элемента справа на странице. Обтекаемый элемент должен предшествовать элементу, с которым он должен находиться рядом на странице. */
	float: right;
	margin-left: 8px;
}
.fltlft { /* этот класс можно использовать для обтекания элемента слева на странице. Обтекаемый элемент должен предшествовать элементу, с которым он должен находиться рядом на странице. */
	float: left;
	margin-right: 8px;
}
.clearfloat { /* этот класс можно поместить в теге <br /> или в пустом блоке DIV в качестве конечного элемента, следующего за последним обтекаемым DIV (внутри #container), если .#footer удален или извлечен из #container */
	clear:both;
	height:0;
	font-size: 1px;
	line-height: 0px;
}
-->
</style><!--[if lte IE 7]>
<style>
.content { margin-right: -1px; } /* это отрицательное поле в 1 пиксел можно поместить в любом столбце данного макета с таким же корректирующим эффектом. */
ul.nav a { zoom: 1; }  /* свойство масштабирования предоставляет IE триггер hasLayout, необходимый для удаления лишнего пустого пространства между ссылками */
</style>
<![endif]--></head>

<body>

<div class="container">
  <div class="header"><a href="#"><img src="" alt="Место для логотипа" name="Insert_logo" width="30%" height="90" id="Insert_logo" style="background-color: #000000; display: block;" /></a> 
    <!-- end .header --></div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="#">Первая ссылка</a></li>
      <li><a href="#">Вторая ссылка</a></li>
      <li><a href="#">Третья ссылка</a></li>
      <li><a href="#">Четвертая ссылка</a></li>
    </ul>
    <p> Вышеуказанные ссылки демонстрируют базовую структуру навигации с использованием неупорядоченного списка, стилизованного при помощи CSS. Взяв ее за отправную точку и изменяя свойства, можно создать свой неповторимый дизайн. Если нужны выпадающие меню, их можно создать при помощи a Spry menu — мини-приложения menu из Adobe Exchange или ряда других инструментов javascript или CSS.</p>
    <p>Если нужна навигация вдоль верха, просто перенесите ul.nav в верх страницы и заново создайте стиль.</p>
  <!-- end .sidebar1 --></div>
  <div class="content">
    <h1>Инструкции</h1>
    <p>Помните, что в CSS этих макетов много комментариев. Если большинство операций выполняется в представлении Дизайн то имеет смысл посмотреть на код. Там есть советы по использованию CSS при работе с плавающими макетами. Перед запуском сайта комментарии можно удалить. Чтобы узнать больше о техниках используемых в этих макетах CSS прочтите следующую статью в Центре разработки Adobe: <a href="http://www.adobe.com/go/adc_css_layouts">http://www.adobe.com/go/adc_css_layouts</a>.</p>
    <h2>Метод очистки</h2>
    <p>Поскольку все столбцы обтекаемые, в этом макете в правиле .footer используется объявление clear:both. Эта техника очистки заставляет .container видеть места окончания столбцов, чтобы показать все границы или фоновые цвета, помещенные в .container. Если требуется удалить .footer из .container, то понадобится другой метод очистки. Надежнее всего будет добавить &lt;br class="clearfloat" /&gt; or &lt;div class="clearfloat"&gt;&lt;/div&gt; после последнего обтекаемого столбца (но до закрытия .container). Эффект очистки будет аналогичным.</p>
    <h3>Вставка логотипа</h3>
    <p>В этом макете установлен заполнитель рисунка — в .header, где, скорее всего, будет размещен логотип. Рекомендуется удалить заполнитель и заменить его своим логотипом со ссылкой. </p>
    <p> Помните, что при использовании инспектора свойств для перехода к своему логотипу при помощи поля SRC (вместо удаления и замены заполнителя) следует удалить встроенный фон и свойства экрана. Эти встроенные стили предназначены только для того, чтобы отображать заполнитель в браузере. </p>
    <p>Чтобы удалить встроенные стили, убедитесь, что для панели "Стили CSS" установлено значение "Текущий". Выберите изображение и в области "Свойства" на панели "Стили CSS" щелкните правой кнопкой мыши и удалите свойства экрана и фона. (Также всегда можно перейти прямо в код и удалить встроенные стили из изображения или заполнителя в коде.)</p>
    <h4>Условные комментарии в Internet Explorer</h4>
    <p>Эти плавающие макеты содержат условный комментарий Internet Explorer (IECC), позволяющий решить две проблемы. </p>
    <ol>
      <li>Браузеры по-разному округляют размеры DIV в макетах на процентной основе. Когда нужно отобразить такую величину, как 144,5 пиксела или 564,5 пиксела, браузер должен округлить ее до ближайшего целого значения. Браузеры Safari и Opera округляют вниз, Internet Explorer — вверх, а Firefox — один столбец вверх и один вниз, полностью заполняя контейнер. Проблема округления может привести к несогласованности в некоторых макетах. В IECC есть отрицательное поле в 1 пиксел для исправления IE. Его можно перенести к любому столбцу (слева или справа) так, как это нужно для макета.</li>
      <li>Свойство масштабирования добавлено к привязке в списке навигации, поскольку в некоторых случаях в IE6 и IE7 отображается лишнее пустое место. Благодаря масштабированию IE получает свойство hasLayout для исправления этой проблемы.</li>
    </ol>
    <!-- end .content --></div>
  <div class="sidebar2">
    <h4>Фоны</h4>
    <p>По своей сути фоновый цвет отображается в любом DIV только по длине содержимого. Если вы предпочитаете цвету разделительную линию, поместите границу сбоку DIV .content (но только если в нем всегда будет больше содержимого).</p>
    <!-- end .sidebar2 --></div>
  <div class="footer">
    <p><a href="mailto:vovakubarik@mail.ru">vovakubarik@mail.ru</a> <a href="https://linktr.ee/vovakubarik">Linktree</a></p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>
