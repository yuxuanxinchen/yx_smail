package com.yuxuan.paging;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [CRM] 
 * @Package:      [com.yuxuan.paging.Page.java]  
 * @ClassName:    [Page]   
 * @Description:  分页
 * @Author:       [yuxuan]   
 * @CreateDate:   [2014-下午12:04:47]   
 * @UpdateUser:   [yuxuan]      
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class Page {

	//1.每页显示数量 (everyPage)
		private int everyPage;
		//2.总记录数 (totalCount)
		private int totalCount;
		//3.总页数 (totalPage)
		private int totalPage;
		//4.当前页 (currentPage)
		private int currentPage;
		//5.起点页 (beginIndex)
		private int beginIndex;
		//6.是否有上一页 (hasPrePage)
		private boolean hasPrePage;
		//7.是否有下一页 (hasNextPage)
		private boolean hasNextPage;
		public Page(int everyPage, int totalCount, int totalPage,
				int currentPage, int beginIndex, boolean hasPrePage,
				boolean hasNextPage) {
			super();
			this.everyPage = everyPage;
			this.totalCount = totalCount;
			this.totalPage = totalPage;
			this.currentPage = currentPage;
			this.beginIndex = beginIndex;
			this.hasPrePage = hasPrePage;
			this.hasNextPage = hasNextPage;
		}
		public Page() {
			super();
			// TODO Auto-generated constructor stub
		}
		public int getEveryPage() {
			return everyPage;
		}
		public void setEveryPage(int everyPage) {
			this.everyPage = everyPage;
		}
		public int getTotalCount() {
			return totalCount;
		}
		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}
		public int getTotalPage() {
			return totalPage;
		}
		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}
		public int getCurrentPage() {
			return currentPage;
		}
		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}
		public int getBeginIndex() {
			return beginIndex;
		}
		public void setBeginIndex(int beginIndex) {
			this.beginIndex = beginIndex;
		}
		public boolean isHasPrePage() {
			return hasPrePage;
		}
		public void setHasPrePage(boolean hasPrePage) {
			this.hasPrePage = hasPrePage;
		}
		public boolean isHasNextPage() {
			return hasNextPage;
		}
		public void setHasNextPage(boolean hasNextPage) {
			this.hasNextPage = hasNextPage;
		}
		
		
	
	
}
