declare const CountlyIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = CountlyIntegration
