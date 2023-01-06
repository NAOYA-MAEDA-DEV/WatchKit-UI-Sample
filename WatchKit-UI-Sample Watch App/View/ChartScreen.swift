//
//  ChartScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/04.
//

import SwiftUI
import Charts

struct ChartScreen: View {
    private let data: [Pet] = [
        .init(kind: "🐶", count: 3),
        .init(kind: "🐱", count: 5),
        .init(kind: "🐥", count: 4),
        .init(kind: "🐹", count: 2)
    ]
    
    var body: some View {
        Chart {
            BarMark(
                x: .value("kind", data[0].kind),
                y: .value("count", data[0].count),
                width: 10
            )
            .foregroundStyle(.red)
            BarMark(
                 x: .value("kind", data[1].kind),
                 y: .value("count", data[1].count),
                 width: 10
            )
            .foregroundStyle(.green)
            BarMark(
                 x: .value("kind", data[2].kind),
                 y: .value("count", data[2].count),
                 width: 10
            )
            .foregroundStyle(.blue)
            BarMark(
                 x: .value("kind", data[3].kind),
                 y: .value("count", data[3].count),
                 width: 10
            )
            .foregroundStyle(.yellow)
        }
    }
}

struct Pet: Identifiable {
    var kind: String
    var count: Double
    var id = UUID()
}

struct ChartScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChartScreen()
    }
}
