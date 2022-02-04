//===----------------------------------------------------------------------===//
//
// This source file is part of the BrainObjects open source project
//
// Copyright (c) 2021-2022 Tuparev Technologies and the BrainObjects project
// authors.
// Licensed under MIT License Modern Variant
//
// See LICENSE for license information
// See CONTRIBUTORS.md for the list of BrainObjects project authors
//
// SPDX-License-Identifier: MIT-Modern-Variant
//
//===----------------------------------------------------------------------===//

import Foundation
import NIOCore
import NIOPosix
import SoftwareEtudes

//FIXME: Brainstorm!
// - Do we need to decide here on the protocol (TCP/IP or UDP)?
// - What protocols should we support? Some emerging binary stuff?
// - How to handle responses?

public class Service {

    public private(set) var name: String        // Name of the service
    public private(set) var subsystem: String?  // Used for logging and tracing
    public private(set) var label: String?      // Used for monitoring multiple instances 

    public internal(set) var isRunning = false
    
    init?(name: String) {
        self.name = name

        //TODO: Read command line arguments and environment (configuration)
        // Swift's own Arguments Parser is bag of unusable 💩💩💩. Until SoftwareEtudes replacement is ready, we must take few shortcuts...

        //TODO: Initiate Logging and Tracing
        // Defaults (could be overwritten) should define 2 channels:
        // - transient that includes all logs and traces
        // - persistent, that includes warnings, error, and fatal errors.

        //TODO: Initialise statistics
        // We need two output formats:
        // - for internal tools
        // - for external network tools like Prometheus

        //TODO: Configure the BranScan (process control and monitoring)
        // Similar to WebObjects. As a minimum, we need graceful starting and stopping the service, and while stopping - also refusing new requests. Also we need Bonjour / ZeroConf service configuration, so that services in the same domain can search and find this service. Perhaps by `name`?

        //TODO: Start accepting requests
    }
}


// Note: to get the binary's folder use: Process().executableURL


