declare const LocalyticsIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = LocalyticsIntegration
