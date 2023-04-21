contract SHA3_512 {
    function SHA3_512() {}
    uint64[5][5] r = [ [0,36,3,41,18],
            		   [1,44,10,45,2],
          			   [62,6,43,15,61],
			           [28,55,25,21,56],
			           [27,20,39,8,14] ];

    function round(uint64[5][5] A, uint64 _RC ) constant returns(uint64[5][5]) {
        uint64[5] memory C;
        uint64[5] memory D;
        uint64[5][5] memory B;
 
        
        uint x; uint y;

        /* Theta step */
        for(x=0;x<5;x++){
            C[x]=A[x][0] ^ A[x][1] ^ A[x][2]^ A[x][3] ^ A[x][4];
        }
      
        for(x=0;x<5;x++){
            D[x]=C[(x + 4) % 5] ^ ((C[(x + 1) % 5] * 2) | (C[(x + 1) % 5] / (2 ** 63)));
        }
        for(x=0;x<5;x++){
            for(y=0;y<5;y++){
              A[x][y]=A[x][y]^D[x];
            }
        }

        return A;


        /*Rho and pi steps*/
        for(x=0;x<5;x++){
            for(y=0;y<5;y++){
                B[y][(2*x+3*y)%5]=((A[x][y] * (2 ** r[x][y])) | (A[x][y] / (2 ** (64-r[x][y]))));
            }
        }

        /*Xi state*/
        for(x=0;x<5;x++){
            for(y=0;y<5;y++){
                A[x][y]=B[x][y]^((~B[(x+1)%5][y]) & B[(x+2)%5][y]);
            }
        }

        /*Last step*/
        A[0][0]=A[0][0]^_RC;

        return A;
    }
    
    uint64[24] RC= [
               0x0000000000000001,
		       0x0000000000008082,
		       0x800000000000808A,
		       0x8000000080008000,
		       0x000000000000808B,
		       0x0000000080000001,
		       0x8000000080008081,
		       0x8000000000008009,
		       0x000000000000008A,
		       0x0000000000000088,
		       0x0000000080008009,
		       0x000000008000000A,
		       0x000000008000808B,
		       0x800000000000008B,
		       0x8000000000008089,
		       0x8000000000008003,
		       0x8000000000008002,
		       0x8000000000000080,
		       0x000000000000800A,
		       0x800000008000000A,
		       0x8000000080008081,
		       0x8000000000008080,
		       0x0000000080000001,
		       0x8000000080008008 ];
    
    function keccak_f(uint64[5][5] A) constant returns(uint64[5][5]) {
        for( uint i = 0 ; i < 24 ; i++ ) {
            A = round(A,RC[i]);
        }
        
        return A;
    }
 
    event Result(uint64 result);
    
    function sponge(bytes M) constant returns(uint64[8]) {
        if( M.length != 72 ) throw;
        
        uint r = 72;
        uint w = 8;
        uint size = M.length;
        
        uint64[5][5] memory S;
        uint i; uint y; uint x;
        /*Absorbing Phase*/
        for( i = 0 ; i < size/r ; i++ ) {
            for( y = 0 ; y < 5 ; y++ ) {
                for( x = 0 ; x < 5 ; x++ ) {
                    if( (x+5*y) < (r/w) ) {
                        S[x][y] = S[x][y] ^ uint64(M[i*9 + x + 5*y]);
                    }
                }
            }
            S = keccak_f(S);
        }

        /*Squeezing phase*/
        uint64[8] memory result;
        uint b = 0;
        while( b < 8 ) {
            for( b = 0 ; b < 8 ; b++ ) {
                for( y = 0 ; y < 5 ; y++ ) {
                    for( x = 0 ; x < 5 ; x++ ) {
                        if( (x+5*y)<(r/w) && (b<8) ) {
                            result[b] = S[x][y]; 
                            b++;
                        }
                    }
                }
            }
        }
 
        /*Result(result[0]);
        Result(result[1]);
        Result(result[2]);
        Result(result[3]);
        Result(result[4]);
        Result(result[5]);
        Result(result[6]);
        Result(result[7]);*/
        
        return result;
   }

}