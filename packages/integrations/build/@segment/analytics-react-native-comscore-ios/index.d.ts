declare const ComScoreIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = ComScoreIntegration
