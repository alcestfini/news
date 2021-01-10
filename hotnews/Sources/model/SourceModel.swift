// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct SourceModel: Decodable {
    let status: String
    let sources: [Source]
}

// MARK: - Source
struct Source: Decodable {
    let id, name, sourceDescription: String
    let url: String
    let category: String
    let language, country: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case sourceDescription = "description"
        case url, category, language, country
    }
}

