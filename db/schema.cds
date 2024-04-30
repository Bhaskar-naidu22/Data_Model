namespace scp.cloud;

using {
    cuid,
    managed,
    sap.common
} from`@sap/cds/common`;

entity Requests : cuid, managed {
    RequestType     : String(100);
    RequestorEmail  : String(100);
    FirstName       : String(100);
    LastName        : String(100);
    GlobalRegion    : Association to GlobalRegion
                      @title: 'globalRegion';
    BusinessUnit    : Association to BusinessUnit
                      @title: 'BusinessUnit';
    Function        : String(100);
    Country         : Association to Country
                      @title: 'Country';
    ExpectedDueDate : Date;
    Priority        : String(100);
    CreatedOnDate   : Date;
    Comments        : String(100);
}

entity GlobalRegion : common.CodeList {
    key code : String(20);
}

entity BusinessUnit : common.CodeList {
    key code : String(20);
}

entity Country : common.CodeList {
    key code : String(20);
}
