
import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
}

//MARK: - Account Management
extension DatabaseManager {
    
    public func userExists(with email: String,
                           completion: @escaping ((Bool) -> Void)) {
        var safeEmail = email.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
        
        // Use the safeEmail here instead of email
        database.child(safeEmail).observe(.value) { snapshot in
            guard snapshot.value as? String != nil else {
                completion(false)
                return
            }
            completion(true)
        }
    }
    
    /// Insersts new user to database
    public func insertUser(with user: chatAppUser) {
        database.child(user.safeEmail).childByAutoId().setValue([
            "first_name": user.firstName,
            "last_name": user.lastName
        ])
    }
}

struct chatAppUser: Codable {
    let firstName: String
    let lastName: String
    let email: String
    
    var safeEmail: String {
        var safeEmail = email.replacingOccurrences(of: ".", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "@", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "[", with: "-")
        safeEmail = safeEmail.replacingOccurrences(of: "]", with: "-")
        return safeEmail
    }
}
