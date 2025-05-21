// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BankLedger {
    address public owner;

    struct BlockRecord {
        string sender;       // Changed from address to string
        string receiver;     // Changed from address to string
        uint256 amount;
        string creatorId;
        uint256 timestamp;
        bytes32 prevHash;
        uint256 nonce;
        bytes32 hash;
    }

    BlockRecord[] public chain;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    constructor() {
        owner = msg.sender;
        _addBlock("genesis_sender", "genesis_receiver", 0, "genesis", 0x0);
    }

    function _calculateHash(
        string memory _sender,
        string memory _receiver,
        uint256 _amount,
        string memory _creatorId,
        uint256 _timestamp,
        bytes32 _prevHash,
        uint256 _nonce
    ) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(_sender, _receiver, _amount, _creatorId, _timestamp, _prevHash, _nonce));
    }

    function _addBlock(
        string memory _sender,
        string memory _receiver,
        uint256 _amount,
        string memory _creatorId,
        bytes32 _prevHash
    ) internal {
        uint256 nonce = 0;
        uint256 timestamp = block.timestamp;
        bytes32 hash = _calculateHash(_sender, _receiver, _amount, _creatorId, timestamp, _prevHash, nonce);

        chain.push(BlockRecord(_sender, _receiver, _amount, _creatorId, timestamp, _prevHash, nonce, hash));
    }

    function addTransaction(
        string memory _sender,
        string memory _receiver,
        uint256 _amount,
        string memory _creatorId
    ) public onlyOwner {
        require(_amount > 0, "Amount must be greater than zero");
        bytes32 prevHash = chain[chain.length - 1].hash;
        _addBlock(_sender, _receiver, _amount, _creatorId, prevHash);
    }

    function getAllBlocks() public view returns (BlockRecord[] memory) {
        return chain;
    }
}
