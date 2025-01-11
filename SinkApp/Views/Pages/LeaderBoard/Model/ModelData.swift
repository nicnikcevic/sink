/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Storage for model data.
*/

import Foundation

var leaders: [Leader] =
    load("leaderData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch DecodingError.keyNotFound(let key, let context) {
        fatalError("Missing key '\(key.stringValue)' in \(filename):\n\(context.debugDescription)")
    } catch DecodingError.typeMismatch(let type, let context) {
        fatalError("Type mismatch for type '\(type)' in \(filename):\n\(context.debugDescription)")
    } catch DecodingError.valueNotFound(let type, let context) {
        fatalError("Missing value for type '\(type)' in \(filename):\n\(context.debugDescription)")
    } catch DecodingError.dataCorrupted(let context) {
        fatalError("Data corrupted in \(filename):\n\(context.debugDescription)")
    } catch {
        fatalError("Unknown error decoding \(filename):\n\(error)")
    }
}
