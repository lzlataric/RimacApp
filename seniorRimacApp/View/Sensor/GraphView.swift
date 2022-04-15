//
//  GraphView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import SwiftUI
import SwiftUICharts

struct GraphView: View {
    //@ObservedObject var readingsVM: ReadingViewModel
    //let data1: LineChartData = weekOfData()
    let data: LineChartData
    var body: some View {
        LineChart(chartData: data)
            .touchOverlay(chartData: data)
            .pointMarkers(chartData: data)
            .xAxisGrid(chartData: data)
            .yAxisGrid(chartData: data)
            .xAxisLabels(chartData: data)
            .yAxisLabels(chartData: data)
            .floatingInfoBox(chartData: data)
            .headerBox(chartData: data)
            .id(data.id)
        //.legends(chartData: data)
            .frame(minWidth: 150, maxWidth: 380, minHeight: 150, idealHeight: 500, maxHeight: 600, alignment: .center)
            .padding(.horizontal)
            .environmentObject(data)
        
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
    }
    
//    static func weekOfData() -> LineChartData {
        
//    let data = LineDataSet(dataPoints: [
//        LineChartDataPoint(value: 100, xAxisLabel: "16:30", description: "16:30"   ),
//        LineChartDataPoint(value: 91, xAxisLabel: "17:00", description: "17:00"  ),
//        LineChartDataPoint(value: 80 , xAxisLabel: "17:30", description: "17:30"),
//        LineChartDataPoint(value: 72, xAxisLabel: "18:00", description: "18:00" ),
//        LineChartDataPoint(value: 65, xAxisLabel: "18:30", description: "18:30"   ),
//        LineChartDataPoint(value: 50, xAxisLabel: "19:00", description: "19:00" ),
//        LineChartDataPoint(value: 45 , xAxisLabel: "19:30", description: "19:30"  )
//    ],
//                           legendTitle: "Percent",
//                           pointStyle: PointStyle(borderColour: Color.black),
//                           style: LineStyle(lineColour: ColourStyle(colour: CustomColor.monoRimacBlue), lineType: .curvedLine))
    
    
    
//    return LineChartData(dataSets: data,
//                         metadata: ChartMetadata(title: "Battery ", subtitle: "", titleColour: CustomColor.monoRimacBlue, subtitleColour: CustomColor.monoRimacBlue),
//                         chartStyle: LineChartStyle(infoBoxPlacement: .floating,
//                                                    infoBoxValueColour: Color.white,
//                                                    infoBoxDescriptionColour: Color.white,
//                                                    infoBoxBackgroundColour: CustomColor.monoRimacBlue,
//                                                    markerType: .full(attachment: .line(dot: .style(DotStyle()))),
//                                                    xAxisGridStyle: GridStyle(numberOfLines: 7,lineColour: CustomColor.rimacBlue.opacity(0.5)),
//                                                    xAxisLabelColour: CustomColor.rimacBlue,
//                                                    xAxisTitle: "Time",
//                                                    xAxisTitleColour: CustomColor.monoRimacBlue,
//                                                    xAxisBorderColour: CustomColor.rimacBlue,
//                                                    yAxisGridStyle: GridStyle(numberOfLines: 5,lineColour: CustomColor.rimacBlue.opacity(0.5)),
//                                                    yAxisNumberOfLabels: 5,
//                                                    yAxisTitle: "Battery available in %",
//                                                    yAxisTitleColour: CustomColor.monoRimacBlue,
//                                                    yAxisBorderColour: CustomColor.rimacBlue,
//                                                    baseline: .minimumWithMaximum(of: 0),
//                                                    topLine: .maximum(of: 100)))
//
//
//}

}

//struct GraphView_Previews: PreviewProvider {
//    static var previews: some View {
//        GraphView()
//    }
//}
