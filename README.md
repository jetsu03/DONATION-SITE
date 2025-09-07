# KindnessPiggy - Blockchain Charity Game 🐷
A blockchain-powered charity game where you feed a piggy bank with crypto donations and earn badges for your contributions! Built with Hardhat local blockchain, MetaMask, and real blockchain transactions.

## 🎮 Features
- 🐷 Interactive piggy bank game with animations
- 💰 Real blockchain donations on local Hardhat network
- 🏆 Badge system (1, 2, 3 badges for milestones)
- 🎉 Celebration animations and confetti
- 📊 Progress tracking and statistics
- 🔧 Full Hardhat development environment

## **Complete Step-by-Step Guide**
### **Prerequisites**
- Node.js installed (v16 or higher)
- MetaMask browser extension
- Git (optional, for cloning)

---

## **Step 1: Open Terminal & Navigate to Project**
```bash
# Open PowerShell/Command Prompt
# Navigate to your project folder
cd D:\Donation-site
```

---

## **Step 2: Install Dependencies (if not done)**
```bash
npm install
```

---

## **Step 3: Start Hardhat Local Blockchain**
```bash
npm run node
```

**What happens:**
- Starts local blockchain on port 8545
- Creates 20 test accounts with 10,000 ETH each
- Shows private keys for each account
- **KEEP THIS TERMINAL OPEN!**

**Example output:**
```
Started HTTP and WebSocket JSON-RPC server at http://127.0.0.1:8545/

Accounts
========
Account #0: 0xf39...66 (10000 ETH)
Private Key: 0xac..80

Account #1: 0x70..C8 (10000 ETH)
Private Key: 0x59..0d
```

---

## **Step 4: Import Account to MetaMask**

1. **Copy a private key** from the terminal (starts with `0x`)
2. **Open MetaMask** in your browser
3. **Click account icon** (top right)
4. **Click "Import Account"**
5. **Paste the private key** and click "Import"
6. **You now have 10,000 test ETH!**

---

## **Step 5: Add Hardhat Network to MetaMask**

1. **In MetaMask**, click the network dropdown (top center)
2. **Click "Add Network"** → **"Add a network manually"**
3. **Enter these details:**
   - **Network Name:** `Hardhat Local`
   - **RPC URL:** `http://127.0.0.1:8545`
   - **Chain ID:** `31337`
   - **Currency Symbol:** `ETH`
   - **Block Explorer URL:** (leave empty)
4. **Click "Save"**

---

## **Step 6: Deploy Smart Contract (Optional)**
```bash
# Open a NEW terminal window
# Navigate to project folder
cd D:\Donation-site

# Deploy the contract
npm run deploy:localhost
```

**What happens:**
- Deploys DonationPiggy.sol contract
- Shows contract address
- **Copy this address for later use**

**Example output:**
```
DonationPiggy deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
```

---

## **Step 7: Start Web Server**
```bash
# In the SAME terminal as Step 6 (or open another)
npx serve -l 5500 .
```

**What happens:**
- Starts web server on port 5500
- Serves your HTML/CSS/JS files
- **KEEP THIS TERMINAL OPEN TOO!**

**Example output:**
```
Serving!
- Local:    http://localhost:5500
- Network:  http://192.168.0.103:5500
```

---

## **Step 8: Open the Game**
1. **Open your browser**
2. **Go to:** `http://localhost:5500/trial1.html`

---

## **Step 9: Connect Wallet & Play**
1. **Click "CONNECT WALLET"** button
2. **Approve connection** in MetaMask
3. **Make sure you're on "Hardhat Local" network**
4. **Enter recipient address:**
   - Use the contract address from Step 6, OR
   - Use any valid Ethereum address (0x...)
5. **Click donate buttons** (5, 20, or 50 coins)
6. **Approve transactions** in MetaMask
7. **Watch the piggy fill up and burst!**

---
