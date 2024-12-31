import UIKit


var urlComponents = URLComponents(string:
    "https://api.nasa.gov/planetary/apod")!
urlComponents.queryItems = [
    "api_key": "DEMO_KEY",
    "date": "2013-07-16"
].map { URLQueryItem(name: $0.key, value: $0.value) }
                                 


Task {
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    
    if let httpRsps = response as? HTTPURLResponse,
       httpRsps.statusCode == 200,
        let string = String(data: data, encoding: .utf8) {
            print(string)
            
        }
    }
    
    
    
    
    
    

