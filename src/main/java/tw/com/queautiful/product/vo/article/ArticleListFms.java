package tw.com.queautiful.product.vo.article;

import java.util.List;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonFormat;

import tw.com.queautiful.commons.enums.ArticleType;
import tw.com.queautiful.product.entity.ArticleCM;
import tw.com.queautiful.product.entity.ArticleReply;
import tw.com.queautiful.product.entity.Member;

public class ArticleListFms {

	private Long articleId;
	
	private ArticleType articleType;
	
	private String articleTitle;
	
	private String articleContent;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm:ss", timezone="Asia/Taipei")
	private java.sql.Timestamp articleTime;

	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd HH:mm:ss", timezone="Asia/Taipei")
	private java.sql.Timestamp aEditTime;
	
	//文章觀看次數
	private Integer articleView;
	
	private Long memberId;
	
	private String nickname;
	
	private java.sql.Date memberRegiDate;
	
	// member撰寫文章數
	private Integer articlesWorteByAuthorSize;
	
	//回覆數
	private Integer arSize;
	
	private Integer arSize_show;
	
	//最新回覆
	private ArticleReply lastPost;

	//留言數
	private Integer acmsSize;
	
//	private Member member;
	
	private Set<Member> memberSave;
	
	private Set<ArticleCM> acms;
	
	@Override
	public String toString() {
		return "ArticleListFms [articleId=" + articleId + ", articleType=" + articleType + ", articleTitle="
				+ articleTitle + ", articleContent=" + articleContent + ", articleTime=" + articleTime
				+ ", articleView=" + articleView + ", memberId=" + memberId + ", nickname=" + nickname + "]";
	}

	public Long getArticleId() {
		return articleId;
	}

	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}

	public ArticleType getArticleType() {
		return articleType;
	}

	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContent() {
		return articleContent;
	}

	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}

	public java.sql.Timestamp getArticleTime() {
		return articleTime;
	}

	public void setArticleTime(java.sql.Timestamp articleTime) {
		this.articleTime = articleTime;
	}
	
	public java.sql.Timestamp getaEditTime() {
		return aEditTime;
	}

	public void setaEditTime(java.sql.Timestamp aEditTime) {
		this.aEditTime = aEditTime;
	}

	public Integer getArticleView() {
		return articleView;
	}

	public void setArticleView(Integer articleView) {
		this.articleView = articleView;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public java.sql.Date getMemberRegiDate() {
		return memberRegiDate;
	}

	public void setMemberRegiDate(java.sql.Date memberRegiDate) {
		this.memberRegiDate = memberRegiDate;
	}
	
	public Integer getArticlesWorteByAuthorSize() {
		return articlesWorteByAuthorSize;
	}

	public void setArticlesWorteByAuthorSize(Integer articlesWorteByAuthorSize) {
		this.articlesWorteByAuthorSize = articlesWorteByAuthorSize;
	}

	public Integer getArSize() {
		return arSize;
	}

	public void setArSize(Integer arSize) {
		this.arSize = arSize;
	}
	
	public Integer getArSize_show() {
		return arSize_show;
	}

	public void setArSize_show(Integer arSize_show) {
		this.arSize_show = arSize_show;
	}

	public ArticleReply getLastPost() {
		return lastPost;
	}

	public void setLastPost(ArticleReply lastPost) {
		this.lastPost = lastPost;
	}

	public Integer getAcmsSize() {
		return acmsSize;
	}

	public void setAcmsSize(Integer acmsSize) {
		this.acmsSize = acmsSize;
	}
	
	/*public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}*/

	public Set<Member> getMemberSave() {
		return memberSave;
	}

	public void setMemberSave(Set<Member> memberSave) {
		this.memberSave = memberSave;
	}

	public Set<ArticleCM> getAcms() {
		return acms;
	}

	public void setAcms(Set<ArticleCM> acms) {
		this.acms = acms;
	}
	
}
