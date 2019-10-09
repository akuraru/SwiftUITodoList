import RealmSwift

class Todo: Object {
    enum State: Int, CaseIterable {
        case open, closed
    }
    
    @objc dynamic var label: String = ""
    @objc dynamic var state: Int = 0
    @objc dynamic private(set) var guid = UUID().uuidString
    @objc dynamic private(set) var app_created_at = Date()
    @objc dynamic private(set) var app_updated_at = Date()
    
    var stateValue: State { get { return State(rawValue: self.state)! } }
    
    override static func primaryKey() -> String? {
      return "guid"
    }
}

extension Todo: Identifiable {
    var id: String { get { return self.guid } }
}
