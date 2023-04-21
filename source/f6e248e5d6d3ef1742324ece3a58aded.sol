pragma solidity ^0.4.1;
contract SHA3_512 {
    function SHA3_512() {}

    event Result(uint result);

    
    function keccak_f(uint[25] A) constant returns(uint[25]) {
        uint[5] memory C;
        uint D_0; uint D_1; uint D_2; uint D_3; uint D_4;
        uint[25] memory B;
        
        uint[24] memory RC= [
                   uint(0x0000000000000001),
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
        
         
        for( uint i = 0 ; i < 24 ; i++ ) {
			/* Theta step */
			C[0]=A[0]^A[1]^A[2]^A[3]^A[4];
			C[1]=A[5]^A[6]^A[7]^A[8]^A[9];
			C[2]=A[10]^A[11]^A[12]^A[13]^A[14];
			C[3]=A[15]^A[16]^A[17]^A[18]^A[19];
			C[4]=A[20]^A[21]^A[22]^A[23]^A[24];

			D_0=C[4] ^ ((C[1] * 2)&0xffffffffffffffff | (C[1] / (2 ** 63)));
			D_1=C[0] ^ ((C[2] * 2)&0xffffffffffffffff | (C[2] / (2 ** 63)));
			D_2=C[1] ^ ((C[3] * 2)&0xffffffffffffffff | (C[3] / (2 ** 63)));
			D_3=C[2] ^ ((C[4] * 2)&0xffffffffffffffff | (C[4] / (2 ** 63)));
			D_4=C[3] ^ ((C[0] * 2)&0xffffffffffffffff | (C[0] / (2 ** 63)));

			A[0]=A[0] ^ D_0;
			A[1]=A[1] ^ D_0;
			A[2]=A[2] ^ D_0;
			A[3]=A[3] ^ D_0;
			A[4]=A[4] ^ D_0;
			A[5]=A[5] ^ D_1;
			A[6]=A[6] ^ D_1;
			A[7]=A[7] ^ D_1;
			A[8]=A[8] ^ D_1;
			A[9]=A[9] ^ D_1;
			A[10]=A[10] ^ D_2;
			A[11]=A[11] ^ D_2;
			A[12]=A[12] ^ D_2;
			A[13]=A[13] ^ D_2;
			A[14]=A[14] ^ D_2;
			A[15]=A[15] ^ D_3;
			A[16]=A[16] ^ D_3;
			A[17]=A[17] ^ D_3;
			A[18]=A[18] ^ D_3;
			A[19]=A[19] ^ D_3;
			A[20]=A[20] ^ D_4;
			A[21]=A[21] ^ D_4;
			A[22]=A[22] ^ D_4;
			A[23]=A[23] ^ D_4;
			A[24]=A[24] ^ D_4;

			/*Rho and pi steps*/
			B[0]=A[0];
			B[8]=((A[1] * (2 ** 36))&0xffffffffffffffff | (A[1] / (2 ** 28)));
			B[11]=((A[2] * (2 ** 3))&0xffffffffffffffff | (A[2] / (2 ** 61)));
			B[19]=((A[3] * (2 ** 41))&0xffffffffffffffff | (A[3] / (2 ** 23)));
			B[22]=((A[4] * (2 ** 18))&0xffffffffffffffff | (A[4] / (2 ** 46)));
			B[2]=((A[5] * (2 ** 1))&0xffffffffffffffff | (A[5] / (2 ** 63)));
			B[5]=((A[6] * (2 ** 44))&0xffffffffffffffff | (A[6] / (2 ** 20)));
			B[13]=((A[7] * (2 ** 10))&0xffffffffffffffff | (A[7] / (2 ** 54)));
			B[16]=((A[8] * (2 ** 45))&0xffffffffffffffff | (A[8] / (2 ** 19)));
			B[24]=((A[9] * (2 ** 2))&0xffffffffffffffff | (A[9] / (2 ** 62)));
			B[4]=((A[10] * (2 ** 62))&0xffffffffffffffff | (A[10] / (2 ** 2)));
			B[7]=((A[11] * (2 ** 6))&0xffffffffffffffff | (A[11] / (2 ** 58)));
			B[10]=((A[12] * (2 ** 43))&0xffffffffffffffff | (A[12] / (2 ** 21)));
			B[18]=((A[13] * (2 ** 15))&0xffffffffffffffff | (A[13] / (2 ** 49)));
			B[21]=((A[14] * (2 ** 61))&0xffffffffffffffff | (A[14] / (2 ** 3)));
			B[1]=((A[15] * (2 ** 28))&0xffffffffffffffff | (A[15] / (2 ** 36)));
			B[9]=((A[16] * (2 ** 55))&0xffffffffffffffff | (A[16] / (2 ** 9)));
			B[12]=((A[17] * (2 ** 25))&0xffffffffffffffff | (A[17] / (2 ** 39)));
			B[15]=((A[18] * (2 ** 21))&0xffffffffffffffff | (A[18] / (2 ** 43)));
			B[23]=((A[19] * (2 ** 56))&0xffffffffffffffff | (A[19] / (2 ** 8)));
			B[3]=((A[20] * (2 ** 27))&0xffffffffffffffff | (A[20] / (2 ** 37)));
			B[6]=((A[21] * (2 ** 20))&0xffffffffffffffff | (A[21] / (2 ** 44)));
			B[14]=((A[22] * (2 ** 39))&0xffffffffffffffff | (A[22] / (2 ** 25)));
			B[17]=((A[23] * (2 ** 8))&0xffffffffffffffff | (A[23] / (2 ** 56)));
			B[20]=((A[24] * (2 ** 14))&0xffffffffffffffff | (A[24] / (2 ** 50)));

			/*Xi state*/
			A[0]=B[0]^((~B[5]) & B[10]);
			A[1]=B[1]^((~B[6]) & B[11]);
			A[2]=B[2]^((~B[7]) & B[12]);
			A[3]=B[3]^((~B[8]) & B[13]);
			A[4]=B[4]^((~B[9]) & B[14]);
			A[5]=B[5]^((~B[10]) & B[15]);
			A[6]=B[6]^((~B[11]) & B[16]);
			A[7]=B[7]^((~B[12]) & B[17]);
			A[8]=B[8]^((~B[13]) & B[18]);
			A[9]=B[9]^((~B[14]) & B[19]);
			A[10]=B[10]^((~B[15]) & B[20]);
			A[11]=B[11]^((~B[16]) & B[21]);
			A[12]=B[12]^((~B[17]) & B[22]);
			A[13]=B[13]^((~B[18]) & B[23]);
			A[14]=B[14]^((~B[19]) & B[24]);
			A[15]=B[15]^((~B[20]) & B[0]);
			A[16]=B[16]^((~B[21]) & B[1]);
			A[17]=B[17]^((~B[22]) & B[2]);
			A[18]=B[18]^((~B[23]) & B[3]);
			A[19]=B[19]^((~B[24]) & B[4]);
			A[20]=B[20]^((~B[0]) & B[5]);
			A[21]=B[21]^((~B[1]) & B[6]);
			A[22]=B[22]^((~B[2]) & B[7]);
			A[23]=B[23]^((~B[3]) & B[8]);
			A[24]=B[24]^((~B[4]) & B[9]);

			/*Last step*/
			A[0]=A[0]^RC[i];            
        }

        
        return A;
    }
 
    
    function sponge(uint[] M) constant returns(uint[8]) {
        if( (M.length * 8) != 72 ) throw;
        
        uint r = 72;
        uint w = 8;
        uint size = M.length * 8;
        
        uint[25] memory S;
        uint i; uint y; uint x;
        /*Absorbing Phase*/
        for( i = 0 ; i < size/r ; i++ ) {
            for( y = 0 ; y < 5 ; y++ ) {
                for( x = 0 ; x < 5 ; x++ ) {
                    if( (x+5*y) < (r/w) ) {
                        S[5*x+y] = S[5*x+y] ^ M[i*9 + x + 5*y];
                    }
                }
            }
            S = keccak_f(S);
        }

        /*Squeezing phase*/
        uint[8] memory result;
        uint b = 0;
        while( b < 8 ) {
            for( y = 0 ; y < 5 ; y++ ) {
                for( x = 0 ; x < 5 ; x++ ) {
                    if( (x+5*y)<(r/w) && (b<8) ) {
                        result[b] = S[5*x+y]; 
                        b++;
                    }
                }
            }
        }
 
        Result(result[0]);
        Result(result[1]);
        Result(result[2]);
        Result(result[3]);
        Result(result[4]);
        Result(result[5]);
        Result(result[6]);
        Result(result[7]);
        
        return result;
   }

}