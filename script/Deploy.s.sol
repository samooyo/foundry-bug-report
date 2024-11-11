// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import {Script} from "forge-std/Script.sol";

import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";

contract Deploy is Script {
    function run() public returns (address proxy_) {
        proxy_ = Upgrades.deployUUPSProxy("TestContract.sol", "");
    }
}
