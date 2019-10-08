import RealmSwift

class Todo: Object {
    enum State: Int, CaseIterable {
        case open, closed
    }
    
    dynamic var label: String = ""
    dynamic var state: Int = 0
    dynamic private(set) var guid = UUID().uuidString
    dynamic private(set) var app_created_at = Date()
    dynamic private(set) var app_updated_at = Date()
    
    var stateValue: State { get { return State(rawValue: self.state)! } }
    
    override static func primaryKey() -> String? {
      return "id"
    }
}
