//
// Chain_UIView.swift
// ChainKit
//
// Create by wooseng with company's MackBook Pro on 2019/6/26.
// Copyright © 2019 上海稍息网络科技有限公司. All rights reserved.
//


import UIKit
import SnapKit

extension UIView: ChainProtocol {
    
    /// 将视图添加指定视图上
    @discardableResult
    public func addTo(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
    
    /// 添加手势识别器
    @discardableResult
    public func add(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        self.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
}

//MARK: - 约束相关链式方法
extension UIView {
    
    @discardableResult
    public func makeConstraints(_ constraints: (ConstraintMaker) -> Void) -> Self {
        snp.makeConstraints(constraints)
        return self
    }
    
    @discardableResult
    public func remakeConstraints(_ constraints: (ConstraintMaker) -> Void) -> Self {
        snp.remakeConstraints(constraints)
        return self
    }
    
    @discardableResult
    public func updateConstraints(_ constraints: (ConstraintMaker) -> Void) -> Self {
        snp.updateConstraints(constraints)
        return self
    }
    
}
