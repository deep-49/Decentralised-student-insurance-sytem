// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentInsurance {
    struct Student {
        uint id;
        address wallet;
        uint premiumPaid;
        bool enrolled;
        bool claimFiled;
        bool claimApproved;
    }

    address public admin;
    uint public studentCount;
    uint public premiumAmount;
    mapping(uint => Student) public students;
    mapping(address => uint) public studentIds;

    event Enrolled(uint studentId, address wallet);
    event PremiumPaid(uint studentId, uint amount);
    event ClaimFiled(uint studentId);
    event ClaimApproved(uint studentId, uint payoutAmount);

    constructor(uint _premiumAmount) {
        admin = msg.sender;
        premiumAmount = _premiumAmount;
        studentCount = 0;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    modifier onlyEnrolled() {
        require(studentIds[msg.sender] != 0, "You must be enrolled");
        _;
    }

    function enrollStudent() public {
        require(studentIds[msg.sender] == 0, "Already enrolled");
        studentCount++;
        students[studentCount] = Student(studentCount, msg.sender, 0, true, false, false);
        studentIds[msg.sender] = studentCount;
        emit Enrolled(studentCount, msg.sender);
    }

    function payPremium() public payable onlyEnrolled {
        require(msg.value == premiumAmount, "Incorrect premium amount");
        uint studentId = studentIds[msg.sender];
        students[studentId].premiumPaid += msg.value;
        emit PremiumPaid(studentId, msg.value);
    }

    function fileClaim() public onlyEnrolled {
        uint studentId = studentIds[msg.sender];
        require(!students[studentId].claimFiled, "Claim already filed");
        students[studentId].claimFiled = true;
        emit ClaimFiled(studentId);
    }

    function approveClaim(uint studentId) public onlyAdmin {
        require(students[studentId].claimFiled, "No claim filed");
        require(!students[studentId].claimApproved, "Claim already approved");
        uint payoutAmount = students[studentId].premiumPaid;
        students[studentId].claimApproved = true;
        payable(students[studentId].wallet).transfer(payoutAmount);
        emit ClaimApproved(studentId, payoutAmount);
    }

    function withdrawFunds(uint amount) public onlyAdmin {
        require(amount <= address(this).balance, "Insufficient balance");
        payable(admin).transfer(amount);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
