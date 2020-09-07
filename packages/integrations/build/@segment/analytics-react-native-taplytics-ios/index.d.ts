declare const TaplyticsIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = TaplyticsIntegration
