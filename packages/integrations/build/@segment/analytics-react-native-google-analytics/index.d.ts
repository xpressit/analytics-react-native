declare const GoogleAnalyticsIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = GoogleAnalyticsIntegration
