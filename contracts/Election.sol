pragma solidity 0.4.25;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint256 id;
        string name;
        string party_name;
        uint256 voteCount;
        string color;
        string logo;
    }

    // Store accounts that have voted
    mapping(address => bool) public voters;
    // Store Candidates
    // Fetch Candidate
    mapping(uint256 => Candidate) public candidates;
    // Store Candidates Count
    uint256 public candidatesCount;

    // voted event
    event votedEvent(uint256 indexed candidateId, uint256 count);

    constructor() public {
        addCandidate(
            "Joe Biden",
            "Democrates",
            "#4e4eff",
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/DemocraticLogo.svg/1200px-DemocraticLogo.svg.png"
        );
        addCandidate(
            "Donald Trump",
            "Republican",
            "#ff4e4e",
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Republicanlogo.svg/1179px-Republicanlogo.svg.png"
        );
    }

    function addCandidate(
        string _name,
        string _party_name,
        string _party_color,
        string _party_logo
    ) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(
            candidatesCount,
            _name,
            _party_name,
            0,
            _party_color,
            _party_logo
        );
    }

    function vote(uint256 _candidateId) public {
        // require that they haven't voted before
        require(!voters[msg.sender]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount++;

        // trigger voted event
        emit votedEvent(_candidateId, candidates[_candidateId].voteCount);
    }
}
