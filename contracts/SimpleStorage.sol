pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
  string public storedData;

  event myEventTest(string eventOutput);

  function set(string memory myText) public {
    storedData = myText;
    emit myEventTest(myText);
  }

  function get() public view returns (string memory) {
    return storedData;
  }

}
