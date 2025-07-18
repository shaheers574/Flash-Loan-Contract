# Flash Loan Contract

## Project Description
Flash Loan Contract is a Solidity-based smart contract deployed on the Core Testnet 2 network. It interacts with flash loan providers, allowing the user to borrow and repay loans within a single transaction. This project demonstrates the foundations of flash loan logic including security, access control, and integration points.

---

## Project Vision
To develop a robust and extensible flash loan platform that facilitates arbitrage, collateral swaps, and liquidation avoidance without upfront capital.

---

## Key Features
- 🧠 Flash loan initiation via external provider interface
- 🔐 Owner-only control for security
- 💸 ETH withdrawal functionality
- 🔌 Configured for Core Testnet 2

---

## Future Scope
- Integrate with popular DeFi protocols (Aave, Uniswap, etc.)
- Add support for ERC20 tokens
- Include event logs for transparency
- Build frontend interface for execution

---

## Deployment
Set up your `.env` with a private key and run:

```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network coreTestnet2
<img width="1919" height="1079" alt="Screenshot 2025-07-18 154633" src="https://github.com/user-attachments/assets/4bade990-2ac8-46e2-8680-3cccc79c6444" />
0x3ab9f8848203b563ba813fc6f974b8b4d19274a7043828a547822f5d9ab39bf3
