//SPDX-License-Identifier: Mit 
pragma solidity ^0.8.11;

contract VendingMachine{
    address public owner;
    mapping (address => uint) public donutBalances;


    constructor () {
        owner= msg.sender; //etherium address of the originator  of the function call or the transaction, give address of the person who deployed the contract 
        donutBalances[address(this)] =100; // this-address of the current contract, balance of the vm,
    }
    function getVendingMachineBalance() public view returns (uint){
        return donutBalances[address(this)];
    }

    function restock(uint amount) public {
        require(msg.sender == owner, "Only the owner can restock  this machine");
        donutBalances[address(this)] += amount;
    }

    function purchase(uint amount) public payable  {
        require(msg.value >= amount * 2 ether, "You must pay at least 2 ether per donut" );
        require(donutBalances[address(this)] >=amount, "Not enough donuts in stock to fulfill purchase request" );
        donutBalances[address(this)] -= amount; 
        donutBalances[msg.sender] += amount; 
    } 
    //payable is used for any function which needs to receive ether
}