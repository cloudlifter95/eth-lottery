// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {VRFCoordinatorV2Interface} from "@chainlink/contracts@1.1.0/src/v0.8/vrf/interfaces/VRFCoordinatorV2Interface.sol";
import {VRFConsumerBaseV2} from "@chainlink/contracts@1.1.0/src/v0.8/vrf/VRFConsumerBaseV2.sol";
import {ConfirmedOwner} from "@chainlink/contracts@1.1.0/src/v0.8/shared/access/ConfirmedOwner.sol";

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

    

    /* View / Pure functions */
    function getEntranceFee() public view returns (uint256) {
        return i_entranceFee;
    }

    function getPlayer(uint256 index) public view returns (address) {
        return s_players[index];
    }
}
