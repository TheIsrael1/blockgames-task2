// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld{

    string private describer;
    string public firstWords;
    string public firstWordsDecorated;

    constructor(){
        describer = "You just entered the blockchain world, you whispered";
    }

    function saySomething(string memory comment) public returns(string memory){
        firstWords = comment;
        return firstWords;
    }

    function decorateFirstWords() external returns(string memory){
        firstWordsDecorated = string(abi.encodePacked(describer,' ',firstWords));
        return firstWordsDecorated;
    }
}