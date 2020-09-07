declare const IntercomIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = IntercomIntegration
