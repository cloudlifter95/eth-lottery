// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;
error Raffle__NotEnoughEthEntered();

contract Raffle {
    /* vars */
    uint256 private immutable i_entranceFee;
    address payable[] private s_players;

    /* events */
    event RaffleEntered(address indexed player); // indexed is a keyword for "topics". Topics are searchable parameters within events.

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        if (msg.value < i_entranceFee) {
            // msg.value is the eth sent
            revert Raffle__NotEnoughEthEntered();
        }
        s_players.push(payable(msg.sender)); // casting the address as payable to fit in the array
        emit RaffleEntered(msg.sender); // msg.sender is the address sending msg.value (in eth)
    }
}
