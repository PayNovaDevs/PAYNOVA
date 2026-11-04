# PayNova (PNOVA) — Ethereum ERC-20 Token

<p align="center">
  <a href="https://auditforge.org/r/5ab7d1cc-d846-4beb-b86a-cdc8f7951899">
    <img src="https://auditforge.org/badge/5ab7d1cc-d846-4beb-b86a-cdc8f7951899.svg" alt="Audit Forge security score: 100/100" height="20">
  </a>
</p>

<p align="center">
  <strong>PayNova Token — PNOVA</strong><br>
  Ethereum Mainnet · Chain ID 1
</p>

<p align="center">
  <strong>Website:</strong> <a href="https://paynovabank.com/">paynovabank.com</a>
</p>

![ solidity ](https://img.shields.io/badge/Solidity-0.8.38-black?logo=solidity)
![openzeppelin](https://img.shields.io/badge/OpenZeppelin-5.x-blue)
![license](https://img.shields.io/badge/License-MIT-green)
![audit](https://img.shields.io/badge/Security-Audited-success)

---

## Official Links

| Resource | Link |
|---|---|
| Official Website | https://paynovabank.com/ |
| Token Information | https://paynovabank.com/token |
| X (Twitter) | https://x.com/PayNovaTeam |
| Ethereum Contract | [View on Etherscan](https://etherscan.io/address/0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5) |
| Verified Source Code | [Sourcify](https://repo.sourcify.dev/1/0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5) |
| Audit Forge | [Security Report](https://auditforge.org/r/5ab7d1cc-d846-4beb-b86a-cdc8f7951899) |
| CertiK | [Token Scan](https://skynet.certik.com/mobile/tools/token-scan/eth/0x32d003a187830dfd14865ba9dec6a346b6e0d5d5) |
| SolidityScan | [QuickScan Report](https://solidityscan.com/qs-report/21aa37c42213cfcfe8e12c1c931ebf50/7795f93202c59cfb/1cccfb5f133eb443) |

---

## Overview

**PayNova (PNOVA)** is the token of the PayNova ecosystem, a financial technology project focused on connecting traditional payment infrastructure with blockchain-based financial services.

PNOVA is deployed on **Ethereum Mainnet** as an ERC-20 token.

The documented token utility is designed to support staking-related benefits, tier eligibility, cashback incentives, fee-discount eligibility and access to premium ecosystem features.

The project's documented architecture describes a hybrid model in which high-frequency financial operations may be processed off-chain while token-related operations and blockchain records are handled on-chain. Feature availability depends on implementation and deployment status.

---

## Contract Information

| Property | Value |
|---|---|
| Token Name | PayNova Token |
| Token Symbol | PNOVA |
| Blockchain | Ethereum Mainnet |
| Chain ID | 1 |
| Token Standard | ERC-20 |
| Contract Address | `0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5` |
| Documented Maximum Supply | 5,000,000,000 PNOVA |
| Decimals | 18 (documented tokenomics parameter; confirm against contract) |
| Compiler | Solidity 0.8.38 (Sourcify metadata) |
| Source Verification | Sourcify — Exact Match |

### Contract Address

```text
0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5
```

The documented maximum supply should not be confused with the current on-chain `totalSupply()` or circulating supply. Consult the contract and blockchain explorer for current on-chain values.

---

## Token Utility

The project's documentation describes five primary utility areas for PNOVA:

1. **Staking & Tier Elevation** — staking-related participation intended to support user tier eligibility.
2. **Cashback Benefits** — eligibility for token-based cashback incentives, subject to program conditions.
3. **Fee Discount Eligibility** — potential preferential fee conditions based on applicable tier requirements.
4. **Premium Features** — access to selected premium features within the PayNova ecosystem.
5. **Ecosystem Incentives** — incentive alignment among users, partners and ecosystem participants.

These are documented utility objectives. They should not be interpreted as confirmation that every feature is currently live or implemented in the deployed token contract.

---

## PayNova Rewards

The documented rewards architecture distinguishes between token cashback and referral rewards.

| Program | Reward Asset | Processing |
|---|---|---|
| Cashback | PNOVA | Subject to program conditions |
| Referral Rewards | USDC | Off-chain accumulation with bi-weekly processing |

Referral rewards denominated in USDC are separate from PNOVA token cashback.

---

## Hybrid Financial Architecture

The project's documentation describes two complementary layers.

### Off-chain Layer

Designed for high-frequency financial operations, including:

- Card transactions.
- Fiat conversions.
- Internal transfers.
- Transaction fee accounting.
- Referral reward accumulation.
- Payment processing.

### On-chain Layer

Designed for blockchain-based operations, including:

- PNOVA token supply.
- Staking-related logic.
- Cashback distribution.
- Tier verification.
- Incentive transparency.

The contract address in this README identifies the PNOVA token deployed on Ethereum Mainnet. The existence of this token contract does not by itself establish that every ecosystem feature listed above is deployed on-chain.

---

## Security & Verification

PayNova provides public links to source verification and third-party automated security-analysis reports.

### Sourcify — Source Verification

[![Sourcify Exact Match](https://img.shields.io/badge/Sourcify-Exact%20Match-success)](https://repo.sourcify.dev/1/0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5)

The published Sourcify page identifies the contract source as an **Exact Match** on Ethereum Mainnet.

[View verified source code](https://repo.sourcify.dev/1/0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5)

### Audit Forge

[![Audit Forge: 100/100](https://auditforge.org/badge/5ab7d1cc-d846-4beb-b86a-cdc8f7951899.svg)](https://auditforge.org/r/5ab7d1cc-d846-4beb-b86a-cdc8f7951899)

The supplied Audit Forge report displays a **100/100** security score.

[View Audit Forge report](https://auditforge.org/r/5ab7d1cc-d846-4beb-b86a-cdc8f7951899)

### CertiK Skynet

[View PNOVA Token Scan](https://skynet.certik.com/mobile/tools/token-scan/eth/0x32d003a187830dfd14865ba9dec6a346b6e0d5d5)

Consult the live report for its current risk indicators and findings, including holder concentration. Automated token scans are not equivalent to a comprehensive manual smart contract audit.

### SolidityScan

[View SolidityScan QuickScan report](https://solidityscan.com/qs-report/21aa37c42213cfcfe8e12c1c931ebf50/7795f93202c59cfb/1cccfb5f133eb443)

Consult the linked report for its findings and current assessment.

### Security Disclaimer

Source-code verification confirms correspondence between published source and deployed bytecode under the verification provider's process; it does not certify that the contract is free of vulnerabilities.

Automated security scanners can identify potential risks but do not replace a comprehensive independent manual audit. Scores and findings may change as providers update their analysis.

---

## Development & Compilation

The verified contract source and compiler metadata can be inspected through Sourcify.

**Compiler version identified in the published Sourcify metadata:**

```text
Solidity 0.8.38
```

To inspect the deployed contract:

1. Open the Sourcify contract page.
2. Review the source files and compiler metadata.
3. Inspect the ABI.
4. Compare the verified source and deployed contract information.

[Open PNOVA on Sourcify](https://repo.sourcify.dev/1/0x32d003A187830dFD14865bA9Dec6A346B6e0D5d5)

---

## License

This project is distributed under the **MIT License**, subject to the terms of the repository's `LICENSE` file.

---

## Contact & Community

**Official Website:** https://paynovabank.com/

**X / Twitter:** https://x.com/PayNovaTeam

For technical questions, ecosystem integrations and partnership inquiries, contact the PayNova team through its official channels.

---

<p align="center">
  <strong>PayNova — Connecting Financial Infrastructure with Web3.</strong>
</p>
