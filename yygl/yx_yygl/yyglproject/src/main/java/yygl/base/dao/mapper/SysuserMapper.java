package yygl.base.dao.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import yygl.base.pojo.po.Sysuser;
import yygl.base.pojo.po.SysuserExample;

public interface SysuserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int countByExample(SysuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int deleteByExample(SysuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int insert(Sysuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int insertSelective(Sysuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    List<Sysuser> selectByExample(SysuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    Sysuser selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int updateByExampleSelective(@Param("record") Sysuser record, @Param("example") SysuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int updateByExample(@Param("record") Sysuser record, @Param("example") SysuserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int updateByPrimaryKeySelective(Sysuser record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table SYSUSER
     *
     * @mbggenerated Sun Nov 22 08:03:41 CST 2015
     */
    int updateByPrimaryKey(Sysuser record);
}