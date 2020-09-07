declare const QuantcastIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = QuantcastIntegration
