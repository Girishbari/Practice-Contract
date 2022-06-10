//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Escrow {
    address public payer;
    address payable public payee;
    address public thirdparty;
    uint256 public amount;

    constructor(
        address _payer,
        address payable _payee,
        uint256 _amount
    ) {
        payer = _payer;
        payee = _payee;
        thirdparty = msg.sender;
        amount = _amount;
    }

    modifier onlyThirdParty() {
        require(thirdparty == msg.sender, "only thirdParty can release funds");
        _;
    }

    function deposit() public payable {
        require(msg.sender == payer, "Sender must be the payer");
        require(
            address(this).balance <= amount,
            "Cant send more than escrow amount"
        );
    }

    function release() public onlyThirdParty {
        require(
            amount == address(this).balance,
            "cannot release funds before full amount is sent"
        );
        payable(payee).transfer(amount);
    }

    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }
}
