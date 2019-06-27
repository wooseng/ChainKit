//
// Chain_UIControl.swift
// ChainKit
//
// Create by wooseng with company's MackBook Pro on 2019/6/26.
// Copyright © 2019 上海稍息网络科技有限公司. All rights reserved.
//


import UIKit

fileprivate let KEY_CONTROL_TARGETS = UnsafeRawPointer(bitPattern: "key.control.targets".hashValue)

extension UIControl {
    
    /// 追加一个事件，不会因为事件已存在而放弃
    @discardableResult
    public func addEvent(_ event: UIControl.Event, _ callback: @escaping (_ sender: Any) -> Void) -> Self {
        let target = _Control(event, callback)
        addTarget(target, action: #selector(_Control.invoke(_:)), for: event)
        allTargets.append(target)
        return self
    }
    
    /// 设置事件，会先将已经设置的事件全部移除
    @discardableResult
    public func setEvent(_ event: UIControl.Event, _ callback: @escaping (_ sender: Any) -> Void) -> Self {
        return removeAllEvents().addEvent(event, callback)
    }
    
    /// 移除所有的事件
    @discardableResult
    public func removeAllEvents() -> Self {
        allTargets.forEach {
            self.removeTarget($0, action: nil, for: .allEvents)
        }
        allTargets.removeAll()
        return self
    }
    
    private var allTargets: [_Control] {
        set {
            guard let key = KEY_CONTROL_TARGETS else {
                return
            }
            objc_setAssociatedObject(self, key, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            guard let key = KEY_CONTROL_TARGETS else {
                return []
            }
            return objc_getAssociatedObject(self, key) as? [_Control] ?? []
        }
    }
}

fileprivate class _Control {
    
    private var callback: (Any) -> Void
    private var event: UIControl.Event
    
    init(_ event: UIControl.Event, _ callback: @escaping (Any) -> Void) {
        self.event = event
        self.callback = callback
    }
    
    @objc func invoke(_ sender: Any) {
        callback(sender)
    }
    
}


