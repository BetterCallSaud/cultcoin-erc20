// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract cultcoinToken is ERC20 {
    constructor() ERC20('CultCoin Token', 'CULT') {
        _mint(msg.sender, 10000);
    }
    function mint(address to, uint value) external {
        uint256 dayOfWeek = ((block.timestamp / 86400) + 4) % 7;
        require(dayOfWeek != 5);
        _mint(to, value);
    }
}