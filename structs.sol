//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract structs {
    struct person{
        string name;
        uint age;
        address wallet;
    }

    person[] public abc;
    person public person1;
    person public person2;


    function initializePerson() public{
        person1 = person("swayam", 17, 0x93933f41471F8010B42296b0F8f7A9DAA54C128e);
        person2 = person({name:"chad", age:27, wallet:0x93933f41471F8010B42296b0F8f7A9DAA54C128e});
        abc.push(person1);
        abc.push(person2);

    }
    
    function modify(uint index, uint _age) external{
         person storage _person = abc[index];
        _person.age = _age;
    }

    function getAbc() public view returns(person[] memory) {
        return abc;
    }
}
