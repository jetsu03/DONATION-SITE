// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @title DonationPiggy
 * @notice Minimal donation contract to receive ETH and record donor totals and badge milestones.
 */
contract DonationPiggy {
    event Donated(address indexed donor, uint256 amount, uint256 totalForDonor);

    mapping(address => uint256) public totalDonatedBy;
    uint256 public totalReceived;

    // Milestones in wei for badges (configurable by owner in a real app)
    uint256 public constant BADGE1 = 5e15;   // 0.005 ETH
    uint256 public constant BADGE2 = 2e16;   // 0.02 ETH
    uint256 public constant BADGE3 = 5e16;   // 0.05 ETH

    receive() external payable {
        _recordDonation(msg.sender, msg.value);
    }

    function donate() external payable {
        require(msg.value > 0, 'No ETH');
        _recordDonation(msg.sender, msg.value);
    }

    function _recordDonation(address donor, uint256 amount) internal {
        totalReceived += amount;
        totalDonatedBy[donor] += amount;
        emit Donated(donor, amount, totalDonatedBy[donor]);
    }

    function hasBadge1(address donor) external view returns (bool) {
        return totalDonatedBy[donor] >= BADGE1;
    }

    function hasBadge2(address donor) external view returns (bool) {
        return totalDonatedBy[donor] >= BADGE2;
    }

    function hasBadge3(address donor) external view returns (bool) {
        return totalDonatedBy[donor] >= BADGE3;
    }
}


