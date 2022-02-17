//
//  CustomButtons.swift
//  seniorRimacApp
//
//  Created by Luka Zlatarić on 15.02.2022..
//

import SwiftUI

struct LoginButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 100)
            .background(Color.white)
            .foregroundColor(CustomColor.rimacBlue)
            .cornerRadius(15)
    }
}
