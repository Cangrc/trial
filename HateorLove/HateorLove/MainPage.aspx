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

              //var loveList = <%= loveNames %>;
              //var hateList = <%= hateNames %>;
              var loveList = ["Can A.", "Can .B", "Can C.", "Can D.", "Can E."];
              
              var hateList = ["Can A.", "Can .B", "Can C.", "Can D.", "Can E."];
              

              var data = new google.visualization.DataTable();
              data.addColumn('string', 'Country');
              data.addColumn('number', 'Popularity');
              data.addColumn({
                  type: 'string',
                  role: 'tooltip',
                  'p': { 'html': true }
              });

              /*var data = google.visualization.arrayToDataTable([
 
                ['Greece', 100, createCustomHTMLContent('https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg', 100)]
                /*['Poland', 300],
                ['Italy', 400],
                ['Spain', 500],
                ['France', 600],
                ['Portugal', 700]
              ], true);*/

              data.addRow(['Greece', 100, createCustomHTMLContent('https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg', loveList, hateList)]);
              //data.addRow(['Greece', 100]);

              

              var options = {
                  tooltip: { isHtml: true },
                  region: 150,
                  colorAxis: { colors: ['#00853f', 'black', '#e31b23'] },
                  backgroundColor: '#81d4fa',
                  datalessRegionColor: '#D3D3D3',
                  defaultColor: '#f5f5f5',
              };
              var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));
              chart.draw(data, options);
              google.visualization.events.addListener(chart, 'select', function () {
                  var selectedItem = chart.getSelection()[0];
                  if (selectedItem) {
                      var country = data.getValue(selectedItem.row, 0);
                      if (country = 'Greece') {
                          alert('asd')
                      }
                  }
              });
          }


          function createCustomHTMLContent(flagURL, loveList, hateList) {
              var loveURL = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Thumbs_up_font_awesome.svg/200px-Thumbs_up_font_awesome.svg.png";
              var hateURL = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Thumbs_down_font_awesome.svg/200px-Thumbs_down_font_awesome.svg.png";

              return '<div style="padding:5px 5px 5px 5px;">' +
                  '<img src="' + flagURL + '" style="width:75px;height:50px"><br/>' +
                  '<table class="hateorlove">' + 
                  '<tr>' +
                    '<td> <img src="' + loveURL + '" style="width:30px;height:30px"><br/> </td>' +
                    '<td> <img src="' + hateURL + '" style="width:30px;height:30px"><br/> </td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b> #  </b></td>' +
                    '<td><b> #  </b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[0] + '</b></td>' +
                    '<td><b>' + hateList[0] + '</b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[1] + '</b></td>' +
                    '<td><b>' + hateList[1] + '</b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[2] + '</b></td>' +
                    '<td><b>' + hateList[2] + '</b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[3] + '</b></td>' +
                    '<td><b>' + hateList[3] + '</b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[4] + '</b></td>' +
                    '<td><b>' + hateList[4] + '</b></td>' +
                  '</tr>' +
                  '</table>' + '</div>'
                   
          }
            
        </script>
      </head>
      <body>
        <div id="regions_div" style="width: 80%; height: 50%;"></div>
      </body>
</html>