# Blockchain Voting System

Decentralized Voting System

## Dependencies

Install these prerequisites.

- NPM: https://nodejs.org
- Ganache: http://truffleframework.com/ganache/
- Metamask: https://metamask.io/


# Watch setup video [here](https://youtu.be/o0gpvbX4-7k)
or
# Step by step setup:
## Step 1. Clone the project
`git clone https://github.com/xrehpicx/BlockchainVotingSystem.git`

## Step 2. Install dependencies

```
$ cd BlockchainVotingSystem
$ npm run setup
```

## Step 3. Start Ganache

Open the Ganache GUI client that you downloaded and installed. This will start your local blockchain instance.

## Step 4. Compile & Deploy

```
$ truffle migrate --reset
```

if this command causes error run the following:
`$ npm install -g truffle`

You must migrate the smart contract each time your restart ganache.


## Step 5. Configure Metamask

- Connect metamask to your local Etherum blockchain provided by Ganache.
- Import an account provided by ganache.

## Step 6. Run the Front End Application
```
$ npm run dev 
```
Visit this URL in your browser: http://localhost:3000
