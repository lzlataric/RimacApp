//
//  ReadingViewModel.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 17.03.2022..
//

import Foundation
import SwiftUICharts
import SwiftUI
import Combine

class ReadingViewModel: ObservableObject{
    @Published var readings : [Readings] = []
    @Published var sortedReadings : [Readings] = []
    @Published var graphPoints = LineChartData(dataSets: LineDataSet(dataPoints: [LineChartDataPoint(value: 0, xAxisLabel: ".")]))
    @Published var shouldShowGraph: Bool = true
    
    @Published var sliderOne: Double = 0
    @Published var sliderTwo: Double = 1
    
    var cancellables: [AnyCancellable] = []
    
    init(){
        $sliderOne
            .removeDuplicates()
            .debounce(for: 1, scheduler: RunLoop.main)
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: {str in
                self.shouldShowGraph = false
                self.graphPoints = LineChartData(dataSets: LineDataSet(dataPoints: []))
                self.sensorSorting(firstSlider: self.sliderOne, secondSlider: self.sliderTwo)
                //
                
                self.graphPoints = self.getGraphData(title: "")
                self.shouldShowGraph = true
            })
            .store(in: &cancellables)
        
        $sliderTwo
            .removeDuplicates()
            .debounce(for: 1, scheduler: RunLoop.main)
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: {str in
                self.shouldShowGraph = false
                self.sensorSorting(firstSlider: self.sliderOne, secondSlider: self.sliderTwo)
                //
                self.graphPoints = LineChartData(dataSets: LineDataSet(dataPoints: []))
                self.graphPoints = self.getGraphData(title: "")
                print(self.graphPoints)
                self.shouldShowGraph = true
            })
            .store(in: &cancellables)
    }
        
    func returnGraph() -> GraphView{
        return GraphView(data: self.graphPoints)
    }
    
    func sensorSorting(firstSlider: Double, secondSlider: Double){
        self.sortedReadings = []
        let readingsLength = self.readings.count
        let sortedAmountFirst = Double(readingsLength) * firstSlider
        let sortedAmountSecond = Double(readingsLength) * secondSlider
        
        for index in 0...readingsLength {
            //print("\(index)")
            if(Double(index) >= sortedAmountFirst && Double(index) <= sortedAmountSecond){
                if(readings.count != 0 && index != readingsLength){
                    
                    print(index)
                self.sortedReadings.append(readings[index])
                }
            }
        }

        
        if(sortedAmountFirst == 0 && sortedAmountSecond == 1){
            self.sortedReadings = self.readings
        }
        
        
    }
    
    
    func fetch(sensorId: String, driveId: String) {
        self.readings = []
        Network.shared.apollo.fetch(query: ReadingQuery(sensorID: sensorId, driveId: driveId)) {[weak self] result in // Change the query name to your query name
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(graphQLResult)")
                //self?.car = graphQLResult.data?.vehicles as! [VehiclesQuery.Data.Vehicle]
                if let readings = graphQLResult.data?.readingsAndTolerances?.readings{
                    self?.readings = readings.compactMap({ $0 }).map(Readings.init)
                    self?.sortedReadings = self?.readings ?? []
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    func getDataPoints() -> [LineChartDataPoint]{
        var data : [LineChartDataPoint] = []
        for reading in sortedReadings{
            let point = LineChartDataPoint(value: reading.value)
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
                                                        yAxisGridStyle: GridStyle(numberOfLines: 1,lineColour: CustomColor.rimacBlue.opacity(0.5)),
                                                        yAxisNumberOfLabels: 2,
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

