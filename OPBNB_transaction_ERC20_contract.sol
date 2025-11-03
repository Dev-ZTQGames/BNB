// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.4.0
pragma solidity ^0.8.27;

import {ERC20} from "@openzeppelin/contracts@5.4.0/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts@5.4.0/access/Ownable.sol";

contract Nebula3Gamefi is ERC20, Ownable {
    event MintWithMemo(address indexed to, uint256 amount, string memo);
    event BurnWithMemo(address indexed from, uint256 amount, string memo);

    constructor(address initialOwner)
        ERC20("Nebula3Gamefi", "N3G")
        Ownable(initialOwner)
    {}

    function mintWithMemo(address to, uint256 amount, string memory memo) public onlyOwner {
        require(bytes(memo).length <= 64, "Memo too long"); 
        _mint(to, amount);
        emit MintWithMemo(to, amount, memo);
    }

    function burnWithMemo(uint256 amount, string memory memo) public {
        require(bytes(memo).length <= 64, "Memo too long");
        _burn(_msgSender(), amount);
        emit BurnWithMemo(_msgSender(), amount, memo);
    }
}
