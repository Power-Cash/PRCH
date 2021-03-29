pragma solidity ^0.5.8;

import "./Context.sol";
import "./ITRC20.sol";
import "./BaseTRC20.sol";

contract PowerCash is ITRC20, TRC20Detailed {
    constructor(address gr) public TRC20Detailed("Power Cash", "PRCH", 6){
        require(gr != address(0), "invalid gr");
        _mint(gr, 500000000 * 10 ** 6);
    }
}