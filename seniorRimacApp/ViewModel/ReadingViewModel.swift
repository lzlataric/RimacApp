//
//  ReadingViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import Foundation
import SwiftUICharts
import SwiftUI

class ReadingViewModel: ObservableObject{
    @Published var readings : [Readings] = []

    
    func fetch(sensorId: String, driveId: String) {
        self.readings = []
        Network.shared.apollo.fetch(query: ReadingQuery(sensorID: sensorId, driveId: driveId)) {[weak self] result in // Change the query name to your query name
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
              //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
              if let readings = graphQLResult.data?.readingsAndTolerances?.readings{
                  self?.readings = readings.compactMap({ $0 }).map(Readings.init)
              }
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
    
    func getDataPoints() -> [LineChartDataPoint]{
        var data : [LineChartDataPoint] = []
        for reading in readings{
            let point = LineChartDataPoint(value: reading.value, xAxisLabel: "", description: "")
            data.append(point)
        }
        return data
    }
    
    func getGraphData(title:String) -> LineChartData{
        let data = LineDataSet(dataPoints: getDataPoints(),
                               pointStyle: PointStyle(borderColour: Color.black),
                               style: LineStyle(lineColour: ColourStyle(colour: CustomColor.monoRimacBlue), lineType: .curvedLine))
        
        return LineChartData(dataSets: data,
                             metadata: ChartMetadata(title: title , subtitle: "", titleColour: CustomColor.monoRimacBlue, subtitleColour: CustomColor.monoRimacBlue),
                             chartStyle: LineChartStyle(infoBoxPlacement: .floating,
                                                        infoBoxValueColour: Color.white,
                                                        infoBoxDescriptionColour: Color.white,
                                                        infoBoxBackgroundColour: CustomColor.monoRimacBlue,
                                                        markerType: .full(attachment: .line(dot: .style(DotStyle()))),
                                                        xAxisGridStyle: GridStyle(numberOfLines: 7,lineColour: CustomColor.rimacBlue.opacity(0.5)),
                                                        xAxisLabelColour: CustomColor.rimacBlue,
                                                        //xAxisTitle: "Time",
                                                        xAxisTitleColour: CustomColor.monoRimacBlue,
                                                        xAxisBorderColour: CustomColor.rimacBlue,
                                                        yAxisGridStyle: GridStyle(numberOfLines: 5,lineColour: CustomColor.rimacBlue.opacity(0.5)),
                                                        yAxisNumberOfLabels: 5,
                                                        //yAxisTitle: "Battery available in %",
                                                        yAxisTitleColour: CustomColor.monoRimacBlue,
                                                        yAxisBorderColour: CustomColor.rimacBlue,
                                                        baseline: .minimumWithMaximum(of: 0),
                                                        topLine: .maximum(of: 100)))
    }
}




//static func weekOfData() -> LineChartData {
//
//
//
//let data = LineDataSet(dataPoints: [
//    LineChartDataPoint(value: 100, xAxisLabel: "16:30", description: "16:30"   ),
//    LineChartDataPoint(value: 91, xAxisLabel: "17:00", description: "17:00"  ),
//    LineChartDataPoint(value: 80 , xAxisLabel: "17:30", description: "17:30"),
//    LineChartDataPoint(value: 72, xAxisLabel: "18:00", description: "18:00" ),
//    LineChartDataPoint(value: 65, xAxisLabel: "18:30", description: "18:30"   ),
//    LineChartDataPoint(value: 50, xAxisLabel: "19:00", description: "19:00" ),
//    LineChartDataPoint(value: 45 , xAxisLabel: "19:30", description: "19:30"  )
//],
//                       legendTitle: "Percent",
//                       pointStyle: PointStyle(borderColour: Color.black),
//                       style: LineStyle(lineColour: ColourStyle(colour: CustomColor.monoRimacBlue), lineType: .curvedLine))
//
//
//
//return LineChartData(dataSets: data,
//                     metadata: ChartMetadata(title: "Battery ", subtitle: "", titleColour: CustomColor.monoRimacBlue, subtitleColour: CustomColor.monoRimacBlue),
//                     chartStyle: LineChartStyle(infoBoxPlacement: .floating,
//                                                infoBoxValueColour: Color.white,
//                                                infoBoxDescriptionColour: Color.white,
//                                                infoBoxBackgroundColour: CustomColor.monoRimacBlue,
//                                                markerType: .full(attachment: .line(dot: .style(DotStyle()))),
//                                                xAxisGridStyle: GridStyle(numberOfLines: 7,lineColour: CustomColor.rimacBlue.opacity(0.5)),
//                                                xAxisLabelColour: CustomColor.rimacBlue,
//                                                xAxisTitle: "Time",
//                                                xAxisTitleColour: CustomColor.monoRimacBlue,
//                                                xAxisBorderColour: CustomColor.rimacBlue,
//                                                yAxisGridStyle: GridStyle(numberOfLines: 5,lineColour: CustomColor.rimacBlue.opacity(0.5)),
//                                                yAxisNumberOfLabels: 5,
//                                                yAxisTitle: "Battery available in %",
//                                                yAxisTitleColour: CustomColor.monoRimacBlue,
//                                                yAxisBorderColour: CustomColor.rimacBlue,
//                                                baseline: .minimumWithMaximum(of: 0),
//                                                topLine: .maximum(of: 100)))
//
//
//}

