package yygl.business.pojo.vo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.pojo.vo.YpxxQueryVo.java]  
 * @ClassName:    [YpxxQueryVo]   
 * @Description:  包装类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月25日 下午8:38:29]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月25日 下午8:38:29]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class YpxxQueryVo {
	
	private YpxxCustom ypxxCustom;
	private Float price_start;
	private Float price_end;
	
	
	public Float getPrice_start() {
		return price_start;
	}
	public void setPrice_start(Float price_start) {
		this.price_start = price_start;
	}
	public Float getPrice_end() {
		return price_end;
	}
	public void setPrice_end(Float price_end) {
		this.price_end = price_end;
	}
	public YpxxCustom getYpxxCustom() {
		return ypxxCustom;
	}
	public void setYpxxCustom(YpxxCustom ypxxCustom) {
		this.ypxxCustom = ypxxCustom;
	}
	
	
	
}
