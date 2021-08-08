import UIKit
import SocketIO

class SocketManager: NSObject {
    
    private static var privateShared: SocketManager?
    static var shared: SocketManager {
        if privateShared == nil {
            DispatchQueue.global().sync (flags: .barrier) {
                if privateShared == nil {
                    privateShared = SocketManager()
                }
            }
        }
        return privateShared!
    }
}
