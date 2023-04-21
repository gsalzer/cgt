pragma solidity ^0.4.6;

//import "ConvertLib.sol";

// TODO : allow deletion of ratings for rating owner
// TODO : captcha to avoid spamming


contract EvalBiz {
	address public owner;

	struct Rating {
		address author;
		uint score;
		string comments;
	}
	mapping (bytes32 => Rating[]) public ratings;

	function EvalBiz() {
		owner = msg.sender;
	}

	modifier onlyOwner() {
		if(msg.sender != owner) throw; // rollback puis erreur
		_;
    }

    function sendRating(bytes32 key, uint score, string comments) public {
        Rating memory r;
        r.author = msg.sender;
        r.score = score;
        r.comments = comments;
    	ratings[key].push(r);
    }

    /*function getRating(bytes32 key) returns(address sender, uint score, string comments) {
    	return (ratings[key].author, ratings[key].score, ratings[key].comments);
    }*/
}