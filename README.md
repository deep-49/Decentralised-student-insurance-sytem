

<img width="258" alt="logo" src="https://github.com/user-attachments/assets/0d66dbdc-8290-4fb8-a2d7-298b9d78ada2">
<h1> Decentralized Student Insurance System </h1>

<h3>Overview</h3>
The Decentralized Student Insurance System is a blockchain-based platform designed to provide students with insurance coverage for their educational expenses, such as 
tuition fees. Built on the Ethereum blockchain using Solidity, this system offers a transparent, secure, and decentralized way to manage and claim insurance.

<h3>Key Features</h3>
1) Student Enrollment: Students can easily enroll in the insurance program by registering their Ethereum wallet.</br>
2) Premium Payments: Enrolled students pay their premiums in Ether (ETH).</br>
3) Claim Filing: Students can file claims to receive payouts for educational expenses.</br>
4) Claim Approval: An admin reviews and approves claims, releasing the insured amount to the student.</br>
5) Blockchain Security: All transactions and records are securely stored on the Ethereum blockchain, ensuring transparency and immutability.</br>

<h3>Smart Contract Details</h3>
1) Contract Address:0xb31D755898704f58066bf590898696716D8Efb23 </br>
2) Premium Amount: 1000(ETH) </br>

<h3>Prerequisites</h3>
1) Solidity version ^0.8.19 </br>
2) An Ethereum wallet (e.g., MetaMask) with test Ether (if deploying on a test network) </br>
3) Access to an Ethereum development environment (e.g., Remix, Hardhat, Truffle) </br>


<h3>Flowchart</h3>

```
   [Start] 
      | 
      v 
[Enroll Student]
      | 
      v 
[Pay Premium]
      | 
      v 
[File Claim] 
      |
      v
[Approve Claim] 
      |
      v
   [Payout] 
      |
      v
    [End]
```

<h3>Installation</h3>

```
1) Clone the Repository:
        git clone https://github.com/yourusername/your-repository.git
        cd your-repository
2) Install Dependencies (if using Hardhat or Truffle):
        npm install
3) Compile the Contract:
  For Remix: No additional steps required; the compiler is built-in.</br>
  For Hardhat or Truffle:

  npx hardhat compile
         or
  npx truffle compile
4) Deploy the Contract:

   For Remix: Open the StudentInsurance.sol file and use the "Deploy & Run Transactions" tab to deploy the contract. Enter the initial premium amount during deployment.
   For Hardhat or Truffle:
5) Create a deployment script (e.g., deploy.js for Hardhat or 2_deploy_contracts.js for Truffle) in the scripts or migrations directory.
   Run the deployment script:

   npx hardhat run scripts/deploy.js --network <network_name>
          or
   npx truffle migrate --network <network_name>
6) Verify Deployment:

   Obtain the contract address from the deployment output and verify it on Etherscan or a test network explorer.
7) Interact with the Contract:

   Use the contract address in Remix or connect via Hardhat/Truffle scripts to interact with the contract functions.
   ```

<h3>How It Works</h3>
1) Enroll: Students call the enrollStudent() function to register.</br>
2) Pay Premium: Students pay the insurance premium via the payPremium() function.</br>
3) File Claim: Students can file claims using the fileClaim() function if needed.</br>
4) Approve Claim: Admin reviews and approves claims with the approveClaim() function, releasing funds to the student.</br>

<h3>Deployment</h3>
Deploy the contract using an Ethereum development environment like Remix, setting the premium amount during deployment.</br>
Interact with the contract to manage enrollments, premiums, and claims.

<h3>Future Scope</h3>
1) Decentralized Governance: Transition to a decentralized autonomous organization (DAO) model where claim approvals are handled by a community voting mechanism.</br>
2) Multi-Currency Support: Introduce support for other cryptocurrencies and stablecoins for premium payments.</br>
3) Scholarship Integration: Partner with educational institutions to offer scholarships as part of the insurance benefits.</br>
4) Cross-Chain Compatibility: Expand the system to be compatible with other blockchain networks beyond Ethereum.</br>

<h3>Contact</h3>
For any queries or contributions, please contact:

Name: Deepika Rai </br>
Email: deepikabijai49@gmail.com </br>
GitHub: https://github.com/deep-49 </br>

