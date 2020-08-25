// Copyright 2020 LINE Corporation
//
// LINE Corporation licenses this file to you under the Apache License,
// version 2.0 (the "License"); you may not use this file except in compliance
// with the License. You may obtain a copy of the License at:
//
//    https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.

import Foundation
@_implementationOnly import submodule

public class SwiftGreeter: NSObject {

    public var submodule_greeter: submodule.SubModuleSwiftGreeter? = nil

    @objc public class func sayHi(name: String) {
        print("Hi \(name) from Swift")
    }

    @objc public class func callObjC(name: String) {
        MXDObjcGreeter.sayHi(name)
    }
    @objc public class func callSubModule(name: String) {
        submodule.SubModuleSwiftGreeter.sayHi(name: name)
    }
}
