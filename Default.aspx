<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<audio autoplay>
  <source src="music/canndy.mp3" type="audio/mpeg">
</audio>
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Mind Reader</title>

    <!-- Bootstrap -->
    <link href="/Bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">

    </script>
</head><body>
    <form id="form1" runat="server">
        <div></div>
        <br />
        <br />
       
    <div class="col-md-5 col-sm-5 textContainer">
        <div style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;font-size:large;">
        <p class="bg-info">Think of any two-digit number. then add both digits together and substract the result from the original number.</p>
        <p class="alert-info text-center"><u>Example for 32</u></p>
        <p class="text-center">3+2=5</p>
        <p class="text-center">32-5=27</p>
        <p class="bg-info"><strong>27</strong> would now be your number
In the next step, find a symbol that corresponds with your number.
Now concentrate fully on this symbol, try to focus all your energy on your symbol. take as much time as you need.
             then press the next button.</p>
<p class="alert-danger text-center">Let's go!!!</p>
            <br />
            <br />
        <div style="align-self:center">  <asp:Button ID="btnNext" class="btn btn-success center-block" Width="85" runat="server" Text="GO" OnClick="btnNext_Click"/></div>
    </div>
    </div>
            
    </form>
</body>
</html>
