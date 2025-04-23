// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract TransferETH {
    event AmountTransfer(address from, address to, uint amount);
    function transfer(address payable _to) public payable {
        _to.transfer(msg.value);
        emit AmountTransfer(msg.sender, _to, msg.value);
    }
}
