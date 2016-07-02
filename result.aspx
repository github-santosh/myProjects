<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="/Bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">

        function myMove() {
            var elem = document.getElementById("image0");
            var pos = 0;
            var id = setInterval(frame, 10);
            function frame() {
                if (pos == 350) {
                    clearInterval(id);
                } else {
                    pos++;
                    elem.style.top = pos + 'px';
                    elem.style.left = pos + 'px';
                }
            }
        }
       // <script>
    $(document).ready(function() {
        var audioElement = document.createElement('audio');
        audioElement.setAttribute('src', 'music/victry.mp3');
        audioElement.setAttribute('autoplay', 'autoplay');
        //audioElement.load()

        $.get();

        audioElement.addEventListener("load", function() {
            audioElement.play();
        }, true);

        $('.Play').click(function() {
            audioElement.play();
        });

        $('.pause').click(function() {
            audioElement.pause();
        });
    });
//</script>      
    </script>

    <style>
        #myContainer {
            width: 400px;
            height: 400px;
            position: center;
            background: yellow;
        }

        #myAnimation {
            width: 350px;
            height: 50px;
            position:center;
            background-color: red;
        }
    </style>
</head>
<body">
    <form id="form1" runat="server">



       <%-- <div id="myContainer">
            <div id="myAnimation">--%>

        <br />
        <br />

                <table class="table" style="table-layout: auto;">
                    <tbody>
                        <tr>
                            <td class="center-block">
                                <audio id="bflat" src="music/victry.mp3"></audio>
                                <asp:ImageButton runat="server" CssClass="center-block"  ImageUrl="Images/openme.jpg" ID="imgclick" OnClick="imgclick_Click"
                                    OnClientClick="document.getElementById('bflat').Play()"   />
                                <asp:Image runat="server" CssClass="center-block" ImageUrl="Images/img1.jpg" Visible="false" ID="image0" class="img-thumbnail" alt="Cinque Terre" Width="440" Height="320" />
                            </td>
                        </tr>
                    </tbody>
                </table>
        <br />
        <br />
        <asp:Button ID="btnNext" class="btn btn-success center-block" Width="100px" height="35px" Visible="false" runat="server" Text="Play Again !" OnClick="btnNext_Click"/>
           <%-- </div>
        </div>--%>
    </form>

</body>
</html>
