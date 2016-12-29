<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HateorLove.MainPage" %>

<!DOCTYPE html>

<html>
    <head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HateorLove</title>
        
    </head>
    
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
     
          // google.charts.load('upcoming', {'packages':['geochart']});
          google.charts.load('upcoming', {'packages':['corechart', 'geochart']});
          google.charts.setOnLoadCallback(drawRegionsMap);

          function drawRegionsMap() {

              var loveList = <%= loveNames %>;
              var hateList = <%= hateNames %>;
              var loveScoreList = <%= loveScores %>;
              var hateScoreList = <%= hateScores %>;
              var loveScoreSum = <%= loveScoreSum %>;
              var hateScoreSum = <%= hateScoreSum %>;
              

              //var loveList = ['Can A.', "Can .B", "Can C.", "Can D.", "Can E."];
              //var hateList = ["Can A.", "Can .B", "Can C.", "Can D.", "Can E."];
       
              var data = new google.visualization.DataTable();
              data.addColumn('string', 'Country');
              data.addColumn('number', 'HateOrLoveBalance');
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

              data.addRow(['Greece', hateScoreSum - loveScoreSum, createCustomHTMLContent('https://upload.wikimedia.org/wikipedia/commons/5/5c/Flag_of_Greece.svg', loveList, hateList, loveScoreSum, hateScoreSum)]);
              //data.addRow(['Greece', 100]);

              var geoChartOptions = {
                  title:'Europe Love / Hate Map ',
                  tooltip: { isHtml: true },
                  region: 150,
                  width:800,
                  height:600,
                  colorAxis: { colors: ['#00853f', 'black', '#e31b23'] },
                  backgroundColor: '#81d4fa',
                  datalessRegionColor: '#D3D3D3',
                  defaultColor: '#f5f5f5',
              };
              var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));
              chart.draw(data, geoChartOptions);
              
              //Love PieChart

              var piedata = new google.visualization.DataTable();
              piedata.addColumn('string', 'Names');
              piedata.addColumn('number', 'Score');
              piedata.addRows([
                ['Mushrooms', 3],
                ['Onions', 1],
                ['Olives', 1],
                ['Zucchini', 1],
                ['Pepperoni', 2]
              ]);

              var piechartLove_options = {title:'Top 5 Love List',
                  width:400,
                  height:300};
              var piechartLove = new google.visualization.PieChart(document.getElementById('piechartLove_div'));
              piechartLove.draw(piedata, piechartLove_options);

              //Hate PieChart
            
              var piechartHate_options = {title:'Top 5 Hate List',
                  width:400,
                  height:300};
              var piechartHate = new google.visualization.PieChart(document.getElementById('piechartHate_div'));
              piechartHate.draw(piedata, piechartHate_options); 
              
              function selectCountryHandler() {
                  var selectedItem = chart.getSelection()[0];
                  if (selectedItem) {
                      var country = data.getValue(selectedItem.row, 0);
                      if (country = 'Greece') {
                          var pieGreeceLove = new google.visualization.DataTable();
                          pieGreeceLove.addColumn('string', 'Names');
                          pieGreeceLove.addColumn('number', 'Score');
                          
                          pieGreeceLove.addRow([loveList[0], loveScoreList[0]]);
                          pieGreeceLove.addRow([loveList[1], loveScoreList[1]]);
                          pieGreeceLove.addRow([loveList[2], loveScoreList[2]]);
                          pieGreeceLove.addRow([loveList[3], loveScoreList[3]]);
                          pieGreeceLove.addRow([loveList[4], loveScoreList[4]]);
              
                          var pieGreeceHate = new google.visualization.DataTable();
                          pieGreeceHate.addColumn('string', 'Names');
                          pieGreeceHate.addColumn('number', 'Score');
                          
                          pieGreeceHate.addRow([hateList[0], hateScoreList[0]]);
                          pieGreeceHate.addRow([hateList[1], hateScoreList[1]]);
                          pieGreeceHate.addRow([hateList[2], hateScoreList[2]]);
                          pieGreeceHate.addRow([hateList[3], hateScoreList[3]]);
                          pieGreeceHate.addRow([hateList[4], hateScoreList[4]]);

                          piechartLove.draw(pieGreeceLove, piechartLove_options);
                          piechartHate.draw(pieGreeceHate, piechartHate_options);
                      }
                  }
              }

              google.visualization.events.addListener(chart, 'select', selectCountryHandler);
          
              function selectLoveHandler() {
                  var selectedItemLove = piechartLove.getSelection()[0];
                  if (selectedItemLove) {
                      
                      var personName = data.getValue(selectedItemLove.row, 0);
                      alert(personName);
                      var lovePlusButton = document.getElementById('lovePlus');
                      lovePlusButton.textContent("Love You " + personName);
                  }
              }

              google.visualization.events.addListener(piechartLove, 'select', selectLoveHandler);
          }
          


          function createCustomHTMLContent(flagURL, loveList, hateList, loveScoreSum, hateScoreSum) {
              var loveURL = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Thumbs_up_font_awesome.svg/200px-Thumbs_up_font_awesome.svg.png";
              var hateURL = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Thumbs_down_font_awesome.svg/200px-Thumbs_down_font_awesome.svg.png";
              var loveEmoji = "..\Content\Images\1f60d";
              var hateEmoji = "..\Content\Images\1f621";

              return '<div style="padding:5px 5px 5px 5px;">' +
                  '<img src="' + flagURL + '" style="width:75px;height:50px"><br/>' +
                  '<table class="hateorlove">' + 
                  '<tr>' +
                     '<b> Total Votes </b>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveScoreSum + '</b></td>' +
                    '<td><b>' + hateScoreSum + '</b></td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td> <img src="' + loveURL + '" style="width:30px;height:30px"><br/> </td>' +
                    '<td> <img src="' + hateURL + '" style="width:30px;height:30px"><br/> </td>' +
                  '</tr>' +
                  '<tr>' +
                    '<td><b>' + loveList[0] + '</b></td>' +
                    '<td><b>' + hateList[0] + '</b></td>' +
                  '</tr>' +
                  
                  '</table>' + '</div>'
                   
          }
            
     </script>
      
     <body>
         <form id="form1" runat="server">
             
             <div id="regions_div"></div>
             <table class="columns">
                 <tr>
                     <td>
                         <div id="piechartLove_div" style="border: 1px solid #ccc"></div>
                     </td>

                     <asp:Button ID="lovePlus" runat="server" Text="Love You" OnClick="loveButton_Click" />

                     <td>
                         <div id="piechartHate_div" style="border: 1px solid #ccc"></div>
                     </td>

                     <asp:Button ID="hatePlus" runat="server" Text="Hate You" OnClick="hateButton_Click" />
                 </tr>
             </table>

         </form>
      </body>
</html>