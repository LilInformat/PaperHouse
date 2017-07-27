function queryStockData()
{
	if($('#stockChart').length > 0)
	{
		var URL = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=MSFT&interval=1min&apikey=HIWSYFQGZKSJBXPC";
		$.get(URL, createAndDisplayStockChart);
	}
	return true;
}

function createAndDisplayStockChart(data, xhr)
{
	var timeSeries = data["Time Series (Daily)"];

	var time = [];
	var stockOpen = [];
	var stockHigh = [];
	var stockLow = [];
	var stockClose = [];
	var stockVolume = [];
	var OHLC = [];

	Object.keys(timeSeries).forEach(function(key){
		time.push(key);
		stockOpen.push(timeSeries[key]["1. open"]);
		stockHigh.push(timeSeries[key]["2. high"]);
		stockLow.push(timeSeries[key]["3. low"]);
		stockClose.push(timeSeries[key]["4. close"]);
		stockVolume.push(timeSeries[key]["5. volume"]);
		OHLC.push((
				parseFloat(timeSeries[key]["1. open"]) +
				parseFloat(timeSeries[key]["2. high"]) +
				parseFloat(timeSeries[key]["3. low"]) +
				parseFloat(timeSeries[key]["4. close"])
				)/4);
	})
	var trace = {
		x: time,
		close: stockClose,
		decreasing: {line: {color: '#7F7F7F'}},
		high: stockHigh,
		increasing: {line: {color: '#17BECF'}}, 
		line: {color: 'rgba(31,119,180,1)'},
		low: stockLow,
		open: stockOpen,
		type: 'ohlc',
		xaxis: 'x',
		yaxis: 'y'
	};
	var layout = {
			title: 'OHLC Chart',
			dragmode: 'zoom', 
			margin: {
			    r: 10, 
			    t: 25, 
			    b: 40, 
			    l: 60
			  },
			showlegend: false, 
			xaxis: {
			    rangeselector: {},
			    rangeslider: {range:[time[0], time[time.length - 1]]},
			    title: 'Date', 
			    type: 'date'
			},
			yaxis: {
				autorange: true,
				type: 'linear'
			}
		};

	Plotly.newPlot('stockChart', [trace], layout);
}

function queryStockInfo()
{
	var URL = "https://api.intrinio.com/companies?ticker=AAPL";
	$.ajax({
		tye: "GET",
		url: URL,
		async: true,
		beforeSend: function(xhr)
		{
			xhr.setRequestHeader ("Authorization", "Basic " + btoa("" +
			 ":" + ""));
		},
		success: receiveStockInfo
		});
}

function receiveStockInfo(data)
{
	var stockInfo = data;
}

        