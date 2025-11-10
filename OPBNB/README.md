# Nebula3 GameFi Token (N3G) on OPBNB

**Nebula3Gamefi (N3G)** is an ERC-20-based Web3 game token deployed on **OPBNB**, supporting **Mint/Burn with Memo** functionality and **Authorized User management** for in-game token distribution.


## Technology Stack
- **Blockchain**: OPBNB (BNB Smart Chain Layer 2)  + other EVM-compatible chains
- **Smart Contracts**: Solidity ^0.8.27
- **Libraries**: OpenZeppelin Contracts ^5.4.0
- **Deployment**: Remix IDE
- **Frontend**: web3.js


## Supported Networks
- **OPBNB Mainnet** (Chain ID: 204)
- **OPBNB Testnet** (Chain ID: 5611)


## Contract Info
| Network | Contract Address |
|---------|----------------|
| OPBNB Mainnet | 0xaD00C426255c14786E1A4Ec6bc41D99920444e01 |


## Token Details
- **Name**: Nebula3Gamefi
- **Symbol**: N3G
- **Decimals**: 0
- **Standard**: ERC-20


## Features
- **ERC-20 Standard** – Compatible with major wallets and DEX platforms.
- **Authorized Users** –
  - Provides delegated permissions so that certain addresses can perform minting and burning without being the owner.
  - `addAuthorizedUser(address user)` – Owner adds a new authorized user.
  - `removeAuthorizedUser(address user)` – Owner removes an authorized user.
  - `isAuthorized(address user)` – Check whether an address is authorized (either an owner or authorized user).
  - **Security** – Only trusted addresses should be authorized to prevent misuse.
- **Mint & Burn with Memo** –
  - `mintWithMemo(address to, uint256 amount, string memo)` – Owner-only or Authorized Users minting with on-chain note.
  - `burnWithMemo(uint256 amount, string memo)` – Owner-only or Authorized Users can burn tokens with a memo.
- **Memo Limit** – Up to 64 bytes, preventing excessive gas usage.
- **Transparent Logging** – All mint and burn actions emit events for on-chain tracking.
- **Secure & Lightweight** – Built with OpenZeppelin 5.4.0 for maximum reliability.


## Security & Notes
- Owner has ultimate control.
- Authorized users must be carefully managed to prevent misuse of mint/burn functions.
- Memo length limited to 64 bytes to reduce gas costs.
- Built on OpenZeppelin 5.4.0 for safety and reliability.


## License
MIT License


