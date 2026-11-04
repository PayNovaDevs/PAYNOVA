// SPDX-License-Identifier: MIT
pragma solidity 0.8.38;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

/**
 * @title PayNova (PNOVA)
 *
 * @author PayNova
 *
 * @notice Official token of the PayNova hybrid financial technology
 *         ecosystem, connecting traditional financial services with
 *         blockchain-based digital assets and Web3 infrastructure.
 *
 * @dev PROJECT OVERVIEW
 *
 *      PayNova is a fintech ecosystem designed to bridge conventional
 *      financial services and blockchain infrastructure through a
 *      unified digital financial experience.
 *
 *      The broader PayNova ecosystem is intended to encompass:
 *
 *      - Digital wallet and crypto asset management.
 *      - Cryptocurrency and fiat payment infrastructure.
 *      - International remittance services.
 *      - International payment card services.
 *      - Crypto-to-fiat and fiat-to-crypto conversion.
 *      - Blockchain-based financial infrastructure.
 *      - Digital asset exchange integrations.
 *
 *      OFFICIAL WEBSITE
 *
 *      Website: https://paynovabank.com
 *      Brand: PayNova
 *      Token: PayNova
 *      Symbol: PNOVA
 *
 *      ECOSYSTEM INFRASTRUCTURE
 *
 *      The broader PayNova project references integrations and
 *      infrastructure components including:
 *
 *      - Guardarian: fiat-to-crypto and crypto-to-fiat
 *        on-ramp/off-ramp infrastructure.
 *      - ChangeNOW: cryptocurrency exchange and conversion
 *        services through API integration.
 *      - BitGo: institutional digital asset custody infrastructure.
 *      - Novacard: international payment card ecosystem.
 *
 *      These are ecosystem-level references. Their availability,
 *      implementation, commercial relationship, and authorization
 *      are separate from this token contract and must be verified
 *      independently.
 *
 *      BLOCKCHAIN INFRASTRUCTURE
 *
 *      This contract uses the ERC-20 standard and is suitable for
 *      deployment on Ethereum-compatible networks.
 *
 *      The broader PayNova ecosystem may reference Ethereum and
 *      Avalanche infrastructure. Each network deployment requires
 *      a separate contract deployment and independent verification.
 *
 *      TOKEN SPECIFICATIONS
 *
 *      Token Name: PayNova
 *      Token Symbol: PNOVA
 *      Token Standard: ERC-20
 *      Decimals: 18
 *      Maximum Supply: 5,000,000,000 PNOVA
 *      Initial Supply: 5,000,000,000 PNOVA
 *      Minting: Initial mint at deployment only
 *      Supply Model: Fixed maximum supply
 *      Transfer Tax: None in this contract
 *      Transfer Fees: None in this contract
 *
 *      TOKENOMICS AND SUPPLY POLICY
 *
 *      The complete maximum supply of 5 billion PNOVA is minted
 *      once during deployment and allocated to the deployer's
 *      address.
 *
 *      No additional minting function or administrative minting
 *      authority is implemented.
 *
 *      Holders may voluntarily burn tokens through the
 *      ERC20Burnable implementation. Consequently, the circulating
 *      and total supply can decrease, but cannot be increased above
 *      the original maximum supply.
 *
 *      SECURITY AND STANDARD COMPLIANCE
 *
 *      This implementation uses OpenZeppelin Contracts v5.x and
 *      incorporates:
 *
 *      - ERC-20 standard transfer, allowance and approval functions.
 *      - ERC-20 Burnable functionality.
 *      - ERC-2612 Permit for signature-based approvals.
 *      - ERC-20 Capped supply enforcement.
 *      - Solidity 0.8.x checked arithmetic.
 *
 *      CONTRACT DESIGN PRINCIPLES
 *
 *      - No transfer taxes or hidden contract-level fees.
 *      - No blacklist or address restriction mechanism.
 *      - No owner-controlled pause functionality.
 *      - No additional token minting.
 *      - No privileged administrative minting.
 *      - No upgradeability mechanism.
 *
 *      IMPORTANT SCOPE LIMITATION
 *
 *      This contract implements the PNOVA token only. It does not
 *      independently implement bank accounts, fiat deposits or
 *      withdrawals, custody, remittances, payment cards, staking,
 *      exchange services, or banking functionality.
 *
 *      Those services belong to the broader PayNova ecosystem and
 *      depend on their respective infrastructure, service providers,
 *      integrations, contractual arrangements, and regulatory
 *      requirements.
 *
 * @custom:project PayNova
 * @custom:brand PayNova
 * @custom:website https://paynovabank.com
 * @custom:token-name PayNova
 * @custom:token-symbol PNOVA
 * @custom:token-standard ERC20
 * @custom:decimals 18
 * @custom:network Ethereum
 * @custom:ecosystem-networks Ethereum
 * @custom:max-supply 5000000000
 * @custom:initial-supply 5000000000
 * @custom:supply-model Fixed Supply
 * @custom:inflation None
 * @custom:minting Initial Deployment Only
 * @custom:burnable true
 * @custom:permit EIP-2612
 * @custom:cap-enforced true
 * @custom:transfer-tax None
 * @custom:admin-minting None
 * @custom:upgradeability None
 * @custom:ecosystem Hybrid Fintech and Web3 Infrastructure
 * @custom:integrations Guardarian, ChangeNOW, Nova card
 * @custom:license MIT
 */
contract PNOVA is ERC20, ERC20Burnable, ERC20Permit, ERC20Capped {
    /// @notice Token decimal precision.
    uint8 private constant _DECIMALS = 18;

    /**
     * @notice Maximum token supply.
     * @dev 5 billion PNOVA with 18 decimal places.
     */
    uint256 public constant MAX_SUPPLY = 5_000_000_000 * (10 ** 18);

    /**
     * @notice Deploys the official PayNova token.
     *
     * @dev Initializes ERC-20, EIP-2612 Permit functionality,
     *      and capped supply enforcement. The complete maximum
     *      supply is minted to the deployer's address.
     *
     *      No further minting is possible through this contract.
     *
     * @custom:initial-recipient Deployer
     * @custom:initial-allocation 5000000000 PNOVA
     */
    constructor()
        ERC20("PayNova", "PNOVA")
        ERC20Permit("PayNova")
        ERC20Capped(MAX_SUPPLY)
    {
        _mint(msg.sender, MAX_SUPPLY);
    }

    /**
     * @notice Returns the token decimal precision.
     * @return The number of decimals (18).
     */
    function decimals() public pure override returns (uint8) {
        return _DECIMALS;
    }

    /**
     * @dev Enforces the ERC20Capped supply restriction through
     *      the OpenZeppelin v5 update mechanism.
     *
     *      All token balance updates pass through this function.
     */
    function _update(
        address from,
        address to,
        uint256 value
    )
        internal
        override(ERC20, ERC20Capped)
    {
        super._update(from, to, value);
    }
}
