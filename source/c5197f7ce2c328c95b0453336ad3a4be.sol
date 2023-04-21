/*
    Copyright 2017, Slock.it

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

pragma solidity ^0.4.2;

contract Lib {
    function updateContract(Lib _newAddress);
}

contract LibManager {
    address public admin;

    // Libs:
    Lib public mobilityTokenLib;
    Lib public chargingPolesLib;
    Lib public dateTimeLib;

    // generic lib extensions
    mapping (uint => Lib) public genLibs;
    // priceProviderLibs
    mapping (uint => Lib) public priceProviderLibs;

    event LogUpdateAdmin(address newAdmin);
    event LogUpdateLib(string name, address newAddress);
    event LogUpdateGenLib(uint index, address);
    event LogEmergenyHalt(uint time);

    modifier onlyAdmin() {
        if(msg.sender != admin) throw;
        _;
    }

    modifier onlyAdminOrChargingPolesLib() {
        if (msg.sender != admin && msg.sender != address(chargingPolesLib)) throw;
        _;
    }

    function LibManager(){
        admin = msg.sender;
    }

    function() {throw;}

    function changeAdmin(address _admin) onlyAdmin{
        admin = _admin;
        LogUpdateAdmin(_admin);
    }

    function setMobilityTokenLib(Lib _mobilityTokenLib) onlyAdmin {
        mobilityTokenLib = _mobilityTokenLib;
        LogUpdateLib("mobilityTokenLib", _mobilityTokenLib);
    }

    function updateMobilityTokenLib(Lib _mobilityTokenLib) onlyAdmin {
        mobilityTokenLib.updateContract(_mobilityTokenLib);
        setMobilityTokenLib(_mobilityTokenLib);
    }

    function setChargingPolesLib(Lib _ChargingPolesLib) onlyAdmin {
        chargingPolesLib = _ChargingPolesLib;
        LogUpdateLib("ChargingPolesLib", _ChargingPolesLib);
    }

    function updateChargingPolesLib (Lib _ChargingPolesLib) onlyAdmin {
        chargingPolesLib.updateContract(_ChargingPolesLib);
        setChargingPolesLib(_ChargingPolesLib);
    }

    function setChargingPriceProviderLib(uint _type, Lib _chargingPriceProviderLib) onlyAdmin {
        priceProviderLibs[_type] = _chargingPriceProviderLib;
        LogUpdateLib("chargingPriceProviderLib", _chargingPriceProviderLib);
    }

    function updateChargingPriceProviderLib(uint _type, Lib _chargingPriceProviderLib) onlyAdmin {
        priceProviderLibs[_type].updateContract(_chargingPriceProviderLib);
        setChargingPriceProviderLib(_type, _chargingPriceProviderLib);
    }

    function setDateTimeLib (Lib _dateTimeLib) onlyAdmin{
        dateTimeLib = _dateTimeLib;
        LogUpdateLib("dateTimeLib", _dateTimeLib);
    }

    function updateDateTimeLib (Lib _dateTimeLib) onlyAdmin{
        dateTimeLib.updateContract(_dateTimeLib);
        setDateTimeLib(_dateTimeLib);
    }

    function setGenLib (uint8 _libIndex, Lib _libAddress) onlyAdmin {
        genLibs[_libIndex] = _libAddress;
        LogUpdateGenLib(_libIndex, _libAddress);
    }

    function updateGenLib (uint8 _libIndex, Lib _libAddress) onlyAdmin {
        genLibs[_libIndex].updateContract(_libAddress);
        setGenLib(_libIndex, _libAddress);
    }

    function emergencyHalt() onlyAdmin {
        Lib emergencyLib = Lib(new EmergencyLib());
        mobilityTokenLib = emergencyLib;
        chargingPolesLib = emergencyLib;
        LogEmergenyHalt(now);
    }
}

contract EmergencyLib {
    function() {throw;}
}