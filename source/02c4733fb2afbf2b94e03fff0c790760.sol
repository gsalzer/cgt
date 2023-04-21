contract mortal{
    address public admin;
    function mortal(){
        admin=msg.sender;
    }
    modifier onlyAdmin{
        if (msg.sender != admin) throw;
            _;
    }
    function kill() onlyAdmin{
        suicide(admin);
    }
}
contract PoQ is mortal{
    struct Trc{
        address     owner; 
        bytes32     tophashanalisimp;
        bytes32     hashelencocomp;
        bytes32     hcprodlotto;
    }
    struct Prd{
        address     owner;
        string      prodotto; 
        string      lotto;
        string      descrizione;
        uint        datainserimento;
        bytes32     tophashanalisiprod;
    }

    
    //trackings indicizzato tramite tophash analisi prodotto (garantisce che siano univoche)
    mapping (bytes32 => Trc)  trcs;
    mapping (bytes32 => Prd)  prds;

    
    uint public totprodotti;

    event insPrd(string tipo, string _prod,string _lott, bytes32 _tophasprod,bytes32 _tophashmp);

    /*event eliminatoProdotto(address _eliminatoda, bytes32 _hashprodlotto);*/
  
    function aggiungi(string _prodotto,string _lotto, string _descrizione, bytes32 _tophashanalisiprod,bytes32 _tophashanalisimp, bytes32 _hashelencocomp)
    onlyAdmin  returns (bool result) {
        bytes32 _hashcodeprodlotto=sha3(_prodotto,_lotto);
        Prd p = prds[_hashcodeprodlotto];
        if (p.owner != 0) throw; 
        Trc t = trcs[_tophashanalisiprod];
        if (t.owner!=0) throw; 

       
        p.owner=msg.sender;
        p.datainserimento=now;
        p.prodotto=_prodotto;
        p.lotto=_lotto;
        p.descrizione= _descrizione;
		p.tophashanalisiprod=_tophashanalisiprod;
        t.owner=msg.sender;
        t.tophashanalisimp=_tophashanalisimp;
        t.hashelencocomp=_hashelencocomp;
        t.hcprodlotto=_hashcodeprodlotto;
        
        totprodotti++;
        insPrd("AGGIUNTO", _prodotto, _lotto, _tophashanalisiprod,_tophashanalisimp);
        result=true;
    }


    function infoProd(string _prodotto,string _lotto) public constant returns(uint _indiceProdotto, string _descrizione, bytes32 _tophashanalisiprodotto, bytes32 _tophashanalisimp, bytes32 _hashelencocomp,  uint _dataInserimento){
        bytes32 hcprodlot=sha3(_prodotto,_lotto);
        if (prds[hcprodlot].owner== 0) throw; 
        _tophashanalisiprodotto=prds[hcprodlot].tophashanalisiprod;
        _descrizione = prds[hcprodlot].descrizione;
        _tophashanalisimp=trcs[_tophashanalisiprodotto].tophashanalisimp;
        _hashelencocomp=trcs[_tophashanalisiprodotto].hashelencocomp;
        _dataInserimento=prds[hcprodlot].datainserimento;
    }
    
    function cercaTopHashAnalisiProdotto(bytes32 _topHashAnProdotto) public constant returns(string _prodotto, string _lotto, bytes32 _tophashanalisiprodotto, bytes32 _tophashanalisimp, bytes32 _hashelencocomp, uint _dataInserimento){
        if (trcs[_topHashAnProdotto].owner==0) throw; //se il tophash non esiste sollevo eccezione
        _tophashanalisimp=trcs[_topHashAnProdotto].tophashanalisimp;
        bytes32 hcprodlot=trcs[_topHashAnProdotto].hcprodlotto;
        _prodotto=prds[hcprodlot].prodotto;
        _lotto=prds[hcprodlot].lotto;
        _tophashanalisiprodotto=prds[hcprodlot].tophashanalisiprod;
        _tophashanalisimp=trcs[_tophashanalisiprodotto].tophashanalisimp;
        _dataInserimento=prds[hcprodlot].datainserimento;
        _hashelencocomp=trcs[_topHashAnProdotto].hashelencocomp;
    }
}