class RAEventEmitter: RCTEventEmitter {
    internal var hasListeners = false

    override func startObserving() {
        super.startObserving()
        self.hasListeners = true
    }

    override func stopObserving() {
        super.stopObserving()
        self.hasListeners = false
    }

    override func sendEvent(withName name: String!, body: Any!) {
        guard hasListeners else { return }
        super.sendEvent(withName: name, body: body)
    }

    override func supportedEvents() -> [String]! {
        return []
    }
}
