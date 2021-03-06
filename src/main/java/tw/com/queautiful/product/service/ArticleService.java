package tw.com.queautiful.product.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import tw.com.queautiful.commons.enums.ArticleType;
import tw.com.queautiful.commons.util.Spec;
import tw.com.queautiful.product.dao.ArticleDao;
import tw.com.queautiful.product.dao.ArticleReplyDao;
import tw.com.queautiful.product.entity.Article;
import tw.com.queautiful.product.entity.ArticleCM;
import tw.com.queautiful.product.entity.ArticleReply;
import tw.com.queautiful.product.entity.Member;
import tw.com.queautiful.product.vo.article.ArticleListFms;

@Service
public class ArticleService {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ArticleDao articleDao;
	
	@Autowired
	private ArticleReplyDao articleReplyDao;

	public Article getById(Long articleId) {
		return articleDao.findOne(articleId);
	}

	public List<Article> getAll() {
		return articleDao.findAll();
	}

	public List<Article> getAll(Specification<Article> spec) {
		return articleDao.findAll(spec);
	}

	public Page<Article> getAll(Specification<Article> spec, Pageable pageable) {
		return articleDao.findAll(spec, pageable);
	}

	public Page<Article> getAll(Pageable pageable) {
		return articleDao.findAll(pageable);
	}

	// public List<Article> findByOrderByArticleTimeDesc() {
	// return articleDao.findByOrderByArticleTimeDesc();
	// }
	//
	// public Page<Article> findByOrderByArticleTimeDesc(Pageable pageable) {
	// return articleDao.findByOrderByArticleTimeDesc(pageable);
	// }
	//
	// public Page<Article> findByOrderByArticleTimeDesc(Specification<Article>
	// spec, Pageable pageable){
	// return articleDao.findByOrderByArticleTimeDesc(spec, pageable);
	// }

	public void insert(Article article) {
		articleDao.save(article);
	}

	public void update(Article article) {
		articleDao.save(article);
	}

	public void delete(Long articleId) {
		articleDao.delete(articleId);
	}

	public Article viewNCount(Long articleId) {
		Article article = articleDao.findOne(articleId);
		article.setArticleView(article.getArticleView() + 1);
		articleDao.save(article);
		log.debug("arSize = {}", article.getArSize());
		return article;
	}

	public ArticleListFms getOneByVO(Article temp) {
		Article a_temp = temp;
		ArticleListFms article = new ArticleListFms();
		BeanUtils.copyProperties(a_temp, article);
		article.setArticlesWorteByAuthorSize(a_temp.getMember().getArticlesWorteByAuthor().size());
		if (article.getAcms() != null) {
			Set<ArticleCM> acms = new LinkedHashSet<>();
			for (ArticleCM acm : article.getAcms()) {
				if (acm.getAcmShow()) {
					acms.add(acm);
				}
			}
			article.setAcms(acms);
		}
		return article;
	}

	public List<ArticleListFms> getAllByVOListFms(List<Article> list) {
		List<Article> a_list = list;
		List<ArticleListFms> articles = new ArrayList<>();

		ArticleListFms article = null;
		for (Article temp : a_list) {
			article = new ArticleListFms();
			BeanUtils.copyProperties(temp, article);
			Integer arSize = temp.getArSize();
			Integer arSize_show = articleReplyDao.countByArticleAndArShow(temp, true);
			article.setArSize_show(arSize_show);
			if (arSize != 0) {
				ArticleReply lastPost = temp.getAreplies().get(arSize - 1);
				article.setLastPost(lastPost);
			}
			articles.add(article);
		}
		return articles;
	}

	public Long getCountByMemberAndArticleType(Member member, ArticleType articleType) {
		return articleDao.countByMemberAndArticleType(member, articleType);
	}

	public List<Article> findTop5ByOrderByArticleTimeDesc() {
		return articleDao.findTop5ByOrderByArticleTimeDesc();
	}
}
