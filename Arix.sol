// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./Ownable.sol";
import "./draft-ERC20Permit.sol";

contract Arix is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor() ERC20("Arix", "ARIX") ERC20Permit("Arix") {
        _mint(msg.sender, 2000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
