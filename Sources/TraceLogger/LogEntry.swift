//
// LogEntry.swift
//
// This source file is part of the BrainObjects open source project
//
// Copyright (c) 2020 Tuparev Technologies and the BrainObjects project authors
// Licensed under MIT License
//
// See LICENSE for license information
// See CONTRIBUTORS.md for the list of BrainObjects project authors
//

import Foundation

/// LogEntry is the a data wrapper around a log message. It is lightweight and does not know how to propagate or how to
/// display itself. These are tasks for the logger and for the channel.
public struct LogEntry {

    let level: Level

    /// We use enhanced `os_log` message formats. See complete documentation for complete list
    var message: String?

    /// Many production systems relay on predefines table of error codes. Casual logging does not need codes.
    var code: Int?


    /// The levels are similar to Apple's `os_log` levels. Fatals feels like being a better name and we use it instead
    /// of `fault`. `Warning` is additional level. The step between `error` and `default` is too wide. There are problems
    /// that we can fix, but they are worth reporting and taking a special care. This is exactly the case for `warning`.
    /// Channeled to `os_log` interface `warnings` perhaps should be converted to `default` logs.
    public enum Level {
        case fatal
        case error
        case warning
        case `default`
        case info
        case debug
    }

    init(level: Level = .default, message: String?, code: Int?) {
        self.level = level
        self.message = message
        self.code = code
    }
}
