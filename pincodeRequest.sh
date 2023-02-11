
/** 
 * log("sample logging statement") --> can be used to print any data in the browser console.
 * ZDK module can be used for customising the UI and other functionalities.
 * return false to prevent <SAVE> action
**/

var pincode = ZDK.Page.getField("Zip_Code").getValue();
var api_resp = ZDK.HTTP.request({
    url: `https://api.postalpincode.in/pincode/${pincode}`,
    method: 'GET',
});
log(api_resp);