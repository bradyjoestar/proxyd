#!/bin/bash

##Getting Blocks
## Retrieves information from a particular block in the blockchain.
#eth_blockNumber = "main"
#eth_getBlockByNumber = "main"
#eth_getBlockByHash = "main"
#eth_getBlockTransactionCountByNumber = "main"
#eth_getBlockTransactionCountByHash = "main"
#eth_getBlockRange = "main"

##Getting Uncles
##Returns information on uncle blocks which are network rejected blocks and replaced by a canonical block instead.
#eth_getUncleByBlockHashAndIndex = "main"
#eth_getUncleByBlockNumberAndIndex = "main"
#eth_getUncleCountByBlockHash = "main"
#eth_getUncleCountByBlockNumber = "main"

##Getting hash( alchemy not inculded)
#eth_getHeaderByNumber = "main"
#eth_getHeaderByHash = "main"

##Reading Transactions
##Retrieves information on the state data for addresses regardless of whether it is a user or a smart contract.
#eth_getTransactionByBlockHashAndIndex = "main"
#eth_getTransactionByBlockNumberAndIndex = "main"
#eth_getRawTransactionByBlockNumberAndIndex = "main"   #( alchemy not inculded)
#eth_getRawTransactionByBlockHashAndIndex = "main"     #( alchemy not inculded)
#eth_getTransactionCount = "main"
#eth_getTransactionByHash = "main"
#eth_getTransactionReceipt = "main"
#eth_getRawTransactionByHash = "main"

##Writing Transactions & EVM Execution
##Allows developers to both send ETH from one address to another, write data on-chain, and interact with smart contracts.
#eth_call = "main"
#eth_sendRawTransaction = "main"
#eth_resend = "main" #Getting hash( alchemy not inculded)

##Account Information
##Returns information regarding an address's stored on-chain data.
#eth_getBalance = "main"
#eth_accounts = "main"        [forbidden]
#eth_getProof = "main"
#eth_getCode = "main"
#eth_getStorageAt = "main"

##Event Logs
##Returns logs which are records that denote/provide context on specific events within a smart contract, like a token transfer or a change of ownership for example.
#eth_getLogs = "main"
#eth_newFilter = "main"
#eth_newBlockFilter = "main"
#eth_newPendingTransactionFilter = "main"
#eth_getFilterLogs = "main"
#eth_getFilterChanges = "main"
#eth_uninstallFilter = "main"

##Chain Information
##Returns information on the Optimism network and internal settings.
#eth_protocolVersion = "main"
#eth_chainId = "main"
#net_listening = "main"
#eth_syncing = "main"
#net_version = "main"

##Gas Estimation
#eth_estimateGas = "main"
#eth_gasPrice = "main"

##Real-time Events
##Introduces WebSocket-based requests/responses which leverage a network connection allowing developers to listen for changes continuously without the need for HTTP polling.
#eth_subscribe = "main"
#eth_unsubscribe = "main"

## txstatus,added for txstatus
#eth_getTxStatusByHash = "main"
#eth_getTxStatusDetailByHash = "main"
#
## rollup api
#rollup_getInfo = "main"   #( alchemy not inculded)
#rollup_gasPrices = "main" #( alchemy not inculded)


##Getting Blocks
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}'

# Request
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["0x1b4", true],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBlockByHash","params":["0xdc0818cf78f21a8e70579cb46a43643f78291264dda342ae31049421c82d21ae", false],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBlockTransactionCountByNumber","params":["0xe8"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBlockTransactionCountByHash","params":["0xb903239f8543d04b5dc1ba6579132b143087c68db1b2168786408fcbce568238"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBlockRange","params":["0x1", "0x2", false],"id":1}'

