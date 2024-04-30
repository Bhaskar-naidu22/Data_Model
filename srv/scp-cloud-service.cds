using scp.cloud as my from '../db/schema.cds';

service ScpCloudService {
	@readonly entity Requests as projection on my.Requests;
	@readonly entity GlobalRegion as projection on my.GlobalRegion;
	@readonly entity BusinessUnit as projection on my.BusinessUnit;
	@readonly entity Country as projection on my.Country;
}