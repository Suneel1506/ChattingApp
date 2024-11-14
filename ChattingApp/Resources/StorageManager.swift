import Foundation
import FirebaseStorage

final class StorageManager {
    
    static let shared = StorageManager()
    
    private let storage = Storage.storage().reference()
    
    public typealias uploadProfilePictureCompletion = (Result<String, Error>) -> Void
    
    /// Uploads picture to Firebase Storage and returns completion with URL string to download
    public func uploadProfilePicture(with data: Data,
                                     fileName: String,
                                     completion: @escaping uploadProfilePictureCompletion) {
        storage.child("images/\(fileName)").putData(data) { metadata, error in
            if let error = error {
                print("Failed to upload data to Firebase for picture: \(error.localizedDescription)")
                completion(.failure(StorageError.failedToUpload))
                return
            }
            self.storage.child("images/\(fileName)").downloadURL(completion: { url, error in
                guard let url = url else {
                    print("failed to get downloadURL")
                    completion(.failure(StorageError.failedToGetDownloadURL))
                    return
                }
                
                let urlString = url.absoluteString
                print("download url returned: \(urlString)")
                completion(.success(urlString))
            })
        }
    }
    
    public enum StorageError: Error {
        case failedToUpload
        case failedToGetDownloadURL
    }
    
    
    public func downloadUrl(for path: String, completion:  @escaping (Result<URL, Error>) -> Void) {
        
        let reference = storage.child(path)
        
        reference.downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                completion(.failure(StorageError.failedToGetDownloadURL))
                return
            }
            completion(.success(url))
        })
    }
    
}
