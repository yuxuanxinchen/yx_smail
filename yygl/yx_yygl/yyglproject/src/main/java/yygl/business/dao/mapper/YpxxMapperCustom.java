package yygl.business.dao.mapper;

import java.util.List;

import yygl.business.pojo.vo.YpxxCustom;
import yygl.business.pojo.vo.YpxxQueryVo;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.dao.mapper.YpxxMapperCustom.java]  
 * @ClassName:    [YpxxMapperCustom]   
 * @Description: 药品信息接口
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月25日 下午8:00:28]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月25日 下午8:00:28]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public interface YpxxMapperCustom {
    
	/**
	 * @Title: findYpxxList 
	 * @Description: 药品目录 查询
	 * @param ypxxQueryVo
	 * @return
	 * @throws Exception  
	 * @return List<YpxxCustom> 
	 * @Author:[yuxuan]
	 * @Date:[2015年11月25日 下午8:00:44]  
	 * @throws  
	 */
	public List<YpxxCustom> findYpxxList(YpxxQueryVo ypxxQueryVo) throws Exception;
}