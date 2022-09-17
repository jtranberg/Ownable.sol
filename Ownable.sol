//SPDX-license-identifier: MIT
pragma solidity ^0.8.7;

contract Ownable {
  address public owner;
  
  constructor() {
    owner = msg.sender;
  }
  modifier onlyOwner() {
    require(msg.sender == owner, "Not the Owner.");
    _;
  }

  function setOwner(address _newOwner) external onlyOwner {
    require(_newOwner != address(0), "Invalid address");
    owner = _newOwner;
  } 
  function onlyOwnerCanCallThisFunc() external onlyOwner {
   
  }

  function anyOneCanCall() external {

  }
}

