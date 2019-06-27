//
// ChainProtocol.swift
// ChainKit
//
// Create by wooseng with company's MackBook Pro on 2019/6/26.
// Copyright © 2019 上海稍息网络科技有限公司. All rights reserved.
//


import Foundation

public protocol ChainProtocol {
    
}

extension ChainProtocol {
    
    @discardableResult
    public func config(_ conf: (Self) -> Void) -> Self {
        conf(self)
        return self
    }
    
}
