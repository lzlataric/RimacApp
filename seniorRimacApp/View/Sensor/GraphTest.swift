//
//  GraphTest.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 22.02.2022..
//

import SwiftUI
import SwiftUICharts

struct GraphTest: View {
    let data: LineChartData = weekOfData()
    var body: some View {
        ZStack
         {
         //CustomColor.rimacBlue
        Color.white
         .ignoresSafeArea(.all, edges: .top)
         
        //VStack{
        LineChart(chartData: data)
            .touchOverlay(chartData: data)
            .pointMarkers(chartData: data)
            .xAxisGrid(chartData: data)
            .yAxisGrid(chartData: data)
            .xAxisLabels(chartData: data)
            .yAxisLabels(chartData: data)
            .floatingInfoBox(chartData: data)
            .headerBox(chartData: data)
        //.legends(chartData: data)
            .frame(minWidth: 150, maxWidth: 380, minHeight: 150, idealHeight: 500, maxHeight: 600, alignment: .center)
            .padding(.horizontal)
            .environmentObject(data)
        //}
        //.background(Color.white)
        
        }
    }
    
    
    static func weekOfData() -> LineChartData {
        let data = LineDataSet(dataPoints: [
            LineChartDataPoint(value: 120, xAxisLabel: "16:30", description: "16:30"   ),
            LineChartDataPoint(value: 91, xAxisLabel: "17:00", description: "17:00"  ),
            LineChartDataPoint(value: 80 , xAxisLabel: "17:30", description: "17:30"),
            LineChartDataPoint(value: 72, xAxisLabel: "18:00", description: "18:00" ),
            LineChartDataPoint(value: 65, xAxisLabel: "18:30", description: "18:30"   ),
            LineChartDataPoint(value: 50, xAxisLabel: "19:00", description: "19:00" ),
            LineChartDataPoint(value: 45 , xAxisLabel: "19:30", description: "19:30"  )
        ],
                               legendTitle: "Percent",
                               pointStyle: PointStyle(borderColour: Color.black),
                               style: LineStyle(lineColour: ColourStyle(colour: CustomColor.monoRimacBlue), lineType: .curvedLine))
        
        
        
        /*let gridStyle = GridStyle(numberOfLines: 7,
         lineColour   : Color(.blue).opacity(0.5),
         lineWidth    : 1,
         dash         : [8],
         dashPhase    : 0)*/
        
        /*let chartStyle = LineChartStyle(infoBoxPlacement    : .infoBox(isStatic: false),
         infoBoxContentAlignment: .vertical,
         infoBoxBorderColour : Color.primary,
         infoBoxBorderStyle  : StrokeStyle(lineWidth: 1),
         
         markerType          : .vertical(attachment: .line(dot: .style(DotStyle()))),
         
         xAxisGridStyle      : gridStyle,
         xAxisLabelPosition  : .bottom,
         xAxisLabelColour    : Color.primary,
         xAxisLabelsFrom     : .dataPoint(rotation: .degrees(0)),
         xAxisTitle          : "xAxisTitle",
         
         yAxisGridStyle      : gridStyle,
         yAxisLabelPosition  : .leading,
         yAxisLabelColour    : Color.primary,
         yAxisNumberOfLabels : 7,
         
         baseline            : .minimumWithMaximum(of: 5000),
         topLine             : .maximum(of: 20000),
         
         globalAnimation     : .easeOut(duration: 1))*/
        
        
        
        //let chartData =
         return LineChartData(dataSets: data,
                              metadata: ChartMetadata(title: "Battery ", subtitle: "", titleColour: CustomColor.monoRimacBlue, subtitleColour: CustomColor.monoRimacBlue),
                                      chartStyle: LineChartStyle(infoBoxPlacement: .floating,
                                                                 infoBoxValueColour: Color.white,
                                                                 infoBoxDescriptionColour: Color.white,
                                                                 infoBoxBackgroundColour: CustomColor.monoRimacBlue,
                                                                 markerType: .full(attachment: .line(dot: .style(DotStyle()))),
                                                                 xAxisGridStyle: GridStyle(numberOfLines: 7,lineColour: CustomColor.rimacBlue.opacity(0.5)),
                                                                 xAxisLabelColour: CustomColor.rimacBlue,
                                                                 xAxisTitle: "Time",
                                                                 xAxisTitleColour: CustomColor.monoRimacBlue,
                                                                 xAxisBorderColour: CustomColor.rimacBlue,
                                                                 yAxisGridStyle: GridStyle(numberOfLines: 5,lineColour: CustomColor.rimacBlue.opacity(0.5)),
                                                                 yAxisNumberOfLabels: 5,
                                                                 yAxisTitle: "Battery available in %",
                                                                 yAxisTitleColour: CustomColor.monoRimacBlue,
                                                                 yAxisBorderColour: CustomColor.rimacBlue,
                                                                 baseline: .minimumWithMaximum(of: 0)))
                                                                 //topLine: .maximum(of: 100)))
        
        
        /*defer {
            chartData.touchedDataPointPublisher
                .map(\.value)
                .sink { value in
                    var dotStyle: DotStyle
                    if value < 10_000 {
                        dotStyle = DotStyle(fillColour: .red)
                    } else if value >= 10_000 && value <= 15_000 {
                        dotStyle = DotStyle(fillColour: .blue)
                    } else {
                        dotStyle = DotStyle(fillColour: .green)
                    }
                    withAnimation(.linear(duration: 0.5)) {
                        chartData.chartStyle.markerType = .vertical(attachment: .line(dot: .style(dotStyle)))
                    }
                }
                .store(in: &chartData.subscription)
        }
        
        return chartData*/
        
    }
    
}


struct GraphTest_Previews: PreviewProvider {
    static var previews: some View {
        GraphTest()
    }
}
