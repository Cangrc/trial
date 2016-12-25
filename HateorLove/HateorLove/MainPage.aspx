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
                ['Country', 'Popularity'],
                ['Germany', 200],
                ['Poland', 300],
                ['Italy', 400],
                ['Spain', 500],
                ['France', 600],
                ['Portugal', 700]
              ]);

              data.addColumn({
                  type: 'string',
                  role: 'tooltip',
                  'p': { 'html': true }
              });
              data.addRow(['Greece', 100]);

              var options = {
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
                      if (country = 'France')
                      {
                          alert('ciao')
                      }
                  }

              });
          }
            
        </script>
      </head>
      <body>
        <div id="regions_div" style="width: 100%; height: 80%;"></div>
      </body>
</html>