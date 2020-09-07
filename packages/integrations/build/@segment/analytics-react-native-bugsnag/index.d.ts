declare const BugsnagIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = BugsnagIntegration
