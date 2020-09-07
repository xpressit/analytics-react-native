declare const CrittercismIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = CrittercismIntegration