##Getting Uncles
##Returns information on uncle blocks which are network rejected blocks and replaced by a canonical block instead.
# Request
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getUncleByBlockHashAndIndex","params":["0xc6ef2fc5426d6ad6fd9e2a26abeab0aa2411b7ab17f30a99d3cb96aed1d1055b", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getUncleByBlockNumberAndIndex","params":["0x29c", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getUncleCountByBlockHash","params":["0xb903239f8543d04b5dc1ba6579132b143087c68db1b2168786408fcbce568238"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getUncleCountByBlockNumber","params":["0xe8"],"id":1}'

##Getting hash( alchemy not inculded)
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getHeaderByNumber","params":["0xe8"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getHeaderByHash","params":["0xb903239f8543d04b5dc1ba6579132b143087c68db1b2168786408fcbce568238"],"id":1}'

##Reading Transactions
##Retrieves information on the state data for addresses regardless of whether it is a user or a smart contract.
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTransactionByBlockHashAndIndex","params":["0xc6ef2fc5426d6ad6fd9e2a26abeab0aa2411b7ab17f30a99d3cb96aed1d1055b", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data  '{"jsonrpc":"2.0","method":"eth_getTransactionByBlockNumberAndIndex","params":["0x29c", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getRawTransactionByBlockHashAndIndex","params":["0xc6ef2fc5426d6ad6fd9e2a26abeab0aa2411b7ab17f30a99d3cb96aed1d1055b", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data  '{"jsonrpc":"2.0","method":"eth_getRawTransactionByBlockNumberAndIndex","params":["0x29c", "0x0"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTransactionCount","params":["0x407d73d8a49eeb85d32cf465507dd71d507100c1","latest"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTransactionByHash","params":["0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTransactionReceipt","params":["0x85d995eba9763907fdf35cd2034144dd9d53ce32cbec21349d4b12823c6860c5"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getRawTransactionByHash","params":["0x88df016429689c079f3b2f6ad39fa052532c56795b733da78a91ebe6a713944b"],"id":1}'



##Writing Transactions & EVM Execution
##Allows developers to both send ETH from one address to another, write data on-chain, and interact with smart contracts.
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_call","params":["0x1"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_sendRawTransaction","params":["0x1"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_resend","params":["0x1","0x2","0x3"],"id":1}'

curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getBalance","params":["0x407d73d8a49eeb85d32cf465507dd71d507100c1", "latest"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"method":"eth_getProof","params":["0x7F0d15C7FAae65896648C8273B6d7E43f58Fa842",["0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421"],"latest"],"id":1,"jsonrpc":"2.0"}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getCode","params":["0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b", "0x2"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getCode","params":["0xa94f5374fce5edbc8e2a8697c15331677e6ebf0b", "0x2"],"id":1}'

curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getLogs","params":[{"topics":["0x000000000000000000000000a94f5374fce5edbc8e2a8697c15331677e6ebf0b"]}],"id":74}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_newFilter","params":[{"topics":["0x12341234"]}],"id":73}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_newBlockFilter","params":[],"id":73}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_newPendingTransactionFilter","params":[],"id":73}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getFilterChanges","params":["0x16"],"id":73}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getFilterLogs","params":["0x16"],"id":74}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_uninstallFilter","params":["0xb"],"id":73}'


curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_protocolVersion","params":[],"id":67}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_chainId","params":[],"id":67}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"net_listening","params":[],"id":67}'

curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_estimateGas","params":[],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_gasPrice","params":[],"id":73}'

curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTxStatusByHash","params":["0x550cd5866fcb562ee3355c5040d10097990cbe15e8b48d980e82ee70021dfa55"],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data '{"jsonrpc":"2.0","method":"eth_getTxStatusDetailByHash","params":["0x550cd5866fcb562ee3355c5040d10097990cbe15e8b48d980e82ee70021dfa55"],"id":1}'


curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data  '{"jsonrpc":"2.0","method":"rollup_getInfo","params":[],"id":1}'
curl -X POST -H 'Content-Type: application/json' http://localhost:8080 --data  '{"jsonrpc":"2.0","method":"rollup_gasPrices","params":[],"id":73}'
