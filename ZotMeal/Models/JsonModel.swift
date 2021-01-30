import Foundation

class JsonModel {
    
    func loadJson(filename fileName: String) -> [Category]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                print("jsonData is \(jsonData)")
                return jsonData.categories
            } catch {
                print("error: \(error)")
            }
        }
        print("loadJson returns nil")
        return nil
    }
    
}