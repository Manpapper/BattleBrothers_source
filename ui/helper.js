/*
 *  @Project:		Battle Brothers
 *	@Company:		Overhype Studios
 *
 *	@Copyright:		(c) Overhype Studios | 2013 - 2020
 * 
 *  @Author:		Overhype Studios
 *  @Date:			15.02.2017
 *  @Description:	Global Helper JS Stuff
 */


/*
	Helpers
 */
var Helper = {

    /**
     * Formats the given number
     */
    numberWithCommas: function(_number)
    {
        var parts = _number.toString().split(".");
        return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
    }
};