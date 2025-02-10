import UIKit

public class AchalaSecureResultModel: Codable {
    var score: String?
    var bitmapResultData: Data?  // Store the image as Data
    var status: String?
    var message: String?

    // Computed property to return the UIImage once data is decoded
    var bitmapResult: UIImage? {
        guard let data = bitmapResultData else { return nil }
        return UIImage(data: data)
    }

    // Initializer
    init(score: String? = nil, bitmapResultData: Data? = nil, status: String? = nil, message: String? = nil) {
        self.score = score
        self.bitmapResultData = bitmapResultData
        self.status = status
        self.message = message
    }

    // You can still use getter and setter methods if you prefer
    func getMessage() -> String? {
        return message
    }

    func setMessage(_ message: String) {
        self.message = message
    }

    func getStatus() -> String? {
        return status
    }

    func setStatus(_ status: String) {
        self.status = status
    }

    func getBitmapResult() -> UIImage? {
        return bitmapResult
    }

    func setBitmapResult(_ bitmapResult: UIImage) {
        self.bitmapResultData = bitmapResult.pngData() // Convert UIImage to Data
    }

    func getScore() -> String? {
        return score
    }

    func setScore(_ score: String) {
        self.score = score
    }
}
