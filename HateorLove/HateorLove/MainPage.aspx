<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HateorLove.MainPage" %>

<!DOCTYPE html>

<html>
    <head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HateorLove</title>
        
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
          google.charts.load('upcoming', {'packages':['geochart']});
          google.charts.setOnLoadCallback(drawRegionsMap);

          function drawRegionsMap() {

            var data = google.visualization.arrayToDataTable([
                <%= MyProperty %>       
            ]);

            var options = {};

            var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

            chart.draw(data, options);
          }
        </script>
      </head>
      <body>
        <div id="regions_div" style="width: 100%; height: 80%;"></div>
      </body>
</html>