// $(function () {
//
//     // Radialize the colors
//     Highcharts.getOptions().colors = Highcharts.
//     map(Highcharts.getOptions().colors, function (color) {
//         return {
//             radialGradient: {
//                 cx: 0.5,
//                 cy: 0.3,
//                 r: 0.7
//             },
//             stops: [
//                 [0, color],
//                 [1, Highcharts.Color(color).
//                   brighten(-0.3).get('rgb')] // darken
//             ]
//         };
//     });
//
//     // Build the chart
//     $('#pieContainer').highcharts({
//         chart: {
//             plotBackgroundColor: null,
//             plotBorderWidth: null,
//             plotShadow: false,
//             type: 'pie'
//         },
//         title: {
//             text: 'Skill Percentages'
//         },
//         tooltip: {
//             pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
//         },
//         plotOptions: {
//             pie: {
//                 allowPointSelect: true,
//                 cursor: 'pointer',
//                 dataLabels: {
//                     enabled: true,
//                     format: '<b>{point.name}</b>: {point.percentage:.1f} %',
//                     style: {
//                         color: (Highcharts.theme && Highcharts.
//                           theme.contrastTextColor) || 'black'
//                     },
//                     connectorColor: 'silver'
//                 }
//             }
//         },
//         series: [{
//             name: "Skills",
//             data: [
//                 {name: "Ruby on Rails", y: 56.33},
//                 {
//                     name: "Test Driven Development",
//                     y: 24.03,
//                     sliced: true,
//                     selected: true
//                 },
//                 {name: "SQL", y: 10.38},
//                 {name: "Javascript", y: 4.77}, {name: "HTML", y: 0.91},
//                 {name: "Foundation", y: 0.2}
//             ]
//         }]
//     });
// });
