package tw.com.queautiful.product.web;

import java.util.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;




import tw.com.queautiful.commons.util.FileProcessing;
import tw.com.queautiful.product.entity.Product;
import tw.com.queautiful.product.entity.Review;
import tw.com.queautiful.product.entity.ReviewCM;
import tw.com.queautiful.product.service.BrandService;
import tw.com.queautiful.product.service.CategoryService;
import tw.com.queautiful.product.service.MemberService;
import tw.com.queautiful.product.service.ProductService;
import tw.com.queautiful.product.service.ReviewCMService;
import tw.com.queautiful.product.service.ReviewService;
import tw.com.queautiful.product.service.Review_TagListService;
import tw.com.queautiful.product.vo.brand.BrandSearch;
import tw.com.queautiful.product.vo.category.CategorySearch;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private ReviewService service;

	@Autowired
	private ProductService prodService;

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ReviewCMService reveiwCMService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private Review_TagListService review_TagListService;

	// 提供jqGrid抓取資料使用
	@RequestMapping("/select_jqgrid")
	@ResponseBody
	public Page<Review> select(@RequestParam(required = false) Integer page,
			@RequestParam(required = false) Integer rows) {

		log.debug("page = {}", page);
		log.debug("rows = {}", rows);

		Pageable pageable = new PageRequest(page - 1, rows);
		Page<Review> reviewPage = service.getAll(pageable);

		log.debug("getSize = {}", reviewPage.getSize()); // 列數(資料筆數)
		log.debug("getNumber = {}", reviewPage.getNumber()); // 頁數-1
		log.debug("getTotalPages() = {}", reviewPage.getTotalPages()); // 總共幾頁
		log.debug("getTotalElements = {}", reviewPage.getTotalElements()); // 全部有幾筆資料
		log.debug("getNumberOfElements = {}", reviewPage.getNumberOfElements()); // 列數(資料筆數)
		log.debug("----------------------------------------------------------"); // 測試

		return reviewPage;
	}

	@RequestMapping("/listOld")
	// original + boostrap
	public String listPage(Model model) {
		model.addAttribute("reviews", service.getAll());
		return "/review/reviewListOld";
	}

	@RequestMapping("/listoriginal")
	public String listOriginal(Model model) {
		model.addAttribute("reviews", service.getAll());
		return "/review/reviewListOriginal";
	}

	@RequestMapping("/list")
	public String listGrid() {
		return "/review/reviewList";
	}

	@RequestMapping("/reviews")
	public String reviews(Model model) throws ParseException {
		
		List<Review> list = service.getAll();
		model.addAttribute("reviews", list);
		log.debug("{}", list);
//		 model.addAttribute("reviews", service.findByOrderByReviewTimeDesc());
//		 model.addAttribute("reviews", service.findByOrderByReviewReportDesc());
	
		
		//會員年齡
//		String y = service.getAll().get ).getMember().getBirthDay().toString();
//		log.debug("birthday={}",y);
		for(int i=0; i<list.size(); i++){
			Integer age = memberService.getMemberAge(list.get(i).getMember().getBirthDay());
			log.debug("x={}",age);
			list.get(i).getMember().setAge(age);
		}
		return "/review/reviews";
	}

	@RequestMapping("/reviewTest")
	public String review(Model model) {
		model.addAttribute("review", service.getAll());
		return "/review/reviewTest";
	}

	@RequestMapping("/review/{reviewId}")
	public String reviewjQueryRain(Model model,@PathVariable Long reviewId) throws ParseException {
		Review review = service.getById(reviewId);
		log.debug("{}", review);
		model.addAttribute("review", review);

		// 得到英文月份
		Date temp = review.getReviewTime();
		log.debug("{}", temp);
		// 準備輸出的格式，如：Jun,18,16
		SimpleDateFormat sdf = new SimpleDateFormat("MMM,d,yy", Locale.US);
		// 利用 DateFormat 來parse 日期的字串
		DateFormat df = DateFormat.getDateInstance();
		String reviewTime = temp.toString();
		java.util.Date date = df.parse(reviewTime.replace("-", "/"));
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		log.debug("{}", sdf.format(calendar.getTime()));
		log.debug("{}", sdf.format(calendar.getTime()).substring(0, 3));
		log.debug("{}", sdf.format(calendar.getTime()).substring(4, 6));
		
		String month = sdf.format(calendar.getTime()).substring(0, 3);
		String day = sdf.format(calendar.getTime()).substring(4, 6);
		model.addAttribute("month",month);
		model.addAttribute("day",day);
		
		//會員年齡
		review.getMember().setAge(memberService.getMemberAge(review.getMember().getBirthDay()));
		
		return "/review/review";
	}
	
	@RequestMapping("/search")
	public String searchPage(Model model) {
//		model.addAttribute("reviews", service.getAll());
		return "/fms_search";
	}

	// @RequestMapping("/delete")
	// public String delete(@RequestParam Long reviewId){
	// service.delete(reviewId);
	// return "redirect:/reviews/list";
	// }

	@RequestMapping(value = "delete", method = RequestMethod.POST)
	@ResponseBody
	public void delete(@RequestBody Review review) {
		service.delete(review.getReviewId());
	}

	@RequestMapping("/editOld")
	public String editPageOld(@RequestPart Long reviewId, Model model) {
		model.addAttribute("review", service.getById(reviewId));	
		return "/review/reviewEditOriginal";
	}

	@RequestMapping("/edit")
	public String editPage(@RequestParam Long reviewId, Model model) { // @RequestParam														
		model.addAttribute("review", service.getById(reviewId));           // 類似getParameter
		return "/review/reviewEdit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	// 傳回json字串
	public Review update(
			@RequestPart("review") Review review, // @RequestPart類似RequestParam
													// ,
			@RequestPart(value = "reviewImgFile", required = false) MultipartFile reviewImgFile) {
		// FK設定
		review.setProduct(prodService.getById(review.getProdId()));
		review.setMember(memberService.getById(review.getMemberId()));
		
		// 判斷是否有傳入圖片
		if (reviewImgFile != null) {
			// 取得品牌名稱當作檔名
			String reviewTitle = review.getReviewTitle();

			// 存圖片-->直接使用FileProcessing檔的saveImg方法
			// 傳入參數:1.imgName(檔名), 2.folderName(資料夾名稱), 3.MultipartFile
			// 傳回檔案儲存的路徑
			String reviewImg = FileProcessing.saveImg(reviewTitle, "brand",
					reviewImgFile);

			// 將檔案路徑存成Entity的屬性
			review.setReviewImg(reviewImg);
		}
		service.update(review);
		return review;
	}

	@RequestMapping("/add_bms")
	public String addBmsPage() {
		return "/review/reviewAdd";
	}
	
	@RequestMapping("/add")
	public String addPage(@RequestParam(value="prodId",required=false) Long prodId,Model model) {
		
		// 品牌
		List<BrandSearch> brands = brandService.getAllByVoSearch();
		model.addAttribute("brands", brands);
		
		return "/review/reviewAddFms";
	}

	@RequestMapping(value="/insert_fms", method=RequestMethod.POST)
	@ResponseBody
	public Review insertFms(@RequestPart(name="review") Review review,
			@RequestPart(value="reviewImgFile",required = false) MultipartFile reviewImgFile) {
		
		// FK設定
//		review.setProduct(prodService.getById(review.getProdId()));
//		review.setMember(memberService.getById(review.getMemberId()));
		
		review.setReviewTime(new java.sql.Date(System.currentTimeMillis()));
		if (reviewImgFile != null) {
			String reviewTitle = review.getReviewTitle();
			String reviewImg = FileProcessing.saveImg(reviewTitle, "review",reviewImgFile);
			review.setReviewImg(reviewImg);
			}
		log.debug("{}",review);
		review.setMember(memberService.getById(review.getMemberId()));
		review.setProduct(prodService.getById(review.getProdId()));
		
		service.insert(review);
		
		
		return review;
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	@ResponseBody
	public Review insert(@RequestPart("review") Review review,
			@RequestPart("reviewImgFile") MultipartFile reviewImgFile) {

		// FK設定
		review.setProduct(prodService.getById(review.getProdId()));
		review.setMember(memberService.getById(review.getMemberId()));

		// 取得品牌名稱當作檔名
		String reviewTitle = review.getReviewTitle();

		// 存圖片-->直接使用FileProcessing檔的saveImg方法
		// 傳入參數:1.imgName(檔名), 2.folderName(資料夾名稱), 3.MultipartFile
		// 傳回檔案儲存的路徑
		String reviewImg = FileProcessing.saveImg(reviewTitle, "review",
				reviewImgFile);

		// 將檔案路徑存成Entity的屬性
		review.setReviewImg(reviewImg);

		service.insert(review);
		return review;
	}

	// 提供一般抓取資料使用
	@RequestMapping("/select")
	@ResponseBody
	public List<Review> select() {
		return service.getAll();
	}

	@RequestMapping("show")
	public void show(HttpServletResponse resp,@RequestParam String reviewImg){
		if(reviewImg !=null){
			FileProcessing.showImg(resp, reviewImg);
		}
	}
	
	@RequestMapping("/showProd")
	public void show(HttpServletResponse resp, @RequestParam Long prodId) {
		 Product prod = prodService.getById(prodId);
		// 取得檔案路徑
		 String prodImg = prod.getProdImg();
		// 在網頁中顯示圖片-->直接使用FileProcessing檔的showImg方法
		// 傳入參數:1.HttpServletResponse, 2.檔案路徑
		FileProcessing.showImg(resp, prodImg);
	}
	
	@RequestMapping(value="/deleteTag", method=RequestMethod.POST)
	@ResponseBody
	@Transactional
	public String deleteTag(Long reviewid,Long reviewtagid){
		String result=review_TagListService.deleteReview_TagList(reviewid, reviewtagid);
		return result;
	}
	
	
}
