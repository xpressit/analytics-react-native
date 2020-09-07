declare const TapstreamIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = TapstreamIntegration
