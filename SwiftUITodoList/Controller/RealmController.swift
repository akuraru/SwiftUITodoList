import RealmSwift

class RealmController {
    let realm: Realm
    
    init() {
        self.realm = try! Realm()
    }
    
    func todos() -> Results<Todo> {
        realm.objects(Todo.self).sorted(byKeyPath: "app_created_at")
    }
}
