// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.25;

import {Test, console2} from "forge-std/Test.sol";
import {HorseStore} from "../../src/HorseStoreV1/HorseStore.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public view {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0);
    }
}
