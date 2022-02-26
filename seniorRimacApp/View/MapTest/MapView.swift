//
//  MapView.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 26.02.2022..
//
import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {

  let region: MKCoordinateRegion
  let lineCoordinates: [CLLocationCoordinate2D]

  // Create the MKMapView using UIKit.
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.delegate = context.coordinator
    mapView.region = region
      
      let polyline = MKPolyline(coordinates: lineCoordinates, count: lineCoordinates.count)
      mapView.addOverlay(polyline)
      
    return mapView
  }

  // We don't need to worry about this as the view will never be updated.
  func updateUIView(_ view: MKMapView, context: Context) {}

  // Link it to the coordinator which is defined below.
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

}

class Coordinator: NSObject, MKMapViewDelegate {
  var parent: MapView

    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
      if let routePolyline = overlay as? MKPolyline {
        let renderer = MKPolylineRenderer(polyline: routePolyline)
        renderer.strokeColor = UIColor.systemBlue
        renderer.lineWidth = 5
        return renderer
      }
      return MKOverlayRenderer()
    }
    
  init(_ parent: MapView) {
    self.parent = parent
  }
}
