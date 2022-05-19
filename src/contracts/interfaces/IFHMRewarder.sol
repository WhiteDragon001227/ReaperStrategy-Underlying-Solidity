// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IFHMRewarder {
    function accTokenPrecision() external view returns (uint256);

    function add(uint256 pid, uint256 allocPoint) external;

    function initializeRewardToken(address token) external;

    function masterChef() external view returns (address);

    function masterchefPoolIds(uint256) external view returns (uint256);

    function onBeetsReward(
        uint256 pid,
        address userAddress,
        address recipient,
        uint256,
        uint256 newLpAmount
    ) external;

    function owner() external view returns (address);

    function pendingToken(uint256 _pid, address _user) external view returns (uint256 pending);

    function poolInfo(uint256)
        external
        view
        returns (
            uint256 accRewardTokenPerShare,
            uint256 lastRewardTime,
            uint256 allocPoint
        );

    function poolLength() external view returns (uint256 pools);

    function renounceOwnership() external;

    function rewardPerSecond() external view returns (uint256);

    function rewardToken() external view returns (address);

    function set(uint256 pid, uint256 allocPoint) external;

    function setRewardPerSecond(uint256 _rewardPerSecond) external;

    function shutDown(address withdrawRemainingFundsTo) external;

    function topUpRewards(uint256 amount) external;

    function transferOwnership(address newOwner) external;

    function userInfo(uint256, address) external view returns (uint256 amount, uint256 rewardDebt);
}