/////
////SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IFlashLoanProvider {
    function flashLoan(uint256 amount) external;
}

contract FlashLoanContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    // Receive loaned ETH and perform arbitrary logic
    function executeLoan() external payable {
        // Logic goes here - e.g., arbitrage, collateral swap
    }

    // Start flash loan
    function startFlashLoan(address lender, uint256 amount) external onlyOwner {
        IFlashLoanProvider(lender).flashLoan(amount);
    }

    // Withdraw funds (for owner only)
    function withdraw() external onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    receive() external payable {}
}








