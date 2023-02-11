
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;
contract ques
{
    uint number;
     address public owner = msg.sender;
    constructor(){
        owner = msg.sender;
    }
    modifier access(address _accountHolder)
    {
        require(msg.sender==_accountHolder,"Sender not authorized");
        _;
    }
    function set(uint _number) public
    {
        number=_number;
    }
    function get() public view returns(uint)
    {
        return number;
    }
}