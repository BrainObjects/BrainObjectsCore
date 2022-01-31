//
//  Service.swift
//  
//
//  Created by Georg Tuparev on 31/01/2022.
//

import Foundation
import NIOCore
import NIOPosix
import SoftwareEtudes

public class Service {

    public init?(name: String) {
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
