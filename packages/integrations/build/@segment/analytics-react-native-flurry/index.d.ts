declare const FlurryIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = FlurryIntegration
