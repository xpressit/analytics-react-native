declare const CleverTapIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = CleverTapIntegration
