package yygl.business.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import yygl.business.dao.mapper.YpxxMapperCustom;
import yygl.business.pojo.vo.YpxxCustom;
import yygl.business.pojo.vo.YpxxQueryVo;
import yygl.business.service.YpxxService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.business.service.impl.YpxxServiceImpl.java]  
 * @ClassName:    [YpxxServiceImpl]   
 * @Description:  药品信息
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月25日 下午7:26:34]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月25日 下午7:26:34]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class YpxxServiceImpl implements YpxxService {
	
	@Autowired
	private YpxxMapperCustom ypxxMapperCustom;

	@Override
	public List<YpxxCustom> findYpxxList(YpxxQueryVo ypxxQueryVo)
			throws Exception {
		return ypxxMapperCustom.findYpxxList(ypxxQueryVo);
	}

}
