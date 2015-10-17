$(function () {

    var colors = Highcharts.getOptions().colors,
        categories = ['Web developer, IT & Softward', 'Mobile Phones & Content', 'Writing & Content', 'Design, Media & Architecture', 'Data Entry & Admin', 'Engineering & Science', 'Product Sourcing & Manufacturing', 'Sales & Marketing', 'Business, Accounting, HR & Legal', 'Translations & Languages', 'Local Jobs & Services', 'Other'],
        data = [{
            y: 48,
            color: colors[1],
            drilldown: {
                name: 'Web developer, IT & Softward',
                categories: ['AJAX', 'Javascript', 'eCommerce', 'Ruby on Rails', 'SQL', 'node.js', 'Heroku'],
                data: [10, 8, 4, 11, 11, 0, 4],
                color: colors[1]
            }
        }, {
            y: 3,
            color: colors[0],
            drilldown: {
                name: 'Mobile Phones & Content',
                categories: ['Blackberry'],
                data: [3.3],
                color: colors[0]
            }
        }, {
            y: 0,
            color: colors[2],
            drilldown: {
                name: 'Writing & Content',
                categories: [],
                data: [],
                color: colors[2]
            }
        }, {
            y: 0,
            color: colors[3],
            drilldown: {
                name: 'Design, Media & Architecture',
                categories: [],
                data: [],
                color: colors[3]
            }
        }, {
            y: 15,
            color: colors[4],
            drilldown: {
                name: 'Data Entry & Admin',
                categories: ['Excel', 'Microsoft Office'],
                data: [9, 6],
                color: colors[4]
            }
        }, {
            y: 0,
            color: colors[5],
            drilldown: {
                name: 'Engineering & Science',
                categories: [],
                data: [],
                color: colors[5]
            }
        }, {
            y: 0,
            color: colors[5],
            drilldown: {
                name: 'Product Sourcing & Manufacturing',
                categories: [],
                data: [],
                color: colors[6]
            }
        }, {
            y: 15,
            color: colors[2],
            drilldown: {
                name: 'Sales & Marketing',
                categories: ['Affiliate Marketing', 'Facebook Marketing', 'Etsy', 'eBay', 'Branding'],
                data: [2, 4, 7, 2, 0],
                color: colors[2]
            }
        }, {
            y: 8,
            color: colors[3],
            drilldown: {
                name: 'Business, Accounting, HR & Legal',
                categories: ['Payroll'],
                data: [8],
                color: colors[3]
            }
        }, {
            y: 0,
            color: colors[5],
            drilldown: {
                name: 'Translations & Languages',
                categories: [],
                data: [],
                color: colors[9]
            }
        }, {
            y: 0,
            color: colors[5],
            drilldown: {
                name: 'Local Jobs & Services',
                categories: [],
                data: [],
                color: colors[10]
            }
        }, {
            y: 11,
            color: colors[7],
            drilldown: {
                name: 'Other',
                categories: ['History'],
                data: [11],
                color: colors[7]
            }

        }],
        browserData = [],
        versionsData = [],
        i,
        j,
        dataLen = data.length,
        drillDataLen,
        brightness;


    // Build the data arrays
    for (i = 0; i < dataLen; i += 1) {

        // add browser data
        browserData.push({
            name: categories[i],
            y: data[i].y,
            color: data[i].color
        });

        // add version data
        drillDataLen = data[i].drilldown.data.length;
        for (j = 0; j < drillDataLen; j += 1) {
            brightness = 0.2 - (j / drillDataLen) / 5;
            versionsData.push({
                name: data[i].drilldown.categories[j],
                y: data[i].drilldown.data[j],
                color: Highcharts.Color(data[i].color).brighten(brightness).get()
            });
        }
    }

    // Create the chart
    $('#container').highcharts({
        chart: {
            type: 'pie'
        },
        title: {
            text: 'Endorsments Pie Chart'
        },
        subtitle: {
            text: 'for user: Erik Warringer'
        },
        yAxis: {
            title: {
                text: 'Total percent market share'
            }
        },
        plotOptions: {
            pie: {
                shadow: false,
                center: ['50%', '50%']
            }
        },
        tooltip: {
            valueSuffix: '%'
        },
        series: [{
            name: 'Categories',
            data: browserData,
            size: '60%',
            dataLabels: {
                formatter: function () {
                    return this.y > 5 ? this.point.name : null;
                },
                color: '#ffffff',
                distance: -30
            }
        }, {
            name: 'Skills',
            data: versionsData,
            size: '80%',
            innerSize: '60%',
            dataLabels: {
                formatter: function () {
                    // display only if larger than 1
                    return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%' : null;
                }
            }
        }]
    });
});

/**
 * Sand-Signika theme for Highcharts JS
 * @author Torstein Honsi
 */

// Load the fonts
Highcharts.createElement('link', {
   href: '//fonts.googleapis.com/css?family=Signika:400,700',
   rel: 'stylesheet',
   type: 'text/css'
}, null, document.getElementsByTagName('head')[0]);

// Add the background image to the container
Highcharts.wrap(Highcharts.Chart.prototype, 'getContainer', function (proceed) {
   proceed.call(this);
   this.container.style.background = 'transparent';
});


Highcharts.theme = {
   colors: ["#f45b5b", "#8085e9", "#8d4654", "#7798BF", "#aaeeee", "#ff0066", "#eeaaee",
      "#55BF3B", "#DF5353", "#7798BF", "#aaeeee"],
   chart: {
      backgroundColor: null,
      style: {
         fontFamily: "Signika, serif"
      }
   },
   title: {
      style: {
         color: 'black',
         fontSize: '16px',
         fontWeight: 'bold'
      }
   },
   subtitle: {
      style: {
         color: 'black'
      }
   },
   tooltip: {
      borderWidth: 0
   },
   legend: {
      itemStyle: {
         fontWeight: 'bold',
         fontSize: '13px'
      }
   },
   xAxis: {
      labels: {
         style: {
            color: '#6e6e70'
         }
      }
   },
   yAxis: {
      labels: {
         style: {
            color: '#6e6e70'
         }
      }
   },
   plotOptions: {
      series: {
         shadow: true
      },
      candlestick: {
         lineColor: '#404048'
      },
      map: {
         shadow: false
      }
   },

   // Highstock specific
   navigator: {
      xAxis: {
         gridLineColor: '#D0D0D8'
      }
   },
   rangeSelector: {
      buttonTheme: {
         fill: 'white',
         stroke: '#C0C0C8',
         'stroke-width': 1,
         states: {
            select: {
               fill: '#D0D0D8'
            }
         }
      }
   },
   scrollbar: {
      trackBorderColor: '#C0C0C8'
   },

   // General
   background2: '#E0E0E8'

};

// Apply the theme
Highcharts.setOptions(Highcharts.theme);
