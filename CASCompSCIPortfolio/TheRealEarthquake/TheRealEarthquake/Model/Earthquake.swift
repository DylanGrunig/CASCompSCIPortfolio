import Foundation


let sampleEarthquake = Earthquake(type: "type",
                                  properties: Properties(mag: 1.111, place: "Los Angeles", time: 111111, updated: 222222, type: "type", title: "Los Angeles Earthquake"), geometry:
                                    Geometry(type: "type", coordinates: [1.1,2.2]),
                                  id: "id")



// MARK: - AdviceData
struct Earthquakes: Codable {
    let type: String
    let metadata: Metadata
    let features: [Earthquake]
    let bbox: [Double]
}

// MARK: - Feature
struct Earthquake: Codable {
    let type: String
    let properties: Properties
    let geometry: Geometry
    let id: String
}

// MARK: - Geometry
struct Geometry: Codable {
    let type: String
    let coordinates: [Double]
}

// MARK: - Properties
struct Properties: Codable {
    let mag: Double
    let place: String
    let time, updated: Int
   
    let type, title: String
}

// MARK: - Metadata
struct Metadata: Codable {
    let generated: Int
    let url: String
    let title: String
    let status: Int
    let api: String
    let count: Int
}
