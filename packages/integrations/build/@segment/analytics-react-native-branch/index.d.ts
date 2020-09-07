declare const BranchIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = BranchIntegration
