<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라 상품 상세페이지</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/prd_detail_view.css">
<script src="../resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
<body>

<!------------------------------ 상품 상세 영역 -------------------------------->
<div class="SP_prdDtail_wrap renew_prdDetail">
    <!------------------------------ 레이아웃 -------------------------------->
    <div class="SP_layoutFix">
      <!------------------------------ product_detail 모듈 -------------------------------->
      <div class="xans-element- xans-product xans-product-detail"><!--
            $coupon_download_page = /coupon/coupon_productdetail.html
            -->
  <!-- @JGO/240611 - Enhanced Ecommerce Tag -->
  <script>
          var productNo = "2101";
          var productCategory = "121";
          var productName = "N 쿠잉 네일".replace(/\<.*?\>/g, "").trim();
          var productBrand = "";
          var productPrice = "12580".split(".")[0];
  
          //Product Detail Impressions
          window.addEventListener("DOMContentLoaded", function () {
            dataLayers.push({
              event: "viewitem",
              label: productName,
              ecommerce: {
                detail: {
                  products: [
                    {
                      name: productName,
                      id: productNo,
                      price: productPrice !== "" ? productPrice : product_price,
                      brand: productBrand,
                      category: productCategory,
                    },
                  ],
                },
              },
            });
          });
  
          //Add From Cart
          function addtoCart() {
            var total_quantity = $(".total")
              .html()
              .substring($(".total").html().indexOf("(") + 1, $(".total").html().indexOf("개"));
  
            if (total_quantity && total_quantity > 0) {
              dataLayers.push({
                event: "addToCart",
                ecommerce: {
                  currencyCode: "KRW",
                  add: {
                    products: [
                      {
                        name: productName,
                        id: productNo,
                        price: productPrice !== "" ? productPrice : product_price,
                        brand: productBrand,
                        category: productCategory,
                        quantity: total_quantity,
                      },
                    ],
                  },
                },
              });
            }
          }
        </script>
  <!------------------------------ SP_detailArea_wrap -------------------------------->
  <div class="SP_detailThumbnail_wrap">
    <!-- 큰 이미지 -->
    <div class="SP_thumbnail">
        <img id="mainImage" src="https://www.ohora.kr/web/product/small/202410/fae2dc7657990935dc608bc9b3655e13.jpg" alt="N 쿠잉 네일" class="BigImage">
    </div>

    <!-- 작은 이미지 목록 -->
    <div class="SP_listImg">
        <ul>
            <li><img src="https://www.ohora.kr/web/product/small/202410/fae2dc7657990935dc608bc9b3655e13.jpg" alt="Thumb 1" onmouseover="changeImage('image/prd_image/마롱네일2.jpg')"></li>
            <li><img src="https://www.ohora.kr/web/product/extra/small/202410/0a5d72f15087fb86c15c8249438e2961.jpg" alt="Thumb 2" onmouseover="changeImage('image/prd_image/마롱네일3.jpg')"></li>
            <li><img src="https://www.ohora.kr/web/product/extra/small/202410/20ea938442221e7f2d275a865172a656.jpg" alt="Thumb 3" onmouseover="changeImage('image/prd_image/마롱네일4.jpg')"></li>
            <li><img src="https://www.ohora.kr/web/product/extra/small/202410/7ad8d1c56f1046c160fa9395f443c187.jpg" alt="Thumb 4" onmouseover="changeImage('image/prd_image/마롱네일1.jpg')"></li>
        </ul>
    </div>
</div>

<script>
    // 큰 이미지를 변경하는 function
    function changeImage(imageSrc) {
        document.getElementById('mainImage').src = imageSrc;
    }
</script>


    <!------------------------------ //상품 이미지 영역 -------------------------------->
          <!------------------------------ 상품 정보 영역 -------------------------------->
          <div class="SP_detailPrdOpt_wrap" style="opacity: 1;">
            <!------------------------------ 상품 정보 영역 inner -------------------------------->
            <div class="SP_detailPrdOpt_inr">
              <!--
                        <div class="color displaynone">
                        <div module="product_Colorchip">
                        <span class="chips" style="background-color:"></span>
                        <span class="chips" style="background-color:"></span>
                        </div>
                        </div>
                        -->
              <!-------------------------- 쇼핑큐레이션 모듈 ---------------------------->
              <div style="display: none" class="xans-element- xans-product xans-product-hashtag displaynone"><div class="heading"><strong>태그</strong></div>
  <ul class="list">
  <li class=""></li>
                  <li class=""></li>
                </ul>
  </div>
              <!-------------------------- //쇼핑큐레이션 모듈 ---------------------------->
              <!-------------------------- 상품 정보 호출 ---------------------------->
              <div class="xans-element- xans-product xans-product-detaildesign SP_dtPrdOptionList_wrap"><!--
                            출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
                            count = 10
                            -->
  <ul class="SP_prdListItemInfo" style="display: block;">
  <li class="display_상품명 xans-record- SP_dfList_prdName">
  <span class="title" style=""><!--<span style="">상품명</span>--></span><span class="SP_detail_content" style=""><span style="">N 쿠잉 네일</span></span>
  </li><li class="xans-record- review_count"><span class="SP_detail_content">리뷰 40</span></li>
                  <!-- <li class="display_영문상품명 xans-record- SP_dfList_engName" style="display: list-item;">
  <span class="title" style=""><span style="">영문상품명</span>></span><span class="SP_detail_content" style=""><span style="">N Cooing Nails</span></span>
  </li> -->
  <li class="display_가격 xans-record- SP_dfList_price strike" style="display: list-item;">
  <span class="title" style="">가격</span><span class="SP_detail_content" style=""><span style=""><strong id="span_product_price_text" style="text-decoration: line-through;">14,800</strong><input id="product_price" name="product_price" value="" type="hidden" style=""></span><span class="salesPrice">12,580</span><span class="dcPercent">15%</span></span>
  </li><li class="xans-record- SP_dfList_quantity" style="display: list-item;"><span class="title" style="">수량</span><span class="SP_detail_content"><a href="#none" class="down"></a><input id="quantity_clone" value="1" type="text" readonly=""><a href="#none" class="up"></a></span></li><li class="xans-record- SP_dfList_mileageInfo" style="display: list-item;"><!--<span class="title"><span>적립금</span></span><span class="SP_detail_content"><span class="point">로그인 후 적립금을 확인해보세요.</span></span>--></li>
  <li class="display_할인판매가 xans-record- SP_dfList_salePrice" style="display: list-item;">

    <script>
        // 주문 수량 기능
document.querySelector(".down").onclick = function() {
    var quantityInput = document.getElementById("quantity_clone");
    var currentValue = parseInt(quantityInput.value);

    if (currentValue > 1) {
        quantityInput.value = currentValue - 1;
    } else {
        alert("최소 주문수량은 1개 입니다");
    }
};

document.querySelector(".up").onclick = function() {
    var quantityInput = document.getElementById("quantity_clone");
    var currentValue = parseInt(quantityInput.value);
    quantityInput.value = currentValue + 1;
};

// jQuery
// $(document).ready(function() {
//     $(".down").click(function() {
//         var $quantityInput = $("#quantity_clone");
//         var currentValue = parseInt($quantityInput.val());

//         if (currentValue > 1) {
//             $quantityInput.val(currentValue - 1);
//         } else {
//             alert("최소 주문수량은 1개 입니다");
//         }
//     });

//     $(".up").click(function() {
//         var $quantityInput = $("#quantity_clone");
//         var currentValue = parseInt($quantityInput.val());
//         $quantityInput.val(currentValue + 1);
//     });
// });

    </script>
  <!-- <span class="title" style=""><span style="">할인판매가</span></span><span class="SP_detail_content" style=""><span style=""><span style=""><span id="span_product_price_sale" style="">12,580 </span></span></span></span> -->
  </li>
  <!-- <li class="display_배송비 xans-record- SP_dfList_deliveryInfo" style="display: list-item;">
  <span class="title" style=""><span style="">배송비</span></span><span class="SP_detail_content" style=""><span style=""><span class="delv_price_B" style=""><input id="delivery_cost_prepaid" name="delivery_cost_prepaid" value="P" type="hidden" style=""><strong>3,000</strong> (50,000 이상 구매 시 무료)</span></span></span>
  </li> -->
                </ul>
  <div class="share_btn">
                  <span class="kakaoShare" style=""><img src="https://cdn-icons-png.flaticon.com/512/1828/1828960.png"></span>
                </div>
  </div>
              <!-------------------------- //상품 정보 호출 ---------------------------->
  
              <!-------------------------------------- 수량 ---------------------------------->
              <div class="SP_dtQuantity_wrap">
                </div>
              <!-------------------------------------- 수량 ---------------------------------->
              <!------------------------- 개인결제창 네이버 마일리지 적립 사용 ------------------------------>
              <!-- <p class="displaynone">
                <img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif" alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다.">
              &nbsp;</p> -->
              <!------------------------- //개인결제창 네이버 마일리지 적립 사용 ------------------------------>
              <!------------------------- 옵션 출력 ------------------------------>
              
              <!------------------------- //옵션 출력 ------------------------------>
  
              <!-- 세트상품 -->
              <link rel="stylesheet" href="/smartpc/include/detailPage/setProduct/df_setProduct/_css/setProduct.css">
  <script src="/smartpc/include/detailPage/setProduct/df_setProduct/_js/setProduct.js"></script>
              <!-- // 세트상품 -->
  
              <!-- 추가구성상품 -->
              <link rel="stylesheet" href="/smartpc/include/detailPage/addProduct/st01_addProduct/_css/addProduct.css">
  <!-- 추가 구성 상품 --><div class="xans-element- xans-product xans-product-addproduct SP_productAddSet_wrap view open"><div class="SP_prdAddSet_title">
          <h3>추가구성상품</h3>
          <a href="javascript:void(0);" class="SP_js_toggle_btn SP_prdAddSetToggle"></a>
      </div>
  <ul class="SP_prdAddSetList_wrap">
  <li data-prd-num="1810" class="xans-record-">
              <div class="SP_addSetInfo">
                  <div class="SP_addSetThumb"><a href="/product/프로-네일-강화제/1810/"><img src="//www.ohora.kr/web/product/tiny/202301/14ab26965938da6deb35ec09da2cb8c2.jpg" alt="" id="ec-add-product-composed-product-1810"></a></div>
                  <div class="SP_prdAddSetList">
                      <ul>
  <li class="SP_addSetList_tt">
                              <!-- <div class="SP_prdAddSet_tt">상품명</div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_prdtt">프로 네일 강화제</div>
                          </li><li class="desc">강력한 보호막을 형성하는 네일 강화제</li>
                          <li class=" add_prd_price">
                              <!-- <div class="SP_prdAddSet_tt"><span>판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_price"><span class="">19,800</span></div>
                          </li>
                          <li class="displaynone add_prd_sale">
                              <!-- <div class="SP_prdAddSet_tt"><span>할인판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont"><span class=""></span></div>
                          </li>
                      </ul>
  </div>
                  <div class="SP_prdAddSetOpt_wrap displaynone">
                                                              <div class="xans-element- xans-product xans-product-noneoption xans-record-"><ul>
  <li>
                                  <strong class="name">상품선택</strong>
                                  <div class="SP_prdAddSetOptBox"><select id="addproduct_option_id_1810_1" name="addproduct_option_name_1810" required="true" option_title="프로 네일 강화제">
  <option value="*" selected="selected">- 상품 선택 -</option>
  <option value="P0000CRQ000A">프로 네일 강화제</option>
  </select></div>
                              </li>
                                                      </ul>
  </div>
                      <div class="displaynone selectButton" id="">
                          <a href="#none" class="btnSubmit sizeS" onclick="">옵션선택</a>
                      </div>
                  </div>
              <div class="btn add-opt-click"><a href="#none">추가</a></div></div>
          </li>
          <li data-prd-num="607" class="xans-record-">
              <div class="SP_addSetInfo">
                  <div class="SP_addSetThumb"><a href="/product/프로-글로시-탑젤/607/"><img src="//www.ohora.kr/web/product/tiny/202209/3af9ada90db0007c7f67a764f1bab0e2.jpg" alt="" id="ec-add-product-composed-product-607"></a></div>
                  <div class="SP_prdAddSetList">
                      <ul>
  <li class="SP_addSetList_tt">
                              <!-- <div class="SP_prdAddSet_tt">상품명</div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_prdtt">프로 글로시 탑젤</div>
                          </li><li class="desc">광택과 볼륨감을 더하는 탑젤</li>
                          <li class=" add_prd_price">
                              <!-- <div class="SP_prdAddSet_tt"><span>판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_price"><span class="">19,800</span></div>
                          </li>
                          <li class="displaynone add_prd_sale">
                              <!-- <div class="SP_prdAddSet_tt"><span>할인판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont"><span class=""></span></div>
                          </li>
                      </ul>
  </div>
                  <div class="SP_prdAddSetOpt_wrap displaynone">
                                                               <div class="xans-element- xans-product xans-product-noneoption xans-record-"><ul>
  <li>
                                  <strong class="name">상품선택</strong>
                                  <div class="SP_prdAddSetOptBox"><select id="addproduct_option_id_607_2" name="addproduct_option_name_607" required="true" option_title="프로 글로시 탑젤">
  <option value="*" selected="selected">- 상품 선택 -</option>
  <option value="P00000XJ000A">프로 글로시 탑젤</option>
  </select></div>
                              </li>
                                                      </ul>
  </div>
                      <div class="displaynone selectButton" id="">
                          <a href="#none" class="btnSubmit sizeS" onclick="">옵션선택</a>
                      </div>
                  </div>
              <div class="btn add-opt-click"><a href="#none">추가</a></div></div>
          </li>
  <li data-prd-num="615" class="xans-record-">
              <div class="SP_addSetInfo">
                  <div class="SP_addSetThumb"><a href="/product/프로-이지필-리무버/615/"><img src="//www.ohora.kr/web/product/tiny/202205/4b0524fd24c8d0d23eab8ad3d33dc4dd.jpg" alt="" id="ec-add-product-composed-product-615"></a></div>
                  <div class="SP_prdAddSetList">
                      <ul>
  <li class="SP_addSetList_tt">
                              <!-- <div class="SP_prdAddSet_tt">상품명</div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_prdtt">프로 이지필 리무버</div>
                          </li><li class="desc">순하고 깔끔한 저자극 리무버</li>
                          <li class=" add_prd_price">
                              <!-- <div class="SP_prdAddSet_tt"><span>판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_price"><span class="">12,800</span></div>
                          </li>
                          <li class="displaynone add_prd_sale">
                              <!-- <div class="SP_prdAddSet_tt"><span>할인판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont"><span class=""></span></div>
                          </li>
                      </ul>
  </div>
                  <div class="SP_prdAddSetOpt_wrap displaynone">
                                                               <div class="xans-element- xans-product xans-product-noneoption xans-record-"><ul>
  <li>
                                  <strong class="name">상품선택</strong>
                                  <div class="SP_prdAddSetOptBox"><select id="addproduct_option_id_615_3" name="addproduct_option_name_615" required="true" option_title="프로 이지필 리무버">
  <option value="*" selected="selected">- 상품 선택 -</option>
  <option value="P00000XR000A">프로 이지필 리무버</option>
  </select></div>
                              </li>
                                                      </ul>
  </div>
                      <div class="displaynone selectButton" id="">
                          <a href="#none" class="btnSubmit sizeS" onclick="">옵션선택</a>
                      </div>
                  </div>
              <div class="btn add-opt-click"><a href="#none">추가</a></div></div>
          </li>
  <li data-prd-num="1821" class="xans-record-">
              <div class="SP_addSetInfo">
                  <div class="SP_addSetThumb"><a href="/product/프로-네일-프라이머-플러스/1821/"><img src="//www.ohora.kr/web/product/tiny/202302/d4f41e7f995c4a0a0c7f5b2f75547f48.jpg" alt="" id="ec-add-product-composed-product-1821"></a></div>
                  <div class="SP_prdAddSetList">
                      <ul>
  <li class="SP_addSetList_tt">
                              <!-- <div class="SP_prdAddSet_tt">상품명</div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_prdtt">프로 네일 프라이머 플러스</div>
                          </li><li class="desc">유지력을 높여주는 네일 프라이머</li>
                          <li class=" add_prd_price">
                              <!-- <div class="SP_prdAddSet_tt"><span>판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont SP_prdAddSet_price"><span class="">14,800</span></div>
                          </li>
                          <li class="displaynone add_prd_sale">
                              <!-- <div class="SP_prdAddSet_tt"><span>할인판매가 : </span></div> -->
                              <div class="SP_prdAddSet_cont"><span class=""></span></div>
                          </li>
                      </ul>
  </div>
                  <div class="SP_prdAddSetOpt_wrap displaynone">
                                                               <div class="xans-element- xans-product xans-product-noneoption xans-record-"><ul>
  <li>
                                  <strong class="name">상품선택</strong>
                                  <div class="SP_prdAddSetOptBox"><select id="addproduct_option_id_1821_4" name="addproduct_option_name_1821" required="true" option_title="프로 네일 프라이머 플러스">
  <option value="*" selected="selected">- 상품 선택 -</option>
  <option value="P0000CSB000A">프로 네일 프라이머 플러스</option>
  </select></div>
                              </li>
                                                      </ul>
  </div>
                      <div class="displaynone selectButton" id="">
                          <a href="#none" class="btnSubmit sizeS" onclick="">옵션선택</a>
                      </div>
                  </div>
              <div class="btn add-opt-click"><a href="#none">추가</a></div></div>
          </li>
      </ul>
  </div>
  <script src="/smartpc/include/detailPage/addProduct/st01_addProduct/_js/addProduct.js"></script>
              <!-- // 추가구성상품 -->
  <script>
    // 추가 구성상품 토글 function
document.querySelector(".SP_prdAddSetToggle").onclick = function() {
    var element = document.querySelector(".SP_prdAddSetList_wrap");
    if (element.style.display === "none" || element.style.display === "") {
        element.style.display = "block";  // 보이게 설정
    } else {
        element.style.display = "none";   // 숨기기
    }
};

// $(".SP_prdAddSetToggle").click(function() {
//     $(".SP_prdAddSetList_wrap").toggle();
// });



  </script>
              <!----------------------------------- 선택 상품 출력 영역 ----------------------------------->
              <div id="totalProducts" class="SP_totalProducts ">
                <!-- <p class="ec-base-help txtWarn txt11 "> 수량을 선택해주세요.</p><p class="ec-base-help txtWarn txt11 displaynone"> 위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p> -->
                <table border="0" summary="">
  <caption>
                    상품 목록
                  </caption>
                  <colgroup><col style="width: auto"></colgroup>
  <thead><tr>
  <th scope="col">상품명</th>
                      <th scrop="col">수량</th>
                      <th scope="col">가격</th>
                    </tr></thead>
  <tbody class=" SP_addQuantity" style="display: none;"><tr>
  <td>수량</td>
                      <td>
                        <span class="quantity">
                          <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down"></a>
                          <input id="quantity" name="quantity_opt[]" style="" value="1" type="text">                        <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up"></a>
                        </span>
                      </td>
                      <td class="right">
                        <span class="quantity_price">14,800<input type="hidden" name="option_box_price" class="option_box_price" value="14800" item_code="P0000DCV000A"></span>원<span class="mileage displaynone" style="display: none;">(<img src=""> &nbsp;<span class="mileage_price"></span>)</span>
                      </td>
                    </tr></tbody>
  <!-- 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다. --><tbody class="SP_addOptPrdTotal"><!-- tr>
                                    <td>
                                    <p class="product">
                                    $상품명<br />
                                    <span>$옵션</span>
                                    </p>
                                    </td>
                                    <td>
                                    <span class="quantity">
                                    <input type="text" class="quantity_opt" />
                                    &nbsp;<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
                                    <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
                                    </span>
                                    <a href="#none"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
                                    </td>
                                    <td class="right">
                                    <span>$가격</span>
                                    <span class="mileage">(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
                                    </td>
                                    </tr --></tbody>
  <!-- // 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다. -->
  </table>
  </div>
              <!----------------------------------- //선택 상품 출력 영역 ----------------------------------->
              <!----------------------------------- 최종 금액 ----------------------------------->
              <div id="totalPrice" class="SP_totalPrice">
                <strong>총 상품금액 (개수)</strong> : <span class="total SP_totalPriceNum"><strong><em>12,580</em></strong> (1개)</span>
              </div>
              <!----------------------------------- //최종 금액 ----------------------------------->
              <!----------------------------------- SP_detailBuyBn_wrap ----------------------------------->
                          <!----------------------------------- //SP_detailBuyBn_wrap ----------------------------------->
              <!-- 상세페이지 배너 -->
              <!--<img src="/web/_event/0427_event8ver3/PC_detail_app.jpg"/>-->
              <!--<a href="/product/list.html?cate_no=120"><img src="/web/_event/0427_event8ver3/PC_detail_app6.jpg"/></a>-->
              <!----------------------------------- 액션 버튼 영역 ----------------------------------->
              <div class="action_btn_wrap">
                <div class="xans-element- xans-product xans-product-action " style="width: 100%;"><div class="SP_totalPrdOrderBtn_wrap" >
                    <!-- 품절 아이콘 -->
                    <!-- <span class="btnEm sizeL gFlex2 displaynone">Sold out</span> -->
                    <!-- //품절 아이콘 -->
                    <!-- 재입고 알림 신청 -->
                    <!-- <a href="#none" class="restockBtn displaynone">
                      <button type="button" class="btnRestockSms" sms_restock_login_display="" onclick="">재입고 알림 신청하기</button>
                      <button type="button" onclick="logoff_sms_restock();" class="xans-element- xans-layout xans-layout-statelogoff btnRestockSms ">재입고 알림 신청하기
  </button>
                    </a> -->
                    <!-- //재입고 알림 신청 -->
                    <!-- 바로 구매 버튼 -->
                    <a href="#none" class="SP_cm_btn SP_btn_black_bg SP_buyBtn ">
                      <!-- onclick="product_submit(1, '/exec/front/order/basket/', this)" -->
                      <span id="btnBuy">바로 구매</span>
                      <!-- <span id="btnReserve" class="displaynone">예약주문</span> -->
                      <!-- <span id="" class="displaynone">정기배송 신청하기</span> -->
                    </a>
                    <!-- //바로 구매 버튼 -->
                    <!-- 장바구니 버튼 -->
                    <a href="#none" class="SP_cm_btn SP_cartBtn " onclick="addtoCart();">장바구니 담기</a>
                    <!-- onclick="product_submit(2, '/exec/front/order/basket/', this)" -->
                    <!-- //장바구니 버튼 -->
                  </div>
  <div id="appPaymentButtonBox" style="margin:20px auto 0; display: inline-flex; flex-wrap: wrap; gap:10px;"><div id="kakao-checkout-button"></div></div></div>
                <!----------------------------------- //액션 버튼 영역 ----------------------------------->
  
                <!-- product 1470, 1471 입고 버튼 -->
                <!-- <script>
                  if (window.location.href.match("/1470") || window.location.href.match("no=1470") || window.location.href.match("/1471") || window.location.href.match("no=1471")) {
                    SP$("#contents > div.SP_prdDtail_wrap.renew_prdDetail > div:nth-child(1) > div > div.SP_detailArea_wrap > div.SP_detailPrdOpt_wrap > div.SP_detailPrdOpt_inr > div.action_btn_wrap > div > div > a.restockBtn > button").text("입고 알림 신청하기");
                  }
                </script>
   -->
                <!----------------------------- 네이버,카카오 체크아웃 구매 버튼 --------------------------->
                <!-- <div id="appPaymentButtonBox" style="margin-top:40px;"></div>
                            <p class="naver_txt"  id="kakao_txt">비로그인 카카오페이 결제 시 카카오페이 구매 포인트 10% 적립!<br/>카카오페이 구매 시 공식몰 이벤트 혜택이 적용되지 않을 수 있습니다.</p>-->
  
                <div style="margin-top: 40px" class="xans-element- xans-layout xans-layout-statelogoff naver_Wrap "><div class="npay_chk_btn"></div>
  <div id="NaverChk_Button"><div id="NC_ID_1730038870968324" class="npay_storebtn_bx npay_type_A_2">	<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">		<div class="npay_button">			<div class="npay_text"><span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span></div>				<table class="npay_btn_list" cellspacing="0" cellpadding="0"><tbody><tr>    <td class="npay_btn_item">        <a id="NPAY_BUY_LINK_IDNC_ID_1730038870968324" href="#" class="npay_btn_link npay_btn_pay btn_green" style="box-sizing:content-box; " title="새창"><span class="npay_blind">네이버페이 구매하기</span></a>    </td>    <td class="npay_btn_item btn_width">        <a id="NPAY_WISH_LINK_IDNC_ID_1730038870968324" href="#" class="npay_btn_link npay_btn_zzim " style="box-sizing:content-box; " title="새창"><span class="npay_blind">찜하기</span></a>    </td></tr></tbody></table>		</div>		<div id="NPAY_EVENT_ID" class="npay_event">			<a id="NPAY_PROMOTION_PREV_IDNC_ID_1730038870968324" href="#" class="npay_more npay_more_prev"><span class="npay_blind">이전</span></a>			<p id="NPAY_PROMOTION_IDNC_ID_1730038870968324" class="npay_event_text"><strong class="event_title">머니결제혜택</strong><a class="event_link" href="https://campaign2.naver.com/moneypay/" target="_blank" title="새창">최대 3%적립 + 소득공제</a></p>			<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1730038870968324" href="#" class="npay_more npay_more_next"><span class="npay_blind">다음</span></a>		</div>	</div></div></div>
  <!-- @JGO/240611 - Enhanced Ecommerce Tag -->
  <script>
                    //Npay Event
                    window.addEventListener("DOMContentLoaded", function () {
                      setTimeout(function () {
                        console.log("네이버페이 준비");
  
                        $(".npay_btn_pay").one("click", function () {
                          console.log("네이버페이 실행");
  
                          var jgo_products = [];
                          var productTotalPrice = 0;
  
                          if ($(".ProductOption0").length > 0) {
                            $(".option_products tr").each(function (index, item) {
                              var productQuantity = $(this).find("input.quantity_opt").val();
                              var productOptionTotalPrice = $(this).find("td")[2];
  
                              if (productOptionTotalPrice) {
                                var productOptionTotalPriceInput = $(productOptionTotalPrice).find("input");
                                if (productOptionTotalPriceInput) {
                                  productOptionTotalPrice = $(productOptionTotalPriceInput).val();
                                }
                              }
  
                              if (!isNaN(productOptionTotalPrice)) {
                                productTotalPrice += parseInt(productOptionTotalPrice);
                              } else {
                                productOptionTotalPrice = $(this).find("td")[1];
                                if (productOptionTotalPrice) {
                                  var productOptionTotalPriceInput = $(productOptionTotalPrice).find("input");
                                  if (productOptionTotalPriceInput) {
                                    productOptionTotalPrice = $(productOptionTotalPriceInput).val();
                                  }
                                }
  
                                if (!isNaN(productOptionTotalPrice)) {
                                  productTotalPrice += parseInt(productOptionTotalPrice);
                                }
                              }
  
                              jgo_products.push({
                                id: productNo,
                                name: productName,
                                category: productCategory, // Product category (string).
                                price: parseInt(productOptionTotalPrice / productQuantity),
                                quantity: productQuantity,
                              });
                            });
                          }
  
                          if ($(".ProductOption0").length == 0 && $("#quantity").val() > 0) {
                            productTotalPrice = product_price * $("#quantity").val();
                            jgo_products.push({
                              id: productNo,
                              name: productName,
                              category: productCategory, // Product category (string).
                              price: product_price,
                              quantity: $("#quantity").val(),
                            });
                          }
  
                          if (jgo_products.length > 0 && productTotalPrice > 0) {
                            var NaverPayPrice = getCookie("NAVERPAY_PRICE");
  
                            if (NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) == productTotalPrice) {
                              console.log(productTotalPrice + " 으로 금액이 같거나, 중복으로 클릭됨");
                              return false;
                            }
  
                            if (NaverPayPrice == null || NaverPayPrice == "" || (NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) != productTotalPrice)) {
                              setCookie("NAVERPAY_PRICE", productTotalPrice, 1);
                            }
  
                            var date = new Date();
                            var orderId = date.getUTCFullYear();
                            orderId += parseInt(date.getMonth()) + 1 < 10 ? "0" + (parseInt(date.getMonth()) + 1) : parseInt(date.getMonth()) + 1 + "";
                            orderId += date.getDate() < 10 ? "0" + date.getDate() : date.getDate() + "";
                            orderId += "-Npay-";
                            orderId += Math.round(Math.random() * 8888888 + 1111111);
  
                            dataLayers.push({
                              event: "nPayClick",
                              ecommerce: {
                                purchase: {
                                  actionField: {
                                    id: orderId,
                                    revenue: productTotalPrice,
                                  },
                                  products: jgo_products,
                                },
                              },
                            });
                          }
                        });
                      }, 1000);
                    });
                  </script>
  </div>
                <!----------------------------- //네이버,카카오 체크아웃 구매 버튼 --------------------------->
              </div>
                
                <!----------------------------------- //액션 버튼 영역 ----------------------------------->
  
                <!-- product 1470, 1471 입고 버튼 -->
                <script>
                  if (window.location.href.match("/1470") || window.location.href.match("no=1470") || window.location.href.match("/1471") || window.location.href.match("no=1471")) {
                    SP$("#contents > div.SP_prdDtail_wrap.renew_prdDetail > div:nth-child(1) > div > div.SP_detailArea_wrap > div.SP_detailPrdOpt_wrap > div.SP_detailPrdOpt_inr > div.action_btn_wrap > div > div > a.restockBtn > button").text("입고 알림 신청하기");
                  }
                </script>
  
                <!----------------------------- 네이버,카카오 체크아웃 구매 버튼 --------------------------->
                <!-- <div id="appPaymentButtonBox" style="margin-top:40px;"></div>
                            <p class="naver_txt"  id="kakao_txt">비로그인 카카오페이 결제 시 카카오페이 구매 포인트 10% 적립!<br/>카카오페이 구매 시 공식몰 이벤트 혜택이 적용되지 않을 수 있습니다.</p>-->
  
                <div style="margin-top: 40px" class="xans-element- xans-layout xans-layout-statelogoff naver_Wrap "><div class="npay_chk_btn"></div>
  <div id="NaverChk_Button"><div id="NC_ID_1729772615320517" class="npay_storebtn_bx npay_type_A_2">	<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">		<div class="npay_button">			<div class="npay_text"><span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span></div>				<table class="npay_btn_list" cellspacing="0" cellpadding="0"><tbody><tr>    <td class="npay_btn_item">        <a id="NPAY_BUY_LINK_IDNC_ID_1729772615320517" href="#" class="npay_btn_link npay_btn_pay btn_green" style="box-sizing:content-box; " title="새창"><span class="npay_blind">네이버페이 구매하기</span></a>    </td>    <td class="npay_btn_item btn_width">        <a id="NPAY_WISH_LINK_IDNC_ID_1729772615320517" href="#" class="npay_btn_link npay_btn_zzim " style="box-sizing:content-box; " title="새창"><span class="npay_blind">찜하기</span></a>    </td></tr></tbody></table>		</div>		<div id="NPAY_EVENT_ID" class="npay_event">			<a id="NPAY_PROMOTION_PREV_IDNC_ID_1729772615320517" href="#" class="npay_more npay_more_prev"><span class="npay_blind">이전</span></a>			<p id="NPAY_PROMOTION_IDNC_ID_1729772615320517" class="npay_event_text"><strong class="event_title">머니결제혜택</strong><a class="event_link" href="https://campaign2.naver.com/moneypay/" target="_blank" title="새창">최대 3%적립 + 소득공제</a></p>			<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1729772615320517" href="#" class="npay_more npay_more_next"><span class="npay_blind">다음</span></a>		</div>	</div></div></div>
  <!-- @JGO/240611 - Enhanced Ecommerce Tag -->
  <script>
                    //Npay Event
                    window.addEventListener("DOMContentLoaded", function () {
                      setTimeout(function () {
                        console.log("네이버페이 준비");
  
                        $(".npay_btn_pay").one("click", function () {
                          console.log("네이버페이 실행");
  
                          var jgo_products = [];
                          var productTotalPrice = 0;
  
                          if ($(".ProductOption0").length > 0) {
                            $(".option_products tr").each(function (index, item) {
                              var productQuantity = $(this).find("input.quantity_opt").val();
                              var productOptionTotalPrice = $(this).find("td")[2];
  
                              if (productOptionTotalPrice) {
                                var productOptionTotalPriceInput = $(productOptionTotalPrice).find("input");
                                if (productOptionTotalPriceInput) {
                                  productOptionTotalPrice = $(productOptionTotalPriceInput).val();
                                }
                              }
  
                              if (!isNaN(productOptionTotalPrice)) {
                                productTotalPrice += parseInt(productOptionTotalPrice);
                              } else {
                                productOptionTotalPrice = $(this).find("td")[1];
                                if (productOptionTotalPrice) {
                                  var productOptionTotalPriceInput = $(productOptionTotalPrice).find("input");
                                  if (productOptionTotalPriceInput) {
                                    productOptionTotalPrice = $(productOptionTotalPriceInput).val();
                                  }
                                }
  
                                if (!isNaN(productOptionTotalPrice)) {
                                  productTotalPrice += parseInt(productOptionTotalPrice);
                                }
                              }
  
                              jgo_products.push({
                                id: productNo,
                                name: productName,
                                category: productCategory, // Product category (string).
                                price: parseInt(productOptionTotalPrice / productQuantity),
                                quantity: productQuantity,
                              });
                            });
                          }
  
                          if ($(".ProductOption0").length == 0 && $("#quantity").val() > 0) {
                            productTotalPrice = product_price * $("#quantity").val();
                            jgo_products.push({
                              id: productNo,
                              name: productName,
                              category: productCategory, // Product category (string).
                              price: product_price,
                              quantity: $("#quantity").val(),
                            });
                          }
  
                          if (jgo_products.length > 0 && productTotalPrice > 0) {
                            var NaverPayPrice = getCookie("NAVERPAY_PRICE");
  
                            if (NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) == productTotalPrice) {
                              console.log(productTotalPrice + " 으로 금액이 같거나, 중복으로 클릭됨");
                              return false;
                            }
  
                            if (NaverPayPrice == null || NaverPayPrice == "" || (NaverPayPrice != "" && !isNaN(parseInt(NaverPayPrice)) && parseInt(NaverPayPrice) != productTotalPrice)) {
                              setCookie("NAVERPAY_PRICE", productTotalPrice, 1);
                            }
  
                            var date = new Date();
                            var orderId = date.getUTCFullYear();
                            orderId += parseInt(date.getMonth()) + 1 < 10 ? "0" + (parseInt(date.getMonth()) + 1) : parseInt(date.getMonth()) + 1 + "";
                            orderId += date.getDate() < 10 ? "0" + date.getDate() : date.getDate() + "";
                            orderId += "-Npay-";
                            orderId += Math.round(Math.random() * 8888888 + 1111111);
  
                            dataLayers.push({
                              event: "nPayClick",
                              ecommerce: {
                                purchase: {
                                  actionField: {
                                    id: orderId,
                                    revenue: productTotalPrice,
                                  },
                                  products: jgo_products,
                                },
                              },
                            });
                          }
                        });
                      }, 1000);
                    });
                  </script>
  <div class="naver_txt" style="color: #ff0000">비회원 네이버페이 구매 시 공식몰 이벤트 혜택이 적용되지 않습니다. <br>자사몰 로그인 후 네이버페이 결제를 진행하면 이벤트의 혜택 적용이 가능합니다.</div>
  </div>
                <!----------------------------- //네이버,카카오 체크아웃 구매 버튼 --------------------------->
              </div>
              <!------------------------- 배송 정보 / 오늘 도착 팝업------------------------------>
              <div class="deliver_con">
                <table><tbody class="delvtype">
  <tr class="">
  <th scope="row">기본배송</th>
                      <td class="delv_price">
                        <div>기본 3,000원 (5만원 이상 구매 시 무료)</div>
                        <div>제주 및 특수 도서 산간 지역 3,000원 추가</div>
                      </td>
                    </tr>
  <tr class="same_day displaynone">
  <!-- <th scope="row">당일배송</th> -->
                      <!-- <td class="delv_price">
                        <div>기본 3,500원 (5만원 이상 구매 시 무료)</div>
                        <div>※서울 지역 한정 14시까지 결제 시 당일 도착</div>
                      </td> -->
                    </tr>
  <tr class="delvtoday displaynone">
  <!-- <th scope="row">오늘 도착</th>
                      <td>
                        <p>3,500원 (서울지역)</p>
                        <p>
                          14시까지 결제 시 <strong>저녁 10시 이전에 도착!</strong><br>
                          5만원 이상 구매 시 <strong>무료</strong><span class="detail_btn">상세보기 &gt;</span>
                        </p>
                      </td>
                    </tr>
  </tbody></table>
  </div>
              <div class="today_pop_dimmed">
                <div class="today_popup">
                  <div class="today_top">
                    <h3>오늘 도착 서비스 안내</h3>
                    <p>오호라 젤네일을 빠르게 만나보고 싶다면?<br>오늘 도착 서비스를 경험해보세요</p>
                    <span class="close_btn"><img src="/web/upload/common/mobile/layerClose_icon.png"></span>
                  </div>
                  <div class="today_con"> -->
                    <table>
  <!-- <tbody><tr>
  <th>
  <img src="/web/upload/common/mobile/icon_delv_area.png">배송 가능 지역</th>
                        <td>서울 지역 한정<span>(경기 / 지방 지역은 추후 확대될 예정입니다)</span>
  </td>
                      </tr> -->
  <!-- <tr class="delv_info">
  <th>
  <img src="/web/upload/common/mobile/icon_delv_info.png">이용 안내</th>
                        <td>
                          <p>오후 2시까지 결제 시 <strong>저녁 10시 이내 도착!</strong></p>
                          <p>결제 시 오늘 도착 옵션을 선택해주세요.</p>
                          <span>배송비 3,500원</span>
                          <span>5만 원 이상 구매 시 무료 배송</span>
                        </td>
                      </tr> -->
  </tbody></table>
  </div>
                  <!-- <div class="today_info">
                    <h4><strong>유의사항</strong></h4>
                    <div>
                      <p>오늘 도착 체크 박스 선택 시 서울 지역에 한해 당일 배송이 진행됩니다.(주말 제외)<br>단, 공휴일의 경우 휴일 다음 날에 배송됩니다.</p>
                      <p></p>
                      <p>서울 지역 한정 14시까지 결제 시 당일 22시 이전에 도착합니다.</p>
                      <p>14시 이후 주문 수정(교환/취소)은 불가하며, 당일 배송에서 제외될 수 있습니다.<br>단, 천재지변 및 기상악화, 배송 폭주 등으로 인해 22시까지 배송이 어려운 경우 익일 오전 중 배송될 수 있습니다.</p>
                    </div> -->
                  </div>
                </div>
              </div>
              <!------------------------- //배송 정보 / 오늘 도착 팝업------------------------------>
            </div>
            <!------------------------------ //상품 정보 영역 inner -------------------------------->
          <!-- <div id="totalPrice" class="SP_totalPrice displaynone for-find-calc">
                <strong>총 상품금액 (개수)</strong> : <span class="total SP_totalPriceNum"><strong><em>12,580</em></strong> (1개)</span>
              </div></div> -->
          <!------------------------------ //상품 정보 영역 -------------------------------->
        </div>
  <!------------------------------ //SP_detailArea_wrap -------------------------------->
  <!---------------------------------- 상세페이지 배너 ------------------------------------->
  <style>
          .detail_ban_wrap,
          .rolling_banner {
            width: 100%;
            margin: 0 auto;
          }
          .rolling_banner li {
            width: 100%;
          }
          .rolling_banner li a {
            width: 100%;
          }
          .rolling_banner li a img {
            width: 100%;
          }
        </style>

            </script--><!---------------------------------- //상세페이지 배너 -------------------------------------><!------------------------------------ 공급사:판매사정보 ------------------------------------------><div class="supplyInfo displaynone"></div>
  <!------------------------------------ //공급사:판매사정보 ------------------------------------------>
  <!------------------------------------ 이벤트 ------------------------------------------>
  <!-- <div class="eventArea displaynone ">
          <h3><span>이벤트</span></h3>
          <div class="event"></div>
        </div> -->
  <!------------------------------------ //이벤트 ------------------------------------------>
  </div>
      <!------------------------------ //product_detail 모듈 -------------------------------->
    </div>
    <!------------------------------ //레이아웃 -------------------------------->
  
    <!------------------------------ 레이아웃 -------------------------------->
    <div class="SP_layoutFix">
      <!------------------------------ 쿠폰 다운로드 -------------------------------->
      <!-- <div class="SP_detailLayout"> -->
        <!-- 쿠폰 다운로드 -->
        <!-- <div class="ec-product-coupon"> -->


  <script>(function(i, s, o, g, r) {
      var a = s.createElement(o);
      var m = s.getElementsByTagName(o)[0];
      a.async = true;
      a.src = g;
      a.onload = function() {
          if (i[r].init) {
              i[r].init('https://js-error-tracer-api.cafe24.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJvaG9yYTIwMTkuY2FmZTI0LmNvbSIsImF1ZCI6ImpzLWVycm9yLXRyYWNlci1hcGkuY2FmZTI0LmNvbSIsIm1hbGxfaWQiOiJvaG9yYTIwMTkiLCJzaG9wX25vIjoxLCJwYXRoX3JvbGUiOiIiLCJsYW5ndWFnZV9jb2RlIjoia29fS1IiLCJjb3VudHJ5X2NvZGUiOiJLUiIsImlzX3l0cyI6ZmFsc2UsImlzX2NvbnRhaW5lciI6ZmFsc2UsIndvcmtzcGFjZSI6InByb2R1Y3Rpb24ifQ.hmtSQHCBpyC37mb3XRPNFYUrUJD7FtyCMRbD0J-0Zqs', {"errors":{"path":"\/api\/v1\/store","collectWindowErrors":true,"preventDuplicateReports":true,"storageKeyPrefix":"EC_JET.","samplingEnabled":true,"samplingRate":0.5},"vitals":{"path":"\/api\/v1\/vitals","samplingEnabled":true,"samplingRate":0.3},"resources":{"path":"\/api\/v1\/resources","samplingEnabled":true,"samplingRate":0.5,"durationThreshold":3000}});
          }
      };
      m.parentNode.insertBefore(a, m);
  }(window, document, 'script', '//optimizer.poxo.com/jet/jet.js', 'EC_JET'));</script>
  <script type="text/javascript">window.CAFE24 = window.CAFE24 || {};CAFE24.ROUTE = {"is_mobile":false,"is_need_route":false,"language_code":"ZZ","path":{"origin":"\/coupon\/coupon_productdetail.html","result":"\/coupon\/coupon_productdetail.html","prefix":""},"shop_no":0,"skin_code":"default","support_language_list":{"ar":"ar_EG","ar-EG":"ar_EG","de":"de_DE","de-DE":"de_DE","en":"en_US","en-IN":"en_IN","en-PH":"en_PH","en-US":"en_US","es":"es_ES","es-ES":"es_ES","hi":"hi_IN","hi-IN":"hi_IN","id":"id_ID","id-ID":"id_ID","it":"it_IT","it-IT":"it_IT","ja":"ja_JP","ja-JP":"ja_JP","ko":"ko_KR","ko-KR":"ko_KR","ms":"ms_MY","ms-MY":"ms_MY","pt":"pt_PT","pt-PT":"pt_PT","ru":"ru_RU","ru-RU":"ru_RU","th":"th_TH","th-TH":"th_TH","tr":"tr_TR","tr-TR":"tr_TR","vi":"vi_VN","vi-VN":"vi_VN","zh":"zh_CN","zh-CN":"zh_CN","zh-HK":"zh_HK","zh-MO":"zh_MO","zh-SG":"zh_SG","zh-TW":"zh_TW"}};</script><script type="text/javascript">if (typeof EC_ROUTE === "undefined") {
      /**
       * 프론트용 라우트 플러그인
       * @type {{bInit: boolean, init: EC_ROUTE.init}}
       * CAFE24.ROUTE 참조
       */
      var EC_ROUTE = {
          EC_DOMAIN_PATH_INFO: 'EC_DOMAIN_PATH_INFO',
          bInit: false,
          aFromList: [],
          aToList: [],
          aCleanFilter: null,
          init: function () {
              if (this.bInit || typeof CAFE24.ROUTE === 'undefined') {
                  return;
              }
              this.bInit = true;
              this.aCleanFilter = [
                  /^shop[1-9][0-9]*$/,
                  /^(m|p)$/,
                  new RegExp('^(' + Object.keys(CAFE24.ROUTE.support_language_list).join('|')  + ')$'),
                  /^skin-(base|skin[1-9][0-9]*|mobile[0-9]*)$/,
              ];
          },
          isNeedRoute: function ()
          {
              return CAFE24.ROUTE.is_need_route;
          },
          /**
           *
           * @param iShopNo
           * @param bMobile
           * @param sFrontLanguage
           * @param sSkinCode
           * @returns {*|string}
           */
          getUrlDomain: function (iShopNo, bMobile, sFrontLanguage, sSkinCode)
          {
              var oRouteConfig = {};
              if (typeof iShopNo == 'undefined') {
                  oRouteConfig.shop_no = CAFE24.SDE_SHOP_NUM;
              } else {
                  oRouteConfig.shop_no = iShopNo;
              }
              if (typeof bMobile == 'undefined') {
                  oRouteConfig.is_mobile = false;
              } else {
                  oRouteConfig.is_mobile = bMobile;
              }
              if (typeof sFrontLanguage == 'undefined') {
                  oRouteConfig.language_code = '';
              }else {
                  oRouteConfig.language_code = sFrontLanguage; // 내부에서 로직으로 동작할땐 언어_지역 형태의 로케일 형태를 따른다.
              }
              if (typeof sSkinCode == 'undefined') {
                  oRouteConfig.skin_code = '';
              }else {
                  oRouteConfig.skin_code = sSkinCode;
              }
  
              var sDomain = '';
              if (oRouteConfig.shop_no != CAFE24.SDE_SHOP_NUM) {
                  // 접근된 다른 멀티샵 도메인 정보는 primary domain 를 조회해야함으로 ajax 를 통해 정보를 얻는다.
                  sDomain = this._getUrlDomainMultishop(oRouteConfig);
              } else {
                  // 샵이 동일할 경우에는 접근된 domain 에 path 정보만 정리하여 반환함.
                  sDomain = this._getUrlDomain(oRouteConfig);
              }
              return sDomain;
          },
          _getUrlDomainMultishop: function (oRouteConfig)
          {
              var sDomain = '';
              EC$.ajax({
                  type: 'GET',
                  url: '/exec/front/Shop/Domain',
                  data: {
                      '_shop_no' : oRouteConfig.shop_no,
                      'is_mobile' : oRouteConfig.is_mobile,
                      'language_code' : oRouteConfig.language_code,
                      'skin_code' : oRouteConfig.skin_code,
                  },
                  async: false,
                  dataType: 'json',
                  cache: true,
                  success: function(oResult) {
                      switch (oResult.code) {
                          case '0000' :
                              sDomain = oResult.data;
                              break;
                          default :
                              break;
                      }
                      return false;
                  }
              });
              return sDomain;
          },
          _getUrlDomain: function (oRouteConfig)
          {
              oRouteConfig.domain = this._getCreateHost(oRouteConfig);
              return location.protocol + '//' + oRouteConfig.domain + this._getCreateUri(oRouteConfig);
          },
          _getCreateHost : function (oRouteConfig)
          {
              var sHost = location.host;
              var aHost = sHost.split('.');
              if (this.isBaseDomain(sHost)) {
                  if (aHost.length > 3) {
                      aHost[0] = '';
                  }
              } else if (oRouteConfig.is_mobile) {
                  if (this.isMobileDomain()) {
                      oRouteConfig.is_mobile = false;
                  }
              }
              return aHost.filter(Boolean).join('.');
          },
          _getCreateUri: function (oRouteInfo)
          {
              var aUrl = [];
              if (this.isBaseDomain() && oRouteInfo.shop_no > 1) {
                  aUrl.push('shop' + oRouteInfo.shop_no);
              }
              if (oRouteInfo.is_mobile) {
                  aUrl.push('m');
              }
              if (oRouteInfo.language_code != 'ZZ' && oRouteInfo.language_code != '') {
                  var iIndex = Object.values(CAFE24.ROUTE.support_language_list).indexOf(oRouteInfo.language_code);
                  if (iIndex !== -1) {
                      aUrl.push(Object.keys(CAFE24.ROUTE.support_language_list)[iIndex]);
                  }
              }
              if (this.isBaseDomain() && oRouteInfo.skin_code != 'default' && oRouteInfo.skin_code != '') {
                  aUrl.push('skin-' + oRouteInfo.skin_code);
              }
              var sUrl= '/';
              if (aUrl.length > 0) {
                  sUrl= '/' + aUrl.join('/');
                  sUrl = this.rtrim(sUrl, '/');
              }
              return sUrl;
          },
          /**
           * en, en-US => en_US
           */
          convertValidLanguageCode: function (sUrlLanguageCode)
          {
              if (typeof CAFE24.ROUTE.support_language_list[sUrlLanguageCode] != 'undefined') {
                  return CAFE24.ROUTE.support_language_list[sUrlLanguageCode];
              }
              return false;
          },
          isMobileDomain: function (sHost)
          {
              if (typeof sHost == 'undefined') {
                  sHost = location.host;
              }
              var aMatched = sHost.match(/^(m|mobile|skin\-mobile|skin\-mobile[0-9]+[\-]{2}shop[0-9]+|skin\-mobile[0-9]+|mobile[\-]{2}shop[0-9]+)\./i);
              return aMatched != null;
          },
          isBaseDomain: function (sHost)
          {
              if (typeof sHost == 'undefined') {
                  sHost = location.host;
              }
              return sHost.indexOf(CAFE24.GLOBAL_INFO.getRootDomain()) !== -1;
          },
          removePrefixUrl: function (sUrl)
          {
              if (this.isNeedRoute()) {
                  sUrl = sUrl.replace(this.getPrefixUrl('/'), '/'); // 자동으로  prefix 붙은 영역을 제거해준다.
              }
              return sUrl;
          },
          getPrefixUrl: function (sUrl)
          {
              if (this.isNeedRoute() === false) {
                  return sUrl;
              }
              if (sUrl.indexOf('/') !== 0) {
                  return sUrl;
              }
              if (sUrl.match(/^\/{2,}/) !== null) {
                  return sUrl;
              }
  
              var iCachedPosition = this.aFromList.indexOf(sUrl);
              if (iCachedPosition > -1) {
                  return this.aToList[iCachedPosition];
              }
  
              var bTailSlash = (sCleanUrl !== '/' && sUrl.substr(-1) === '/');
              var sCleanUrl = this.getCleanUrl(sUrl);
              var aPrefixPart = CAFE24.ROUTE.path.prefix.split('/');
              var aUrlPart = sCleanUrl.split('/');
              var bMatched = true;
              var sReturnUrl = sCleanUrl;
              if (aUrlPart.length < aPrefixPart.length) {
                  bMatched = false;
              } else {
                  for (var i = 0; i < aPrefixPart.length ; i++) {
                      if (aPrefixPart[i] != aUrlPart[i]) {
                          bMatched = false;
                          break;
                      }
                  }
              }
              if (bMatched === false) {
                  if (sCleanUrl == '/') {
                      sReturnUrl = CAFE24.ROUTE.path.prefix;
                  } else {
                      sReturnUrl = CAFE24.ROUTE.path.prefix +  sCleanUrl;
                  }
                  sReturnUrl = bTailSlash ? sReturnUrl : this.rtrim(sReturnUrl, '/')
                  this.aFromList.push(sUrl);
                  this.aToList.push(sReturnUrl);
              }
              return sReturnUrl;
          },
          /**
           * document.location.pathname 이 필요할 경우 사용한다.
           * @returns {*}
           */
          getPathName: function()
          {
              if (typeof CAFE24.ROUTE.path.result == 'undefined') {
                  return document.location.pathname;
              }
              return CAFE24.ROUTE.path.result;
          },
          rtrim: function (str, chr)
          {
              var rgxtrim = (!chr) ? new RegExp('\\s+$') : new RegExp(chr+'+$');
              return str.replace(rgxtrim, '');
          },
          getShopNo: function ()
          {
              return CAFE24.ROUTE.shop_no;
          },
          getSkinCode: function ()
          {
              return CAFE24.ROUTE.skin_code;
          },
          getLanguageCode: function ()
          {
              return CAFE24.ROUTE.language_code;
          },
          getMobile: function ()
          {
              return CAFE24.ROUTE.is_mobile;
          },
          getIsMobile: function ()
          {
              return CAFE24.ROUTE.is_mobile || CAFE24.ROUTE.skin_code.match(/^mobile[0-9]*$/);
          },
          getCleanUrl: function (sUrl)
          {
              if (sUrl === '/') {
                  return sUrl;
              }
  
              var aUrl = sUrl.split('/');
              aUrl.shift();
  
              if (aUrl.length < 1) {
                  return sUrl;
              }
  
              // 현재 4 depth 까지 미리보기 기능이 구현되어있음
              var iPos = 0;
              var bFind = false;
              for (var i = 0; i < aUrl.length ; i++) {
                  bFind = false;
                  for (var iSub = iPos, iSubCount = this.aCleanFilter.length; iSub < iSubCount ; iSub++) {
                      if (aUrl[i].match(this.aCleanFilter[iSub]) !== null) {
                          bFind = true;
                          iPos = iSub + 1;
                          aUrl.splice(i, 1);
                          i--; // aUrl 을 삭제해 주었으니 검색 조건을 -1 제거하여 초기화 한다. 다음 for i++ 로 증감 조회됨.
                          break;
                      }
                  }
                  if (bFind === false) {
                      break;
                  }
              }
              return '/' + aUrl.join('/');
          },
          getIsEasyUrl : function ()
          {
              return !window.location.pathname.match(/^[\w\/\-\.]+(php|html|htm)$/i);
          }
      };
      EC_ROUTE.init();
  }
  </script><meta http-equiv="Content-Type" content="text/html; charset=utf-8"><link rel="shortcut icon" href="/web/upload/favicon_20190801113230.ico">
  
  <script type="text/javascript">
  window.CAFE24 = window.CAFE24 || {};
  CAFE24.MANIFEST_CACHE_REVISION = '2410171343';
  CAFE24.getDeprecatedNamespace = function(sDeprecatedNamespace, sSupersededNamespace) {
  var sNamespace = sSupersededNamespace 
  ? sSupersededNamespace 
  : sDeprecatedNamespace.replace(/^EC_/, '');
  return CAFE24[sNamespace];
  }
  CAFE24.FRONT_LANGUAGE_CODE = "ko_KR";
  CAFE24.MOBILE = false;
  CAFE24.MOBILE_DEVICE = false;
  CAFE24.MOBILE_USE = true;
  var EC_MOBILE = CAFE24.MOBILE;
  var EC_MOBILE_DEVICE = CAFE24.MOBILE_DEVICE;
  var EC_MOBILE_USE = CAFE24.MOBILE_USE;
  CAFE24.SKIN_CODE = "skin144";
  CAFE24.SDE_SHOP_NUM = 1;CAFE24.SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },getTimezone: function() { return "Asia/Seoul" },getDateFormat: function() { return "Y-m-d" },isMultiShop : function() { return true; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isPH : function() { return false; },getCountryAndLangMap : function() { return {
  "KR": "ko_KR",
  "US": "en_US",
  "JP": "ja_JP",
  "CN": "zh_CN",
  "TW": "zh_TW",
  "VN": "vi_VN",
  "PH": "en_PH"
  }},isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return false; },getModeName : function() {return false; },isMobileAdmin : function() {return false; },isNewProMode : function() {return true; },isExperienceMall : function() { return false; },isDcollection : function() {return false; },isYoutubeShops : function() {return false; },getYtShopsShopNo : function() {return 0; },getAdminID : function() {return ''},getMallID : function() {return 'ohora2019'},getCurrencyFormat : function(sPriceTxt, bIsNumberFormat) { 
  sPriceTxt = String(sPriceTxt);
  var aCurrencySymbol = ["","\uc6d0",false];
  if (typeof CAFE24.SHOP_PRICE !== 'undefined' && isNaN(sPriceTxt.replace(/[,]/gi, '')) === false && bIsNumberFormat === true) {
  // bIsNumberFormat 사용하려면 Ui(':libUipackCurrency')->plugin('Currency') 화폐 라이브러리 추가 필요
  sPriceTxt = CAFE24.SHOP_PRICE.toShopPrice(sPriceTxt.replace(/[,]/gi, ''), true, CAFE24.SDE_SHOP_NUM);
  }
  try {
  var sPlusMinusSign = (sPriceTxt.toString()).substr(0, 1);
  if (sPlusMinusSign === '-' || sPlusMinusSign === '+') {
  sPriceTxt = (sPriceTxt.toString()).substr(1);
  return sPlusMinusSign + aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
  } else {
  return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
  }
  } catch (e) {
  return aCurrencySymbol[0] + sPriceTxt + aCurrencySymbol[1];
  }
  }};CAFE24.CURRENCY_INFO = {getOriginReferenceCurrency : function() {return 'USD'},getCurrencyList : function(sCurrencyCode) { var aCurrencyList = {"JPY":{"currency_symbol":"&yen;","decimal_place":0,"round_method_type":"F"},"VND":{"currency_symbol":"&#8363;","decimal_place":0,"round_method_type":"F"},"PHP":{"currency_symbol":"&#8369;","decimal_place":2,"round_method_type":"R"},"USD":{"currency_symbol":"$","decimal_place":2,"round_method_type":"R"},"CNY":{"currency_symbol":"&yen;","decimal_place":2,"round_method_type":"R"},"TWD":{"currency_symbol":"NT$","decimal_place":0,"round_method_type":"F"},"BRL":{"currency_symbol":"R$","decimal_place":2,"round_method_type":"R"},"EUR":{"currency_symbol":"\u20ac","decimal_place":2,"round_method_type":"R"},"AUD":{"currency_symbol":"A$","decimal_place":2,"round_method_type":"R"},"BHD":{"currency_symbol":".&#1583;.&#1576;","decimal_place":3,"round_method_type":"R"},"BDT":{"currency_symbol":"&#2547;","decimal_place":2,"round_method_type":"R"},"GBP":{"currency_symbol":"&pound;","decimal_place":2,"round_method_type":"R"},"CAD":{"currency_symbol":"C$","decimal_place":2,"round_method_type":"R"},"CZK":{"currency_symbol":"K&#269;","decimal_place":2,"round_method_type":"R"},"DKK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"HKD":{"currency_symbol":"HK$","decimal_place":2,"round_method_type":"R"},"HUF":{"currency_symbol":"Ft","decimal_place":2,"round_method_type":"R"},"INR":{"currency_symbol":"&#8377;","decimal_place":2,"round_method_type":"R"},"IDR":{"currency_symbol":"Rp","decimal_place":0,"round_method_type":"F"},"ILS":{"currency_symbol":"&#8362;","decimal_place":2,"round_method_type":"R"},"JOD":{"currency_symbol":" &#1583;&#1610;&#1606;&#1575;&#1585;","decimal_place":3,"round_method_type":"R"},"KWD":{"currency_symbol":"&#1583;&#1610;&#1606;&#1575;&#1585;","decimal_place":3,"round_method_type":"R"},"MYR":{"currency_symbol":"RM","decimal_place":2,"round_method_type":"R"},"MXN":{"currency_symbol":"Mex$","decimal_place":2,"round_method_type":"R"},"NZD":{"currency_symbol":"NZ$","decimal_place":2,"round_method_type":"R"},"NOK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"PKR":{"currency_symbol":"&#8360;","decimal_place":2,"round_method_type":"R"},"PLN":{"currency_symbol":"z\u0142","decimal_place":2,"round_method_type":"R"},"RUB":{"currency_symbol":"\u0440\u0443\u0431","decimal_place":2,"round_method_type":"R"},"SAR":{"currency_symbol":"&#65020;","decimal_place":2,"round_method_type":"R"},"SGD":{"currency_symbol":"S$","decimal_place":2,"round_method_type":"R"},"ZAR":{"currency_symbol":"R","decimal_place":2,"round_method_type":"R"},"SEK":{"currency_symbol":"kr","decimal_place":2,"round_method_type":"R"},"CHF":{"currency_symbol":"Fr","decimal_place":2,"round_method_type":"R"},"THB":{"currency_symbol":"&#3647;","decimal_place":2,"round_method_type":"R"},"TRY":{"currency_symbol":"TL","decimal_place":2,"round_method_type":"R"},"AED":{"currency_symbol":"&#1601;&#1604;&#1587;","decimal_place":2,"round_method_type":"R"}}; return aCurrencyList[sCurrencyCode] },isUseReferenceCurrency : function() {return false }};CAFE24.COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'https'; },moveSsl : function() { if (CAFE24.COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } },setEcCookie : function(sKey, sValue, iExpire) {var exdate = new Date();exdate.setDate(exdate.getDate() + iExpire);var setValue = escape(sValue) + "; domain=." + CAFE24.GLOBAL_INFO.getBaseDomain() + "; path=/;expires=" + exdate.toUTCString();document.cookie = sKey + "=" + setValue;}};CAFE24.SHOP_LIB_INFO = {getBankInfo : function() { 
  var oBankInfo = "";
  $.ajax({
  type: "GET",
  url: "/exec/front/Shop/Bankinfo",
  dataType: "json",
  async: false,
  success: function(oResponse) {
  oBankInfo = oResponse;
  }
  });
  return oBankInfo; }};            var EC_SDE_SHOP_NUM = CAFE24.SDE_SHOP_NUM;
  var SHOP = CAFE24.getDeprecatedNamespace('SHOP');
  var EC_COMMON_UTIL = CAFE24.getDeprecatedNamespace('EC_COMMON_UTIL');
  var EC_SHOP_LIB_INFO = CAFE24.getDeprecatedNamespace('EC_SHOP_LIB_INFO');
  var EC_CURRENCY_INFO = CAFE24.getDeprecatedNamespace('EC_CURRENCY_INFO');
  CAFE24.ROOT_DOMAIN = "cafe24.com";
  CAFE24.API_DOMAIN = "cafe24api.com";
  CAFE24.TRANSLATE_LOG_STATUS = "F";
  CAFE24.GLOBAL_INFO = (function() {
  var oData = {"base_domain":"ohora2019.cafe24.com","root_domain":"cafe24.com","api_domain":"cafe24api.com","is_global":false,"is_global_standard":false,"country_code":"KR","language_code":"ko_KR","admin_language_code":"ko_KR"};
  return {
  getBaseDomain: function() {
  return oData['base_domain'];
  },
  getRootDomain: function() {
  return oData['root_domain'];
  },
  getApiDomain: function() {
  return oData['api_domain'];
  },
  isGlobal: function() {
  return oData['is_global'];
  },
  isGlobalStandard: function() {
  return oData['is_global_standard'];
  },
  getCountryCode: function() {
  return oData['country_code'];
  },
  getLanguageCode: function() {
  return oData['language_code'];
  },
  getAdminLanguageCode: function() {
  return oData['admin_language_code'];
  }
  };
  })();
  var EC_ROOT_DOMAIN = CAFE24.ROOT_DOMAIN;
  var EC_API_DOMAIN = CAFE24.API_DOMAIN;
  var EC_TRANSLATE_LOG_STATUS = CAFE24.TRANSLATE_LOG_STATUS;
  var EC_GLOBAL_INFO = CAFE24.getDeprecatedNamespace('EC_GLOBAL_INFO');
  CAFE24.AVAILABLE_LANGUAGE = ["ko_KR","zh_CN","en_US","zh_TW","es_ES","pt_PT","vi_VN","ja_JP","en_PH"];
  CAFE24.AVAILABLE_LANGUAGE_CODES = {"ko_KR":"KOR","zh_CN":"CHN","en_US":"ENG","zh_TW":"TWN","es_ES":"ESP","pt_PT":"PRT","vi_VN":"VNM","ja_JP":"JPN","en_PH":"PHL"};
  var EC_AVAILABLE_LANGUAGE = CAFE24.AVAILABLE_LANGUAGE;
  var EC_AVAILABLE_LANGUAGE_CODES = CAFE24.AVAILABLE_LANGUAGE_CODES;
  CAFE24.GLOBAL_PRODUCT_LANGUAGE_CODES = {  
  sClearanceCategoryCode: '',
  sManualLink: '//support.cafe24.com/hc/ko/articles/7739013909529',
  sHsCodePopupLink: 'https://www.wcotradetools.org/en/harmonized-system',
  aCustomRegex: '"PHL" : "^[0-9]{8}[A-Z]?$"',
  sCountryCodeData: 'kor',
  sEnglishExampleURlForGlobal: '',
  aReverseAddressCountryCode: ["VNM","PHL"],
  aSizeGuideCountryAlign: '["US","UK","EU","KR","JP","CN"]',
  aIsSupportTran: ["ja_JP","zh_CN","zh_TW","en_US","vi_VN","en_PH","pt_PT","es_ES"]
  };
  var EC_GLOBAL_PRODUCT_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_PRODUCT_LANGUAGE_CODES');
  CAFE24.GLOBAL_ORDER_LANGUAGE_CODES = {
  aModifyOrderLanguage: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","VN":"vi_VN","PH":"en_PH"},
  aUseIdCardKeyCountry: ["CN","TW"],
  aLanguageWithCountryCode: {"zh_CN":["CN","CHN","HK","HNK"],"ja_JP":["JP","JPN"],"zh_TW":["TW","TWN"],"ko_KR":["KR","KOR"],"vi_VN":["VN","VNM"],"en_PH":["PH","PHL"]},
  aCheckDisplayRequiredIcon: ["ja_JP","zh_CN","zh_TW","en_US","vi_VN","en_PH"],
  aSetReceiverName: {"zh_CN":{"sCountry":"CN","bUseLastName":true},"zh_TW":{"sCountry":"TW","bUseLastName":false},"ja_JP":{"sCountry":"JP","bUseLastName":true}},
  aSetDeferPaymethodLanguage: {"ja_JP":"\uc77c\ubcf8","zh_CN":"\uc911\uad6d"},
  aUseDeferPaymethod: ["ja_JP","zh_CN"],
  aCheckShippingCompanyAndPaymethod: ["ja_JP","zh_CN"],
  aSetDeferPaymethodLanguageForShipping: {"ja_JP":"\u65e5\u672c","zh_CN":"\uc911\uad6d"},
  aCheckStoreByPaymethod: ["ja_JP","zh_CN"],
  aCheckIsEmailRequiredForJs: ["en_US","zh_CN","zh_TW","ja_JP","vi_VN","en_PH"],
  aSetIdCardKeyCountryLanguage: {"CN":"\uc911\uad6d\uc758","TW":"\ub300\ub9cc\uc758"},
  aReverseGlobalAddress: ["en_PH","vi_VN","PHL","VNM","VN","PH"],
  aNoCheckZipCode: ["KOR","JPN"],
  aNotPostCodeAPICountryList: ["en_US","es_ES","pt_PT","en_PH"],
  aEnableSearchExchangeAddr: ["KR","JP","CN","VN","TW","PH"],
  aDuplicatedBaseAddr: ["TW","JP"],
  aReverseAddressCountryCode: ["VN","PH"],
  aCheckZipCode: ["PHL","en_PH","PH"]
  };
  var EC_GLOBAL_ORDER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_ORDER_LANGUAGE_CODES');
  CAFE24.GLOBAL_MEMBER_LANGUAGE_CODES = {  
  sAdminWebEditorLanguageCode: 'ko' ,
  oNotAvailDecimalPointLanguages: ["ko_KR","ja_JP","zh_TW","vi_VN"],
  oAddressCountryCode: {"KOR":"ko_KR","JPN":"ja_JP","CHN":"zh_CN","TWN":"zh_TW","VNM":"vi_VN","PHL":"en_PH"},
  };
  var EC_GLOBAL_MEMBER_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MEMBER_LANGUAGE_CODES');
  CAFE24.GLOBAL_BOARD_LANGUAGE_CODES = {  
  bUseLegacyBoard: true
  };
  var EC_GLOBAL_BOARD_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_BOARD_LANGUAGE_CODES');
  CAFE24.GLOBAL_MALL_LANGUAGE_CODES = {
  oDesign: {
  oDesignAddReplaceInfo: {"group_id":"SKIN.ADD.ADMIN.DESIGNDETAIL","replacement":{"KR":"KOREAN","US":"ENGLISH","JP":"JAPANESE","CN":"SIMPLIFIED.CHINESE","TW":"TRADITIONAL.CHINESE","ES":"SPANISH","PT":"PORTUGUESE","PH":"ENGLISH"}},
  oDesignDetailLanguageCountryMap: {"KR":"ko_KR","JP":"ja_JP","CN":"zh_CN","TW":"zh_TW","US":"en_US","ES":"es_ES","PT":"pt_PT","PH":"en_PH"},
  oSmartDesignSwitchTipLink: {"edibot":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/img_editor_dnd.png","link":"\/\/ecsupport.cafe24.com\/board\/free\/list.html?board_act=list&board_no=12&category_no=9&cate_no=9"},"smart":{"img":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/design\/ko_KR\/img_editor_smart.png","link":"\/\/sdsupport.cafe24.com"}},
  oSmartDesignDecoShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"],
  oSmartDesignDecoMultilingual: {"list":{"ko_KR":"KOREAN","en_US":"ENGLISH","ja_JP":"JAPANESE","zh_CN":"SIMPLIFIED.CHINESE","zh_TW":"TRADITIONAL.CHINESE","es_ES":"SPANISH","pt_PT":"PORTUGUESE","vi_VN":"VIETNAMESE"},"group_id":"EDITOR.LAYER.EDITING.DECO"},
  aSmartDesignModuleShopList: ["ko_KR","ja_JP","zh_CN","en_US","zh_TW","es_ES","pt_PT"]
  },
  oStore: {
  oMultiShopCurrencyInfo: {"en_US":{"currency":"USD"},"zh_CN":{"currency":"USD","sub_currency":"CNY"},"ja_JP":{"currency":"JPY"},"zh_TW":{"currency":"TWD"},"es_ES":{"currency":"EUR"},"pt_PT":{"currency":"EUR"},"ko_KR":{"currency":"KRW"},"vi_VN":{"currency":"VND"},"en_PH":{"currency":"PHP"}},
  oBrowserRedirectLanguage: {"ko":{"primary":"ko_KR","secondary":"en_US"},"en":{"detail":{"en-ph":{"primary":"en_PH","secondary":"en_US"},"en-us":{"primary":"en_US","secondary":"es_ES"},"default":{"primary":"en_US","secondary":"es_ES"}}},"ja":{"primary":"ja_JP","secondary":"en_US"},"zh":{"detail":{"zh-cn":{"primary":"zh_CN","secondary":"en_US"},"zh-tw":{"primary":"zh_TW","secondary":"zh_CN"},"default":{"primary":"en_US","secondary":"ko_KR"}}},"es":{"primary":"es_ES","secondary":"en_US"},"pt":{"primary":"pt_PT","secondary":"en_US"},"vi":{"primary":"vi_VN","secondary":"en_US"},"default":{"primary":"en_US","secondary":"ko_KR"}},
  aChangeableLanguages: ["en_US","ja_JP","ko_KR"],
  aNoZipCodeLanguage: ["ko_KR","ja_JP"]
  },
  oMobile: {
  sSmartWebAppFaqUrl: "https://support.cafe24.com/hc/ko/articles/8466586607641",
  sAmpFaqUrl: "https://ecsupport.cafe24.com/board/free/read.html?no=1864&board_no=5&category_no=13&cate_no=13&category_no=13&category_no=13",
  },
  oPromotion: {
  bQrCodeAvailable: true,
  bSnsMarketingAvailable: true
  },
  oShippingReverseAddressLanguage: ["vi_VN","en_PH"] ,
  oGlobalStandardSwitchHelpCodeLink: {"SH.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/SH.DS.html"},"PR.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PR.DS.html"},"OR.SM.BO":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/OR.SM.BO.html"},"DE.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/DE.DS.html"},"MB.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/MB.DS.html"},"PM.DS":{"link":"\/\/serviceguide.cafe24shop.com\/en_PH\/PM.DS.html"}},
  getAdminMainLocaleLanguage: function(sSkinLocaleCode) {
  var oLocaleData = [];
  var locale = "";
  var shopLangName = "";
  if (sSkinLocaleCode == "US") {
  locale = "en_US";
  shopLangName = "ENGLISH";
  } else if (sSkinLocaleCode == "JP") {
  locale = "ja_JP";
  shopLangName = "JAPANESE";
  } else if (sSkinLocaleCode == "CN") {
  locale = "zh_CN";
  shopLangName = "SIMPLIFIED.CHINESE";
  } else if (sSkinLocaleCode == "TW") {
  locale = "zh_TW";
  shopLangName = "TRADITIONAL.CHINESE";
  } else if (sSkinLocaleCode == "ES") {
  locale = "es_ES";
  shopLangName = "SPANISH";
  } else if (sSkinLocaleCode == "PT") {
  locale = "pt_PT";
  shopLangName = "PORTUGUESE";
  } else if (sSkinLocaleCode == "VN") {
  locale = "vi_VN";
  shopLangName = "VIETNAMESE";
  } else if(sSkinLocaleCode == "PH") {
  locale = "en_PH";
  shopLangName = "ENGLISH.PH";
  }
  oLocaleData["locale"] = locale;
  oLocaleData["shopLangName"] = shopLangName;
  return oLocaleData;
  }
  };
  var EC_GLOBAL_MALL_LANGUAGE_CODES = CAFE24.getDeprecatedNamespace('EC_GLOBAL_MALL_LANGUAGE_CODES');
  CAFE24.GLOBAL_DATETIME_INFO = {
  oConstants: {"STANDARD_DATE_REGEX":"\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/","IN_ZONE":"inZone","OUT_ZONE":"outZone","IN_FORMAT":"inFormat","OUT_FORMAT":"outFormat","IN_DATE_FORMAT":"inDateFormat","IN_TIME_FORMAT":"inTimeFormat","OUT_DATE_FORMAT":"outDateFormat","OUT_TIME_FORMAT":"outTimeFormat","IN_FORMAT_DATE_ONLY":1,"IN_FORMAT_TIME_ONLY":2,"IN_FORMAT_ALL":3,"OUT_FORMAT_DATE_ONLY":1,"OUT_FORMAT_TIME_ONLY":2,"OUT_FORMAT_ALL":3,"DATE_ONLY":"YYYY-MM-DD","TIME_ONLY":"HH:mm:ss","FULL_TIME":"YYYY-MM-DD HH:mm:ss","ISO_8601":"YYYY-MM-DD[T]HH:mm:ssZ","YEAR_ONLY":"YYYY","MONTH_ONLY":"MM","DAY_ONLY":"DD","WEEK_ONLY":"e","TIME_H_I_ONLY":"HH:mm","TIME_HOUR_ONLY":"HH","TIME_MINUTE_ONLY":"mm","POSTGRE_FULL_TIME":"YYYY-MM-DD HH24:MI:SS","POSTGRE_TIME_ONLY":" HH24:MI:SS","MICRO_SECOND_ONLY":"u","SEOUL":"Asia\/Seoul","TOKYO":"Asia\/Tokyo","SHANGHAI":"Asia\/Shanghai","TAIPEI":"Asia\/Taipei","HANOI":"Asia\/Bangkok","LOS_ANGELES":"America\/Los_Angeles","LISBON":"Europe\/Lisbon","MADRID":"Europe\/Madrid","SINGAPORE":"Asia\/Singapore","UTC":"Etc\/UTC","MAX_DATETIME":"9999-12-31 23:59:59"},
  oOptions: {"inZone":"Asia\/Seoul","inFormat":"YYYY-MM-DD HH:mm:ss","inDateFormat":"YYYY-MM-DD","inTimeFormat":"HH:mm:ss","outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"},
  oPolicies: {"shop":{"outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"}},
  sOverrideTimezone: '',
  sMomentNamespace: 'EC_GLOBAL_MOMENT'
  };
  CAFE24.FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"ohora2019","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogOffFlag":"F"};
  var EC_FRONT_JS_CONFIG_MANAGE = CAFE24.getDeprecatedNamespace('EC_FRONT_JS_CONFIG_MANAGE');
  typeof window.CAFE24 === "undefined" && (window.CAFE24 = {});
  CAFE24.FRONTEND = {"FW_MANIFEST_CACHE_REVISION":2410171343,"IS_WEB_VIEW":"F"};
  CAFE24.ROUTE = {"is_mobile":false,"is_need_route":false,"language_code":"ZZ","path":{"origin":"\/coupon\/coupon_productdetail.html","result":"\/coupon\/coupon_productdetail.html","prefix":""},"shop_no":0,"skin_code":"default","support_language_list":{"ar":"ar_EG","ar-EG":"ar_EG","de":"de_DE","de-DE":"de_DE","en":"en_US","en-IN":"en_IN","en-PH":"en_PH","en-US":"en_US","es":"es_ES","es-ES":"es_ES","hi":"hi_IN","hi-IN":"hi_IN","id":"id_ID","id-ID":"id_ID","it":"it_IT","it-IT":"it_IT","ja":"ja_JP","ja-JP":"ja_JP","ko":"ko_KR","ko-KR":"ko_KR","ms":"ms_MY","ms-MY":"ms_MY","pt":"pt_PT","pt-PT":"pt_PT","ru":"ru_RU","ru-RU":"ru_RU","th":"th_TH","th-TH":"th_TH","tr":"tr_TR","tr-TR":"tr_TR","vi":"vi_VN","vi-VN":"vi_VN","zh":"zh_CN","zh-CN":"zh_CN","zh-HK":"zh_HK","zh-MO":"zh_MO","zh-SG":"zh_SG","zh-TW":"zh_TW"}};
  </script>
  
  <link rel="stylesheet" type="text/css" href="/ind-script/optimizer.php?filename=nc1LCoAwDIThfXHrOYLeqC3xAU2mpCno7RW8gHQ7zMdPB4RpWY2qYbcoZNzQLTPl1mgzqFOGCHR6h5n-_DmHhtL9hIaEaxB299FoiTfbGPWYCg9S1FBO5ZCi6td_AA&amp;type=css&amp;k=37c9481ac0212340e132f81eba4d1049fee7f18e&amp;t=1681776733"><link rel="stylesheet" type="text/css" href="/ind-script/optimizer_user.php?filename=DcpBCoAgEAXQA9hdfkablkEXsXFISx1xFDp-LR88BMkMJjOUm0KCNLfMdkMdZ4pkQs8J6tl41ngV6BOLXVeQKrL4kRgko0pBbT-pH9xdTPvt3uk_Hw&amp;type=css&amp;k=2cedd6c865ee5376ea9f12b533086a4d92e2a502&amp;t=1680740726&amp;user=T">
  <div class="xans-element- xans-coupon xans-coupon-productdetailajax"><!--
          $coupon_down_result_url = /coupon/coupon_down_result.html
      -->
  <!-- <div class="title">
          <h3><span>쿠폰 다운로드</span></h3>
          <p class="button"><a href="#none" id="btn_all_coupondown" class="btnNormal">전체쿠폰다운받기</a></p>
      </div> -->
  <div class="couponSkinArea">
          <!--
              진열 방식에따라 아래의 ul class 변경
              1열 : ul class="grid1"
              2열 : ul class="grid2"
              3열 : ul class="grid3"
          -->
          <!-- <ul class="grid3">
  <li class="xans-record-">
                  <div class="coupon " style="background-image:url('//img.echosting.cafe24.com/smartAdmin/img/promotion/coupon_skin1.png')">
                      <div class="detail" onclick="COUPON.viewInfo('6079205414000000852', this)">
                          <strong class="title" style="color:#483b1b; font-family:Arial; font-size:11px;">장바구니 시크릿 쿠폰</strong>
                          <p class="discount" style="color:#d07b01; font-family:Dotum;"><span style="font-family:Verdana;">1000 할인</span></p>
                          <p class="period" style="color:#685219; font-family:Dotum;">발급일로부터 1일 이내</p>
                      </div>
                      <div class="button"><a href="/exec/front/newcoupon/IssueDownload?coupon_no=6079205414000000852&amp;opener_url=https%3A%2F%2Fwww.ohora.kr%2Fproduct%2Fdetail.html%3F%26product_no%3D2101%26cate_no%3D121"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_coupondown_skin4.png" alt="다운받기"></a></div>
                  </div>
              </li>
                      </ul> -->
  </div>
  </div>
  <script type="text/javascript" src="//t1.kakaocdn.net/kakao_js_sdk/v1/kakao.min.js" charset="utf-8"></script>
  
  
  
  <script type="text/javascript">
  var sIsChannelUi = 'F';
  var sChRef = '';
  var sUseShoppingpayPg = 'F';
  var sOwnMallLanding = 'F';
  var sShoppingPayCookie = '';
  var sYtshopping = 'F';
  if (sIsChannelUi === 'T') {
  sessionStorage.setItem('ch_ref', sChRef);
  }
  CAFE24.getChRefData = function() {
  if (sIsChannelUi === 'T') {
  return sessionStorage.getItem('ch_ref');
  }
  }
  // 자사몰랜딩/유튜브랜딩 공용
  CAFE24.checkChannelUI = function() {
  if ((sIsChannelUi === 'T' && sessionStorage.getItem('ch_ref') || (sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T')) || sYtshopping === 'T') {
  return true;
  } else {
  return false;
  }
  }
  // 자사몰랜딩 UI확인
  CAFE24.isOwnMallLandingUI = function() {
  return sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T';
  }
  CAFE24.attachShoppingpayParam = function(sUrl) {
  if (sUrl) {
  var sChRef = CAFE24.getChRefData();
  if (sChRef) {
  var sSeparator = (sUrl.includes('?')) ? '&' : '?';
  sUrl += sSeparator + 'ch_ref=' + sChRef;
  } else if (sUseShoppingpayPg === 'T' && sOwnMallLanding === 'T') {
  var sSeparator = (sUrl.includes('?')) ? '&' : '?';
  sUrl += sSeparator + 'co_servicetype=shoppingpay';
  }
  }
  return sUrl;
  }
  CAFE24.attachChRef = function(sUrl) {
  if (sUrl) {
  var sChRef = CAFE24.getChRefData();
  if (sChRef) {
  var sSeparator = (sUrl.includes('?')) ? '&' : '?';
  sUrl += sSeparator + 'ch_ref=' + sChRef;
  }
  }
  return sUrl;
  }
  var sIsCheckout = 'F';
  var sCheckoutToken = '';
  if (sIsCheckout === 'T') {
  sessionStorage.setItem('checkoutToken', sCheckoutToken);
  } else {
  sessionStorage.removeItem('checkoutToken');
  }
  CAFE24.getCheckoutToken = function() {
  if (sIsCheckout === 'T') {
  return sessionStorage.getItem('checkoutToken');
  }
  }
  CAFE24.attachCheckoutParam = function(sUrl) {
  if (sUrl) {
  var sCheckoutToken = CAFE24.getCheckoutToken();
  if (sCheckoutToken) {
  var sSeparator = (sUrl.includes('?')) ? '&' : '?';
  sUrl += sSeparator + 'checkoutToken=' + sCheckoutToken;
  }
  }
  return sUrl;
  }
  CAFE24.MOBILE_WEB = false; var mobileWeb = CAFE24.MOBILE_WEB;
  try {
  var isUseLoginKeepingSubmit = false;
  // isSeqNoKeyExpiretime
  function isSeqNoKeyExpiretime(iExpiretime)
  {
  var sDate = new Date();
  var iNow = Math.floor(sDate.getTime() / 1000);
  // 유효시간 확인
  if (iExpiretime > iNow) {
  return false;
  }
  return true;
  }
  function isUseLoginKeeping()
  {
  // 디바이스 확인
  if (EC_MOBILE_DEVICE === false) {
  return;
  }
  // 로그인 여부
  var isLogin = document.cookie.match(/(?:^| |;)iscache=F/) ? true : false
  if (isLogin) {
  return;
  }
  var sLoginKeepingInfo = localStorage.getItem('use_login_keeping_info');
  var iSeqnoExpiretime;
  var iSeqNoKey;
  if (sLoginKeepingInfo == null) {
  iSeqnoExpiretime = localStorage.getItem('seq_no_key_expiretime');
  iSeqNoKey = localStorage.getItem('seq_no_key');
  // 유효시간, key 값 확인
  if (iSeqnoExpiretime === null || iSeqNoKey === null) {
  return;
  }
  } else {
  var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
  iSeqNoKey = oLoginKeepingInfo.seq_no_key;
  iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
  if (isNaN(iSeqNoKey) === true || isNaN(iSeqnoExpiretime) === true) {
  return;
  }
  }
  if (isSeqNoKeyExpiretime(iSeqnoExpiretime) === false) {
  return;
  }
  useLoginKeepingSubmit();
  }
  function findGetParamValue(paramKey)
  {
  var result = null,
  tmp = [];
  location.search.substr(1).split('&').forEach(function (item) {
  tmp = item.split('=');
  if (tmp[0] === paramKey) result = decodeURIComponent(tmp[1]);
  });
  return result;
  }
  function useLoginKeepingSubmit()
  {
  var iSeqnoExpiretime;
  var iSeqNoKey;
  var sUseLoginKeepingIp;
  var sLoginKeepingInfo = localStorage.getItem('use_login_keeping_info');
  if (sLoginKeepingInfo == null) {
  iSeqnoExpiretime = localStorage.getItem('seq_no_key_expiretime');
  iSeqNoKey = localStorage.getItem('seq_no_key');
  } else {
  var oLoginKeepingInfo = JSON.parse(sLoginKeepingInfo);
  iSeqNoKey = oLoginKeepingInfo.seq_no_key;
  iSeqnoExpiretime = oLoginKeepingInfo.seq_no_key_expiretime;
  sUseLoginKeepingIp = oLoginKeepingInfo.use_login_keeping_ip;
  }
  var oForm = document.createElement('form');
  oForm.method = 'post';
  oForm.action = '/exec/front/member/LoginKeeping';
  document.body.appendChild(oForm);
  var oSeqNoObj = document.createElement('input');
  oSeqNoObj.name = 'seq_no_key';
  oSeqNoObj.type = 'hidden';
  oSeqNoObj.value = iSeqNoKey;
  oForm.appendChild(oSeqNoObj);
  oSeqNoObj = document.createElement('input');
  oSeqNoObj.name = 'seq_no_key_expiretime';
  oSeqNoObj.type = 'hidden';
  oSeqNoObj.value = iSeqnoExpiretime;
  oForm.appendChild(oSeqNoObj);
  var returnUrl = findGetParamValue('returnUrl');
  if (returnUrl == '' || returnUrl == null) {
  returnUrl = location.pathname + location.search;
  }
  oSeqNoObj = document.createElement('input');
  oSeqNoObj.name = 'returnUrl';
  oSeqNoObj.type = 'hidden';
  oSeqNoObj.value = returnUrl;
  oForm.appendChild(oSeqNoObj);
  if (sUseLoginKeepingIp != undefined) {
  oSeqNoObj = document.createElement('input');
  oSeqNoObj.name = 'use_login_keeping_ip';
  oSeqNoObj.type = 'hidden';
  oSeqNoObj.value = sUseLoginKeepingIp;
  oForm.appendChild(oSeqNoObj);
  }
  oForm.submit();
  isUseLoginKeepingSubmit = true;
  }
  isUseLoginKeeping();
  } catch(e) {
  }
  var bCoupondownClick = false;
  $('#btn_all_coupondown').bind('click', function() {
  if (bCoupondownClick === false) {
  bCoupondownClick = true;
  //쿠폰발급실행 레이어
  if (typeof(sCouponDownResultUrl) !== 'undefined') {
  sDownloadURL = '/exec/front/newcoupon/IssueDownload';
  aParam = 'coupon_no=6079205414000000852';
  aParam += '&return_type=json';
  //쿠폰발급 실행
  $.post(sDownloadURL, aParam, function( data ) {
  COUPON.getDownCouponResultForm(data);
  }, 'json');
  } else {
  location.href='/exec/front/newcoupon/IssueDownload?coupon_no=6079205414000000852&opener_url=%2F%2Fwww.ohora.kr%2Fproduct%2Fdetail.html%3F%26product_no%3D2101%26cate_no%3D121';
  }
  }
  });
  var sCouponDownResultUrl = '/coupon/coupon_down_result.html'
  var aCouponInfo = {"6079205414000000852":{"coupon_no":6079205414000000852,"coupon_name":"%EC%9E%A5%EB%B0%94%EA%B5%AC%EB%8B%88%20%EC%8B%9C%ED%81%AC%EB%A6%BF%20%EC%BF%A0%ED%8F%B0","coupon_kind":"\ud560\uc778","coupon_content":"1000%20%ED%95%A0%EC%9D%B8","coupon_max_benefit":"","coupon_period":"%EB%B0%9C%EA%B8%89%EC%9D%BC%EB%A1%9C%EB%B6%80%ED%84%B0%201%EC%9D%BC%20%EC%9D%B4%EB%82%B4","coupon_period_detail":"%EB%B0%9C%EA%B8%89%EC%9D%BC%EB%A1%9C%EB%B6%80%ED%84%B0%201%EC%9D%BC%20%EC%9D%B4%EB%82%B4","coupon_usecon":"%EC%A0%9C%ED%95%9C%20%EC%97%86%EC%9D%8C","download_url":"\/\/img.echosting.cafe24.com\/design\/skin\/admin\/ko_KR\/btn_coupondown_skin4.png","background_user_img":"F","background_url":"\/\/img.echosting.cafe24.com\/smartAdmin\/img\/promotion\/coupon_skin1.png","background_class":null,"coupon_issue":"%EC%B5%9C%EB%8C%80%201000%EB%A7%A4%EA%B9%8C%EC%A7%80%20%EA%B0%80%EB%8A%A5","coupon_issue_url":"\/exec\/front\/newcoupon\/IssueDownload?coupon_no=6079205414000000852&opener_url=https%3A%2F%2Fwww.ohora.kr%2Fproduct%2Fdetail.html%3F%26product_no%3D2101%26cate_no%3D121","call_coupon_detail":"onclick=\"COUPON.viewInfo('6079205414000000852', this)\"","coupon_product_info":"%EC%A0%84%EC%B2%B4%EC%83%81%ED%92%88","foreign_delivery_msg":"","region_delivery_msg":""}}
  var aLogData = {"log_server1":"eclog2-260.cafe24.com","log_server2":"elg-db-svcm-079.cafe24.com","mid":"ohora2019","stype":"e","domain":"","shop_no":1,"lang":"ko_KR","ver":2,"hash":"63f16ae26e1c6f01a19ea5d6407434f9","ca":"cfa-js.cafe24.com\/cfa.js","etc":"","mobile_flag":"F"};
  var sMileageName = '적립금';
  var sMileageUnit = '[:PRICE:]원';
  var sDepositName = '예치금';
  var sDepositUnit = '코인';
  CAFE24.SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":""},"aFrontSubCurrencyFormat":{"head":"","tail":""}}}; var SHOP_CURRENCY_INFO = CAFE24.SHOP_CURRENCY_INFO;
  var EC_ASYNC_LIVELINKON_ID = '';
  </script>
  </div>
      </div>
      <!------------------------------ //쿠폰 다운로드 -------------------------------->
    </div>
    <!------------------------------ //레이아웃 -------------------------------->
    <!------------------------------ SP_detailRelationPrd_wrap -------------------------------->
    <div class="SP_layoutFix">
      <!------------------------------ 레이아웃 -------------------------------->
      <div class="SP_detailLayout">
        <!------------------------------ product_additional -------------------------------->
        <div class="xans-element- xans-product xans-product-additional "><!------------------------------ 리뷰 -------------------------------->
  <div id="prdReview" class="ec-base-tab grid5">
            <!-------------------- 탭 영역 ------------------------->
            <ul class="SP_detailPrdTab_wrap">
  <li class="selected">
                <a href="#prdReview">리뷰 <b class="Brev crema-product-reviews-count crema-applied" data-product-code="2101" data-format="({{{count}}})" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">(40)</b></a>
              </li>
              <li><a href="#prdDetail">상세정보</a></li>
              <!--li><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
              <li><a href="#prdQnA">쇼핑안내</a></li>
              <!--li><a href="#prdFAQ">FAQ</a></li-->
            </ul>
  <!-------------------- //탭 영역 -------------------------><div class="SP_detailContainer">
              <div class="SP_detailContants">
                <div class="SP_detailBoard_wrap">
                  <!-- <div class="review_img"><img src="/web/upload/review/reviewPlus_2.png"></div> -->
                  <!-- cre.ma / 리스트 위젯 / 스크립트를 수정할 경우 연락주세요 (support@cre.ma) -->
                  <style>
                    #prdReview .nodata {
                      display: none;
                    }
                  </style>
  <div class="crema-product-reviews crema-applied" data-product-code="2101" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-product-reviews&quot;]" style="margin-top: 32px; margin-bottom: 32px;"><iframe id="crema-product-reviews-1" height="0" src="https://review6.cre.ma/ohora.kr/products/reviews?product_code=2101&amp;iframe_id=crema-product-reviews-1&amp;widget_style=&amp;install_method=hardcoded&amp;app=0&amp;parent_url=https%3A%2F%2Fwww.ohora.kr%2Fproduct%2Fdetail.html%3Fproduct_no%3D2101%26cate_no%3D121%26display_group%3D1&amp;nonmember_token=&amp;secure_device_token=V229c1fd8a665211601399d90ef85f32d97907fb93c1dffc230274dad5ace2173b614f13755fa79084b9ed2b0292347e8a&amp;iframe=1" width="100%" scrolling="no" allowtransparency="true" frameborder="0" name="crema-product-reviews-1-1729772614950" style="display: block; visibility: visible; height: 1361px;"></iframe></div>
                  <div class="xans-element- xans-product xans-product-review crema-hide crema-applied" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-hide, .crema-review-hide&quot;]" style="display: none;"><a name="use_review"></a>
  <p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
  <div class="minor displaynone">
                      <p><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/ico_under19.gif" alt=""> &nbsp;<strong>"19세 미만의 미성년자"</strong>는 출입을 금합니다!</p>
                      <p class="button"><a href="/intro/board.html" class="btnEm sizeS">성인인증 하기</a></p>
                    </div>
  <div class="SP_dtailReveiwBoard_wrap">
                      <table border="1" summary="" class="SP_tableSt01_isThead ">
  <caption>
                          상품사용후기
                        </caption>
                        <colgroup>
  <col style="width: 70px">
  <col style="width: auto">
  <col style="width: 150px">
  <col style="width: 150px">
  <col style="width: 50px">
  <col style="width: 150px" class="displaynone">
  </colgroup>
  <thead><tr>
  <th scope="col">번호</th>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">작성일</th>
                            <th scope="col">조회</th>
                            <th scope="col" class="displaynone">평점</th>
                          </tr></thead>
  <tbody class="center">
  <tr class="xans-record-">
  <td>4</td>
                            <td class="subject left txtBreak"> <a href="/product/provider/review_read.xml?no=231204&amp;board_no=4&amp;spread_flag=T">만족</a> <span class="txtWarn"></span>
  </td>
                            <td> 네****</td>
                            <td class="txtInfo txt11">2024-10-18</td>
                            <td class="txtInfo txt11">22</td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point5.gif" alt="5점"></td>
                          </tr>
  <tr class="xans-record-">
  <td>3</td>
                            <td class="subject left txtBreak"> <a href="/product/provider/review_read.xml?no=231161&amp;board_no=4&amp;spread_flag=T">만족</a> <span class="txtWarn"></span>
  </td>
                            <td> 네****</td>
                            <td class="txtInfo txt11">2024-10-14</td>
                            <td class="txtInfo txt11">34</td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point5.gif" alt="5점"></td>
                          </tr>
  <tr class="xans-record-">
  <td>2</td>
                            <td class="subject left txtBreak"> <a href="/product/provider/review_read.xml?no=231130&amp;board_no=4&amp;spread_flag=T">만족</a> <span class="txtWarn"></span>
  </td>
                            <td> 네****</td>
                            <td class="txtInfo txt11">2024-10-11</td>
                            <td class="txtInfo txt11">20</td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point5.gif" alt="5점"></td>
                          </tr>
  <tr class="xans-record-">
  <td>1</td>
                            <td class="subject left txtBreak"> <a href="/product/provider/review_read.xml?no=231115&amp;board_no=4&amp;spread_flag=T">만족</a> <span class="txtWarn"></span>
  </td>
                            <td> 네****</td>
                            <td class="txtInfo txt11">2024-10-09</td>
                            <td class="txtInfo txt11">26</td>
                            <td class="displaynone"><img src="//img.echosting.cafe24.com/skin/base/board/ico_point5.gif" alt="5점"></td>
                          </tr>
  </tbody>
  </table>
  </div>
  </div>
                  <div class="SP_tableBtn_wrap crema-hide crema-applied" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-hide, .crema-review-hide&quot;]" style="display: none;">
                    <div class="SP_tableBtnAlign_right">
                      <a href="/board/product/list.html?board_no=4" class="SP_cm_btn SP_btn_black_w2_bd">모두보기</a>
                      <!-- <a href="/board/product/write.html?board_no=4&product_no=2101&cate_no=121&display_group=1" class="SP_cm_btn SP_btn_blue_bg">글쓰기</a> -->
                    </div>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
  <!------------------------------ //리뷰 -------------------------------->
  <!------------------------------ 상품 상세 정보 -------------------------------->
  <div id="prdDetail" class="ec-base-tab grid5">
            <!-------------------- 탭 영역 ------------------------->
            <ul class="SP_detailPrdTab_wrap">
  <li>
                <a href="#prdReview">리뷰 <b class="Brev crema-product-reviews-count crema-applied" data-product-code="2101" data-format="({{{count}}})" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">(40)</b></a>
              </li>
              <li class="selected"><a href="#prdDetail">상세정보</a></li>
              <!--li><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
              <li><a href="#prdQnA">쇼핑안내</a></li>
              <!--li><a href="#prdFAQ">FAQ</a></li-->
            </ul>
  <!-------------------- //탭 영역 ------------------------->
  <!------------------------------------ @@ 탄타투 컨테이너 -------------------------------->

            <!------------------------------------ @@ 탄타투 컨테이너 -------------------------------->
  
            <div id="prdDetail" class="ec-base-tab grid5">
              <!--
                        <ul class="SP_detailPrdTab_wrap">
                        <li><a href="#prdReview">상품리뷰 <b class="Brev crema-product-reviews-count" data-product-code="2101" data-format="({{{count}}})">(4)</b></a></li>
                        <li class="selected"><a href="#prdDetail">상세정보</a></li>
                        <li><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li>
                        <li><a href="#prdQnA">쇼핑안내</a></li> -->
              <!--li><a href="#prdFAQ">FAQ</a></li-->
              <!-- </ul> -->
              <div class="SP_detailContainer" id="SP_prdView" value="a" data-src="hh">
                <!-- <div class="SP_dtSectionTt">상품상세정보</div> -->
                <!--<center style= "margin-bottom:30px;"><div><img src="https://www.ohora.kr/smartpc/_img/common/coupon_common.jpg"/></div></center>-->
                <!--<center><img src="/smartpc/_img/common/promotion_5off.jpg" width="1000"/></a></center>-->
  
                <!-- 상세페이지 상단 공통 이미지 -->
                <!--<div id="detail_info_img2" style="text-align:center;">
                            <img src="/web/_event/210402_event8/detail_pc.jpg"/>
                            &nbsp;</div>-->
                <p><br></p><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_1.jpg" data-size="1000px/1506px" data-filesize="1,20 MB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_1.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_2.jpg" data-size="1000px/2541px" data-filesize="1.018,16 kB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_2.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_3.jpg" data-size="1000px/1496px" data-filesize="1,31 MB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_3.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_4.jpg" data-size="1000px/1577px" data-filesize="674,87 kB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_4.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_5.jpg" data-size="1000px/1678px" data-filesize="1,25 MB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_5.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_7.jpg" data-size="1000px/2138px" data-filesize="1,60 MB" data-error="" style="display: block; float: none; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_7.jpg"><br><img data-result="success" data-name="8th_ECBFA0EC9E89_detail_8.jpg" data-size="1000px/685px" data-filesize="120,14 kB" data-error="" style="display: block; vertical-align: top; margin: 0px auto; text-align: center;" src="/web/upload/NNEditor/20241004/8th_ECBFA0EC9E89_detail_8.jpg"><br>
                <!-- 에코마케팅 상품상세 슬라이드 -->
                <!------------------------------------ product_no (1081) 상품 슬라이드 -------------------------------->
  <div id="product_1081" style="display: none;">
      <!-- gif 슬라이드 start -->
      <div class="gif_slide swiper-container swiper_gif slide_1081 swiper-container-initialized swiper-container-horizontal">
          <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <!-- 디테일 영역 --><li class="swiper-slide"><img loading="lazy" alt="틴트 브릭" src="/web/upload/product_detail/0804_customparts/Gif_1-min.gif"></li>
              <li class="swiper-slide"><img loading="lazy" alt="틴트 래디쉬" src="/web/upload/product_detail/0804_customparts/Gif_2-min.gif"></li>
              <li class="swiper-slide"><img loading="lazy" alt="틴트 레드" src="/web/upload/product_detail/0804_customparts/Gif_3-min.gif"></li>
          </ul>
  <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      <!-- gif 슬라이드 end -->
      <div style="text-align:center; width:100%; margin: 0 auto;">
          <img loading="lazy" alt="width ohora 오호라 커스텀 파츠" src="/web/upload/product_detail/0804_customparts/slide_01.jpg">
          &nbsp;<!-- 파츠 버튼 클릭 시 변경되는 슬라이드 영역 start -->
          <div class="custom_parts" id="c_parts">
              <div class="parts_wapper">
                  <div class="parts_thumbnail_box">
                      <img loading="lazy" class="parts parts1 parts_select" onclick="parts('drop_img', 'parts1');" alt="drop" style="width:15% !important;" src="/web/upload/product_detail/0804_customparts/button_drop_1.jpg">
                      &nbsp;<img loading="lazy" class="parts parts2" onclick="parts('heart_img', 'parts2');" alt="heart" style="width:15% !important;" src="/web/upload/product_detail/0804_customparts/button_heart_1.jpg">
                      &nbsp;<img loading="lazy" class="parts parts3" onclick="parts('planet_img', 'parts3');" alt="planet" style="width:15% !important;" src="/web/upload/product_detail/0804_customparts/button_planet_1.jpg">
                  &nbsp;</div>
                  <!-- drop 파츠 슬라이드 영역 -->
                  <div class="parts_img_box swiper-container slide_1081 drop_img show swiper-container-initialized swiper-container-horizontal">
                      <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" alt="틴트 브릭" src="/web/upload/product_detail/0804_customparts/drop_01.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 래디쉬" src="/web/upload/product_detail/0804_customparts/drop_02.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 레드" src="/web/upload/product_detail/0804_customparts/drop_03.jpg"></li>
                      </ul>
  <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                  <!-- heart 파츠 슬라이드 영역 -->
                  <div class="parts_img_box swiper-container slide_1081 heart_img swiper-container-initialized swiper-container-horizontal">
                      <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" alt="틴트 브릭" src="/web/upload/product_detail/0804_customparts/heart_01.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 래디쉬" src="/web/upload/product_detail/0804_customparts/heart_02.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 레드" src="/web/upload/product_detail/0804_customparts/heart_03.jpg"></li>
                      </ul>
  <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                  <!-- planet 파츠 슬라이드 영역 -->    
                  <div class="parts_img_box swiper-container slide_1081 planet_img swiper-container-initialized swiper-container-horizontal">
                      <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" alt="틴트 브릭" src="/web/upload/product_detail/0804_customparts/planet_01.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 래디쉬" src="/web/upload/product_detail/0804_customparts/planet_02.jpg"></li>
                          <li class="swiper-slide"><img loading="lazy" alt="틴트 레드" src="/web/upload/product_detail/0804_customparts/planet_03.jpg"></li>
                      </ul>
  <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag"></div></div>
                  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              </div>
          </div>
          <!-- 파츠 버튼 클릭 시 변경되는 슬라이드 영역 end -->
      </div>
      <img loading="lazy" alt="" style="display:block; margin:0 auto; padding-top:150px;" src="/web/upload/product_detail/0804_customparts/06_%EB%B6%80%EC%B0%A9%ED%8C%8C%EC%B8%A0_how%20to%20use.jpg">
  &nbsp;</div>
  <!------------------------------------ //product_no (1081) 상품 슬라이드 -------------------------------->
  
  
  <!------------------------------------ product_no (1304) 상품 슬라이드 -------------------------------->
  <div id="product_1304" style="display:none; text-align:center; font-size:0;">
      <img loading="lazy" alt="" src="/web/product/basic/01re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/02.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/03ill.jpg">
      
      &nbsp;<div class="swiper-container swiper-container-initialized swiper-container-horizontal">
          <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/basic/04-1.jpg"></li>
              <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/basic/04-2.jpg"></li>
              <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/basic/04-3.jpg"></li>
              <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/basic/04-4.jpg"></li>
          </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      
      <img loading="lazy" alt="" src="/web/product/basic/05re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/06re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/07re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/08re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/09rere.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/10re.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/11.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/12rere.jpg">
  
      &nbsp;<div id="vediowapper1137">
          <iframe src="https://player.vimeo.com/video/661969294?autopause=false&amp;autoplay=1&amp;loop=1&amp;muted=1&amp;title=0&amp;byline=0&amp;portrait=0&amp;controls=0" frameborder="0" width="1000" height="800" allow="autoplay; fullscreen; picture-in-picture;" allowfullscreen=""></iframe>
      </div>
  
      <img loading="lazy" alt="" src="/web/product/basic/13rere.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/basic/14rere.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/product/2+1/notice.jpg">
  &nbsp;</div>
  <!------------------------------------// product_no (1304) 상품 슬라이드 -------------------------------->
  
  
  <!------------------------------------ product_no (1367, 1372) 상품 슬라이드 -------------------------------->
  <div id="product_1367" style="display:none; text-align:center; font-size:0;">
      <img loading="lazy" alt="" src="/web/product/creampastel/bg_rere.jpg">
      &nbsp;<div class="swiperBG">
          <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/creampastel/3_1rere.png"></li>
                  <li class="swiper-slide"><img loading="lazy" alt="" src="/web/product/creampastel/3_2rere.png"></li>
              </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      </div>
  
      <img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/4.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/5.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/6.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/7.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/8.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/9.jpg">
      &nbsp;<img loading="lazy" alt="" src="/web/upload/NNEditor/20220223/10.jpg">
  
      &nbsp;<img loading="lazy" alt="" class="notice1367" style="display:none;" src="/web/product/creampastel/fix.png">
      &nbsp;<img loading="lazy" alt="" class="notice1372" style="display:none;" src="/web/product/creampastel/free.png">
  &nbsp;</div>
  <!------------------------------------// product_no (1367, 1372) 상품 슬라이드 -------------------------------->
  
  <!------------------------------------ product_no (1414) 상품 슬라이드 -------------------------------->
  <div id="product_1414" style="display:none; font-size:0;">
      <!-- slide -->
      <img loading="lazy" alt="" src="/web/product/cherryblossom/slide_tex.jpg">
      &nbsp;<div class="parts_btn">
          <img loading="lazy" class="mirror_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_1_1.jpg">
          &nbsp;<img loading="lazy" class="heart_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_2_2.jpg">
          &nbsp;<img loading="lazy" class="drop_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_3_2.jpg">
          &nbsp;<img loading="lazy" class="flower_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_4_2.jpg">
      &nbsp;</div>
      <div class="parts_detail">
          <div class="swiper-container mirror_slide on swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/mirror_mixmatch1.jpg"></li>
                  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/mirror_mixmatch2.jpg"></li>
              </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
          <div class="swiper-container heart_slide swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/heart_mixmatch1.jpg"></li>
                  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/heart_mixmatch2.jpg"></li>
              </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
          <div class="swiper-container drop_slide swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/drop_mixmatch1.jpg"></li>
                  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/drop_mixmatch2.jpg"></li>
              </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
          <div class="swiper-container flower_slide swiper-container-initialized swiper-container-horizontal">
              <ul class="swiper-wrapper" style="transition-duration: 0ms;">
  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/flower_mixmatch1.jpg"></li>
                  <li class="swiper-slide"><img loading="lazy" src="/web/customparts/blossom/flower_mixmatch2.jpg"></li>
              </ul>
  <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
          <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      </div>
      <img loading="lazy" alt="" src="/web/product/cherryblossom/slide_bottom.jpg">
      &nbsp;<!-- how to use -->
      <img loading="lazy" alt="" src="/web/upload/NNEditor/20220307/04_EBB680ECB0A9ED8C8CECB8A0_how20to20use.jpg">
  &nbsp;</div>
  <!------------------------------------ //product_no (1414) 상품 슬라이드 -------------------------------->
  
  <!------------------------------------ product_no (1420) 상품 슬라이드 -------------------------------->
  <div id="product_1420" style="display:none; font-size:0;">
    <!-- slide -->
    <img loading="lazy" alt="" src="/web/product/cherryblossom/slide_tex.jpg">
    &nbsp;<div class="parts_btn">
        <img loading="lazy" class="mirror_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_1_1.jpg">
        &nbsp;<img loading="lazy" class="heart_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_2_2.jpg">
        &nbsp;<img loading="lazy" class="drop_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_3_2.jpg">
        &nbsp;<img loading="lazy" class="flower_slide" style="width: calc(100%/4) !important; display: inline-block; padding: 8px;" src="/web/customparts/blossom/bt_4_2.jpg">
    &nbsp;</div>
    <div class="parts_detail">
        <div class="swiper-container mirror_slide on">
            <ul class="swiper-wrapper">
  <li class="swiper-slide"><img loading="lazy" src="/web/product/cherryblossom/mirror_2.jpg"></li>
            </ul>
  <div class="swiper-pagination"></div>
        </div>
        <div class="swiper-container heart_slide">
            <ul class="swiper-wrapper">
  <li class="swiper-slide"><img loading="lazy" src="/web/product/cherryblossom/heart_2.jpg"></li>
            </ul>
  <div class="swiper-pagination"></div>
        </div>
        <div class="swiper-container drop_slide">
            <ul class="swiper-wrapper">
  <li class="swiper-slide"><img loading="lazy" src="/web/product/cherryblossom/drop_2.jpg"></li>
            </ul>
  <div class="swiper-pagination"></div>
        </div>
        <div class="swiper-container flower_slide">
            <ul class="swiper-wrapper">
  <li class="swiper-slide"><img loading="lazy" src="/web/product/cherryblossom/flower_2.jpg"></li>
            </ul>
  </div>
    </div>
    <img loading="lazy" alt="" src="/web/product/cherryblossom/slide_bottom.jpg">
    &nbsp;<!-- how to use -->
    <img loading="lazy" src="/web/upload/NNEditor/20220307/copy-1646641038-7_crewreview.jpg">
    &nbsp;<img loading="lazy" src="/web/upload/NNEditor/20220307/copy-1646641038-8_howto.jpg">
    &nbsp;<div id="videowapper1420">
        <iframe src="https://player.vimeo.com/video/685371586?autopause=false&amp;autoplay=1&amp;loop=1&amp;muted=1&amp;title=0&amp;byline=0&amp;portrait=0&amp;controls=0" frameborder="0" width="1000" height="800" allow="autoplay; fullscreen; picture-in-picture;" allowfullscreen=""></iframe>
    </div>
    <img loading="lazy" src="/web/upload/NNEditor/20220307/copy-1646641038-10_nailcomponents.jpg">
    &nbsp;<img loading="lazy" src="/web/upload/NNEditor/20220307/copy-1646641038-11_partscomponents.jpg">
    &nbsp;<img loading="lazy" src="/web/upload/NNEditor/20220307/copy-1646641038-12_blank.jpg">
  &nbsp;</div>
  <!------------------------------------ //product_no (1420) 상품 슬라이드 -------------------------------->
  
  
  
  <!------------------------------------ 상품상세 슬라이드 -------------------------------->
  <!-- 슬라이드 적용 상품 번호 = [1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1096, 1097, 1098, 1099, 1100, 1101, 1102, 1103, 1104, 1105, 1106, 1110] -->
  <script>
      var slide_img_length = document.querySelectorAll('#slider-div1 > div > img').length;
      var slide_img_width = 100/slide_img_length;
  
      var slide_page_url = location.href;
  
      SP$(document).ready(function(){
  
          //product_no 1037 - 1046, 1096 상품 적용 슬라이드
          SP$('#slider-div1').slick({
              infinite: true,
              touchThreshold: 2000,
              speed: 300,
              slidesToShow: 1,
              dots: true,
              arrows: false,
              swipe: true,
              pauseOnHover: false
          });
  
          //product_no 1097 - 1106 상품 적용 슬라이드
          SP$('#slider-div1106').slick({
              infinite: true,
              touchThreshold: 2000,
              speed: 300,
              slidesToShow: 1,
              dots: true,
              arrows: false,
              swipe: true,
              pauseOnHover: false
          });
  
          //product_no 1110 상품 적용 슬라이드
          SP$('.slider-div1110').slick({
              infinite: false,
              touchThreshold: 2000,
              speed: 100,
              slidesToShow: 1,
              dots: true,
              arrows: false,
              swipe: true,
              pauseOnHover: false
          });
  
      });
  
      window.onload = function () { 
  
          SP$('.slick-slider .slick-dots li').css('width', slide_img_width+'%');
  
          SP$('#slider-div1106 .slick-dots li').css('width', '8.3%');
  
      }
  
      if(slide_page_url.match("product_no=1096")){
          SP$('#slider-div1').ready(function(){
              SP$('.slick-slider .slick-dots').css('top', '83.6%');
              SP$('.slick-slider .slick-dots').css('width', '892px');
          });
      }
      if(slide_page_url.match("product_no=1112")){
          SP$('#slider-div1').ready(function(){
              SP$('#slider-div1 .slick-dots').attr('style', 'display: none !important');
          });
      }
      if(slide_page_url.match("product_no=1137")){
          SP$('#slider-div1').ready(function(){
              SP$('.slick-slider .slick-dots').attr('style', 'width: 900px !important');
          });
      }
  </script>
  <!------------------------------------ //상품상세 슬라이드 -------------------------------->
  <!------------------------------------ product_no (1137) 상품 슬라이드 -------------------------------->
  <!-- 쿠폰 코드 : 코드 변경 시 value값을 수정해주세요. 강아지-->
  <input type="text" value="OHORA2021DOG" id="couponText_dog" readonly="" style="display:block; position:absolute; left:-10000px;">
  &nbsp;<!-- //쿠폰 코드-->
  <!-- 쿠폰 코드 : 코드 변경 시 value값을 수정해주세요. 고양이-->
  <input type="text" value="OHORA2021CAT" id="couponText_cat" readonly="" style="display:block; position:absolute; left:-10000px;">
  &nbsp;<!-- //쿠폰 코드-->
  <!-- 복사하기 버튼 클릭 시 텍스트 복사 -->
  <script>
      function copy_text(btn){
          var copyText = document.getElementById(btn);
          copyText.select();
          copyText.setSelectionRange(0,9999);
          document.execCommand("copy");
          alert("쿠폰코드가 복사되었습니다.");
      }
  </script>
  <!-- //복사하기 버튼 클릭 시 텍스트 복사 -->
  <!------------------------------------ //product_no (1137) 상품 슬라이드 -------------------------------->
                <!-- //에코마케팅 상품상세 슬라이드 -->
  
                <!--<center><img src="/smartpc/_img/common/shopping_G_NEW_V4_1.jpg" /></a></center>-->
                <div id="detail_info_img" style="text-align: center">
                  <!--<img src="https://www.ohora.kr/smartpc/_img/common/_detail/06.jpg"/><br/>-->
                  <img loading="lazy" src="https://www.ohora.kr/smartpc/_img/common/_detail/notice_final.jpg"><br><!-- <img loading="lazy" id="detail_img_change" src="/web/product/notice/2211/nail_Info.jpg"/><br/> --><img loading="lazy" id="detail_img_change" src="	https://www.ohora.kr/optimize/images/pc/detail/nail_Info.webp"><br>
  </div>
                <script>
                  var tittext = document.getElementsByClassName("SP_detail_content")[0].innerText;
                  var change_img = document.getElementById("detail_img_change");
                  console.log("&&&&", tittext.match("페디"));
                  // 根据tittext匹配更换图片
                  // tittext를 기반으로 매칭하여 이미지를 변경합니다.
                  if (tittext.match("페디")) {
                    change_img.src = "/web/product/notice/2211/pedi_Info.jpg";
                  }
                  var detail_url = location.href;
  
                  var blockedProductNos = [
                    "488",
                    "385",
                    "474",
                    "437",
                    "184",
                    "579",
                    "580",
                    "599",
                    "607",
                    "614",
                    "615",
                    "616",
                    "670",
                    "674",
                    "726",
                    "727",
                    "728",
                    "802",
                    "992",
                    "944",
                    "925",
                    "1107",
                    "1108",
                    "1109",
                    "1395",
                    "1396",
                    "1514",
                    "1397",
                    "1519",
                    "1520",
                    "1521",
                    "1522",
                    "1523",
                    "1524",
                    "1525",
                    "1528",
                    "1529",
                    "1530",
                    "1533",
                    "1561",
                    "1562",
                    "1564",
                    "1565",
                    "1566",
                    "1577",
                    "1578",
                    "1579",
                    "1580",
                    "1582",
                    "1584",
                    "1585",
                    "1600",
                    "1601",
                    "1609",
                    "1642",
                    "1646",
                    "1647",
                    "1648",
                    "1688",
                    "1687",
                    "1676",
                    "1695",
                    "1701",
                    "1700",
                    "1697",
                    "1696",
                    "1694",
                    "1735",
                    "1736",
                    "1737",
                    "1738",
                    "1739",
                    "1517",
                    "1768",
                    "1799",
                    "1798",
                    "1797",
                    "1796",
                    "1795",
                    "1810",
                    "1821",
                    "1824",
                    "1825",
                    "1826",
                    "1827",
                    "1828",
                    "1830",
                    "1816",
                    "1830",
                    "1815",
                    "1837",
                    "1838",
                    "1839",
                    "1878",
                    "1884",
                    "1885",
                    "1886",
                    "1887",
                    "1888",
                    "1889",
                    "1913",
                    "1917",
                    "1922",
                    "1923",
                    "1927",
                    "1928",
                    "1929",
                    "1896",
                    "1930",
                    "1893",
                    "1860",
                    "2016",
                    "2023",
                    "2024",
                    "2025",
                    "2027",
                    "2048",
                    "2043",
                    "2044",
                    "2047",
                    "2051",
                    "2053",
                    "2078",
                    "2079",
                    "2080",
                    "2081",
                    "2099",
                    "2098",
                    "2097",
                    "2096",
                    "2100",
                    "2108",
                    "2107",
                  ];
  
                  console.log("g-w?", blockedProductNos);
                  for (var i = 0; i < blockedProductNos.length; i++) {
                    if (detail_url.match("product_no=" + blockedProductNos[i])) {
                      document.getElementById("detail_img_change").style.display = "none";
                      break; // break the loop once the condition is met
                    }
                  }
                </script>
                <!--<script>
                                var tittext=document.getElementsByClassName("SP_detail_content")[0].innerText;
                                var change_img = document.getElementById("detail_img_change");
                                if(tittext.match("페디")){
                                    change_img.src="/web/product/notice/2211/pedi_Info.jpg";
                                }
  
                                var detail_url=location.href;                                     
                                // 상세 하단 공통
                                if(detail_url.match("product_no=488")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=385")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=474")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=437")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=184")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=579")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=580")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=599")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=607")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=614")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=615")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=616")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=670")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=674")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=726")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=727")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=728")){
                                    document.getElementById("detail_info_img").style.display='none';                                
                                    //document.getElementById("detail_info_img2").style.display='none';
                                }
                                if(detail_url.match("product_no=802")){
                                    document.getElementById("detail_info_img").style.display='none';                                
                                    // document.getElementById("detail_info_img2").style.display='none';
                                }
                                if(detail_url.match("product_no=992")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=944")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=925")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1107")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1108")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1109")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1395")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1396")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1514")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1397")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1519")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1520")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1521")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1522")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1523")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1524")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1525")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1528")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1529")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1530")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1533")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1561")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1562")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                        
                if(detail_url.match("product_no=1564")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1565")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1566")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1577")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1578")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1579")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1580")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1582")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1584")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1585")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1600")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1601")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }    
                                if(detail_url.match("product_no=1609")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1642")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }     
                                if(detail_url.match("product_no=1646")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }           
                                if(detail_url.match("product_no=1647")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }      
                                if(detail_url.match("product_no=1648")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                       
                                if(detail_url.match("product_no=1688")){
                                    document.getElementById("detail_info_img").style.display='none';
                                } 
                                if(detail_url.match("product_no=1687")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }      
                                if(detail_url.match("product_no=1676")){
                                    document.getElementById("detail_info_img").style.display='none';
                                }                                  
                                if(detail_url.match("product_no=1695")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }  
                                if(detail_url.match("product_no=1701")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1700")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }                        
                                if(detail_url.match("product_no=1697")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1696")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }        
                                if(detail_url.match("product_no=1694")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1735")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1736")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1737")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1738")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1739")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1517")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1768")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1798")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1797")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1796")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1795")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1810")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1821")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1824")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1825")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1826")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1827")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                    if(detail_url.match("product_no=1828")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                   if(detail_url.match("product_no=1830")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                 if(detail_url.match("product_no=1816")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                 if(detail_url.match("product_no=1830")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                 if(detail_url.match("product_no=1815")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1837")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1838")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                if(detail_url.match("product_no=1839")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                 if(detail_url.match("product_no=1860")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                if(detail_url.match("product_no=1861")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                if(detail_url.match("product_no=1893")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                if(detail_url.match("product_no=1894")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                if(detail_url.match("product_no=1895")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                if(detail_url.match("product_no=1896")){
                                            document.getElementById("detail_info_img").style.display='none';
                                }
                                
                            </script>-->
              </div>
            </div>
          </div>
  <!--함께 많이 구매한 디자인, 크루 추천 영역 리뷰 하단으로 이동--->
  <!------------------------------ //상품 상세 정보 -------------------------------->
  <!------------------------------------ 함께 많이 구매한 디자인 -------------------------------------->
  <div class="common_list_container reco_new_container">
            <div class="text_area">
              <h3 class="basketRcmdTit">함께 많이 구매한 디자인</h3>
            </div>
            <!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
            <div class="SMS_Product_display SMSprdSortTarget common_list_box" data-sort="2col">
              <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                <!----------------------------------------@@ 상품리스트영역 ul. common_items ------------------------------------->
                <ul class="items SMSitems common_items swiper-wrapper"><li class="xans-record- append_item swiper-slide swiper-slide-active" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2106" data-filter="#네일#자석"><dl><a href="/product/detail.html?product_no=2106&amp;cate_no=121&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//http://www.ohora.kr/web/product/medium/202410/6bd59d9845fa4bf4e097e33bdf733027.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202410/55b871332f5bbb75de9221fd6f0d5cd9.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 워터리 문 네일</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2106" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
      <defs>
          <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
      </defs>
      <use xlink:href="#star-full"></use>
  </svg>
  </div> 4.7</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2106" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">18</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2106','121', '1', 'A0000', false, '1', 'P0000DDA', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2106&amp;cate_no=121&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2106" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">18</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">3</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #실버 #자석 #그레이</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">네일,자석</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide swiper-slide-next" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2103" data-filter="#데일리#그라데이션#네일"><dl><a href="/product/detail.html?product_no=2103&amp;cate_no=121&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202410/8b4bb562a09100244fa6cd0ef361f550.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202410/d0feef871c1272d03457fc47caadded6.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 애쉬 올리브 네일</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2103" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
      <defs>
          <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
      </defs>
      <use xlink:href="#star-full"></use>
  </svg>
  </div> 5.0</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2103" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">11</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2103','121', '1', 'A0000', false, '1', 'P0000DCX', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2103&amp;cate_no=121&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2103" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">11</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">0</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #그라데이션 #마블 #카키 #그린 #데일리</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">데일리,그라데이션,네일</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2105" data-filter="#네일#데일리#글리터#시럽"><dl><a href="/product/detail.html?product_no=2105&amp;cate_no=121&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/medium/202410/ff6dd7a9e27db6df380f28a4d0535049.jpg"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy swiper-lazy-loaded" data-original="" alt="" width="800" height="800" src="//www.ohora.kr/web/product/big/202410/a5beaf9f11af868748bc0cc450709cbd.jpg"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 슈가 글라스 네일</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">14,800</p><p class="sale_price">12,580</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2105" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
      <defs>
          <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
      </defs>
      <use xlink:href="#star-full"></use>
  </svg>
  </div> 5.0</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2105" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">12</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2105','121', '1', 'A0000', false, '1', 'P0000DCZ', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2105&amp;cate_no=121&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2105" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">12</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">14,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">12,580</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">2</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#네일 #젤스트립 #글라스네일 #핑크 #시럽 #글리터 #데일리</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">네일,데일리,글리터,시럽</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container " data-prd-no="2107" data-filter="#젤네일팁#데일리#프렌치"><dl><a href="/product/detail.html?product_no=2107&amp;cate_no=121&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="product_icons"><span><img src="/web/upload/custom_3016530263086512.png" alt=""></span><span><img src="/web/upload/custom_3916560421336443.png" alt=""></span></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202410/8a09495d30539c30c694a62863d9d620.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202410/924bfc96ae5c7302d7ecce233db9e615.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: none;"><span>coming<br>soon</span></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 모노로그 네일 (라운드 스퀘어)</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">27,800</p><p class="sale_price">23,630</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2107" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
      <defs>
          <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
      </defs>
      <use xlink:href="#star-full"></use>
  </svg>
  </div> 5.0</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2107" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">3</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart" onclick="basketConfirmShow(this);"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/btn_list_cart.gif" onclick="category_add_basket('2107','121', '1', 'A0000', false, '1', 'P0000DDB', 'A', 'F', '0');" alt="장바구니 담기" class="ec-admin-icon cart"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2107&amp;cate_no=121&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2107" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">3</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">27,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">23,630</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">0</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#젤네일팁 #블랙 #실버 #프렌치 #데일리</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">젤네일팁,데일리,프렌치</span></div></div></div><div class="restockIcon"></div></div></dl></div></li><li class="xans-record- append_item swiper-slide" style="width: 323.333px; margin-right: 40px;"><div class="complete container  soldout_prd" data-prd-no="2108" data-filter="#젤네일팁#데일리"><dl><a href="/product/detail.html?product_no=2108&amp;cate_no=121&amp;display_group=1" class="viewlink"></a><div class="base_img"><div class="BR_icon"><p><b>BEST</b>리뷰</p></div><div class="product_icons"><span><img src="/web/upload/custom_3016530263086512.png" alt=""></span><span><img src="/web/upload/custom_3916560421336443.png" alt=""></span></div><div class="thumb"><img loading="lazy" class="*lazyload thumb_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/medium/202410/ac27da280b07741fc6334b9e2cce34ba.jpg" alt="" width="800" height="800"><img loading="lazy" decoding="async" class="*lazyload hover_img swiper-lazy" data-original="" data-src="//www.ohora.kr/web/product/big/202410/87c6b68a88b0c6b6f653fd56b2e25a6b.jpg" alt="" width="800" height="800"><div class="sticker"><div class="new">NEW</div><div class="percent"><div class="dcPercent"></div></div><div class="best">BEST</div></div><span class="soldout_img" style="display: inline;"><a href="/product/detail.html?product_no=2108&amp;cate_no=121&amp;display_group=1"><span>coming<br>soon</span></a></span></div></div><div class="base_mask"><dd class="info_container"><p class="name"><span style="font-size:16px;color:#000000;font-weight:bold;">N 노바 네일 (라운드 스퀘어)</span></p><p class="subname"></p><p class="subnameSimple"></p></dd><dd class="soldout_container" style="display: none;"><p class="soldout">(품절)</p></dd><dd class="price_container"><p class="custom_price displaynone">0</p><p class="setCustomPrice displaynone">0</p><p class="price strike mPriceStrike">27,800</p><p class="sale_price">23,630</p><p class="discount">15%</p></dd><dd class="icons  displaynone" style="display: none;" "=""><span class="soldout displaynone"><img src="/web/upload/icon_201912231458558300.gif" class="icon_img" alt="품절"></span></dd><div class="prdInfo_bottom"><div class="crema_container"><div class="crema_wrap"><p class="rv_value"><span class="crema-product-reviews-score crema-applied" data-product-code="2108" data-star-style="single" data-format="{{{stars}}} {{{score}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-score&quot;]"><div class="crema_product_reviews_score__container" style="display: inline-block; font-family: inherit;"><div class="crema_product_reviews_score_star_wrapper crema_product_reviews_score_star_wrapper--full " style="width: 13px; height: 13px; vertical-align: middle; display: inline-block;"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20" class="crema_product_reviews_score_star_wrapper__star " style="fill: rgb(0, 0, 0); width: 100%; height: 100%;">
      <defs>
          <path id="star-full" d="M7.157 6.698l2.165-4.59a.743.743 0 0 1 1.358 0l2.165 4.59 4.84.74c.622.096.87.895.42 1.353l-3.503 3.57.827 5.044c.106.647-.544 1.141-1.1.835l-4.328-2.382-4.329 2.382c-.556.306-1.205-.188-1.099-.835l.826-5.044-3.502-3.57c-.45-.458-.202-1.257.42-1.352l4.84-.74z"></path>
      </defs>
      <use xlink:href="#star-full"></use>
  </svg>
  </div> 4.6</div></span></p><p class="rv_count"><span class="rv_icon"><img src="/web/upload/rv_icon2.png"></span><span class="count crema-product-reviews-count crema-applied" data-product-code="2108" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">7</span></p></div></div></div><div class="hash_container done"><div class="hash_wrap"></div></div><div class="Prev_Cart displaynone" onclick="basketConfirmShow(this);"></div><div class="rv_icon"><a href="/product/detail.html?product_no=2108&amp;cate_no=121&amp;display_group=1"><img src="/web/upload/rv_icon1.png"><span class="count crema-product-reviews-count crema-applied" data-product-code="2108" data-format="{{{count}}}" data-hide-if-zero="1" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">7</span></a></div><div class="only_info_chk displaynone"><div class="xans-element- xans-product xans-product-listitem"><div class=" display_가격 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;font-weight:bold;">가격</span></strong><span style="font-size:12px;color:#555555;font-weight:bold;text-decoration:line-through;">27,800</span><span id="span_product_tax_type_text" style="text-decoration:line-through;"> </span></div><div class=" display_할인판매가 xans-record-"><strong class="title"><span style="font-size:13px;color:#222222;">할인판매가</span></strong><span style="font-size:13px;color:#222222;">23,630</span></div><div class=" display_사용후기 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">사용후기</span></strong><span style="font-size:12px;color:#555555;">0</span></div><div class="xans-record-"><strong class="title displaynone"></strong></div><div class=" display_해시태그 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">해시태그</span></strong><span style="font-size:12px;color:#555555;">#젤네일팁 #블루 #블루그레이 #실버 #데일리</span></div><div class=" display_상품필터값 xans-record-"><strong class="title displaynone"><span style="font-size:12px;color:#555555;">상품필터값</span></strong><span style="font-size:12px;color:#555555;">젤네일팁,데일리</span></div></div></div><div class="restockIcon"></div></div></dl></div></li></ul>
  <!----------------------------------------@@ 상품리스트영역 ul. common_items ------------------------------------->
  <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
              <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
              <div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true"></div>
            <div class="swiper-scrollbar"><div class="swiper-scrollbar-drag" style="transform: translate3d(0px, 0px, 0px); width: 620.544px;"></div></div></div>
          </div>
  <!------------------------------------  //함께 많이 구매한 디자인 -------------------------------------->
  <!---------------------------------------- 오호라 크루 추천 ------------------------------------------->
  <div class="prdDetail_crew not_slide">
            <!--오호라 크루 추천-->
            <div class="common_reco_section recommend_crew swiper-container">
      <h3>오호라 크루 추천</h3>
      <div df-banner-code="common-recommend" class="recommend_banner_wrap swiper-wrapper df-bannermanager df-bannermanager-common-recommend">
          <div df-banner-clone="" class="SP_eventBn_li swiper-slide">
              <a href="https://events.payco.com/web/share.nhn?evntPageNm=75c7Pl3&amp;pubCode=PUBSTJUOE9"><div class="imgBox"><img src="	https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/94fad6d6474acf635b9c771591480a7c.png" alt="페이코 상시 12% 할인"></div> <div class="txtBox">페이코 상시 12% 할인</div></a>
          </div><div df-banner-clone="" class="SP_eventBn_li swiper-slide">
              <a href="https://play.google.com/store/apps/details?id=com.cafe24.ec.plusohora2019"><div class="imgBox"><img src="https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/4cd90f97beaaeddde49bbad02da10bc5.webp" alt="앱 다운 시 무료배송"></div> <div class="txtBox">앱 다운 시 무료배송</div></a>
          </div><div df-banner-clone="" class="SP_eventBn_li swiper-slide">
              <a href="https://www.ohora.kr/event/event6.html"><div class="imgBox"><img src="https://www.ohora.kr/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/0b48933209882b54093f40d23cb23246.webp" alt="신규회원 젤램프 증정"></div> <div class="txtBox">신규회원 젤램프 증정</div></a>
          </div>
      </div>
      <!-- Add Pagination -->
      <div class="swiper-scrollbar"></div>
  </div>
            <!--// 오호라 크루 추천-->
          </div>
  <!--------------------------------------// 오호라 크루 추천 ------------------------------------------->
  <div id="prdQnA" class="SP_detailBoard_wrap">
            <!-------------------- 탭 영역 ------------------------->
            <ul class="SP_detailPrdTab_wrap">
  <li>
                <a href="#prdReview">리뷰 <b class="Brev crema-product-reviews-count crema-applied" data-product-code="2101" data-format="({{{count}}})" data-install-method="hardcoded" data-observed-install="false" data-applied-widgets="[&quot;.crema-product-reviews-count&quot;]">(40)</b></a>
              </li>
              <li><a href="#prdDetail">상세정보</a></li>
              <!--li class="selected"><a href="#recmdPrdWiget" class="best_design">추천디자인</a></li-->
              <li class="selected"><a href="#prdQnA">쇼핑안내</a></li>
              <!--li class=""><a href="#prdFAQ">FAQ</a></li-->
            </ul>
            
  <!-------------------- //탭 영역 -------------------------><div class="SP_detailContainer">
              <div class="SP_detailContants">
                <div class="SP_detailBoard_wrap">
                  <h3 class="infoTit">배송안내</h3>
                  <!--
                                <table class="infoTbl">
                                    <colgroup>
                                        <col width="215px"/>
                                        <col width="*"/>
                                    </colgroup>
                                    <tr>
                                        <th>배송방법</th>
                                        <td>CJ대한통운(1588-1255) , 한진택배(1588-0011)</td>
                                    </tr>
                                    <tr>
                                        <th>배송지역</th>
                                        <td>전국</td>
                                    </tr>
                                    <tr>
                                        <th>배송비</th>
                                        <td>3,000원 (5만원 이상 구매 시 무료배송)<br/>
                                            * 제주 및 특수 도서 산간 지역은 별도 추가 운임 발생</td>
                                    </tr>
                                    <tr>
                                        <th>배송기간</th>
                                        <td>
                                            <b>* 출고일로부터 평균 2~3일 정도 소요됩니다. (주말/공휴일 제외)</b><br/>
                                            <b>* 상품 출고 시 송장 번호가 알림톡 또는 SMS로 발송됩니다.</b><br/>
                                            <b>* 모든 배송은 지역 택배사 사정과 천재지변으로 지연될 수 있습니다.</b><br/>
                                            <b>* 배송 폭주, 입고지연, 품절 등으로 인한 미출고 시 별도 안내 드립니다.</b>										
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>주의사항</th>
                                        <td><b>* 주문 내역의 교환/취소/주소지 변경을 원하실 경우 고객센터로 연락 바랍니다.</b><br/>
                                            <b>* 주문 취소를 희망하는 경우 MY PAGE -> 주문 상세정보에서 직접 가능합니다.</b><br/>
                                            (상품 준비 중인 상태에서만 가능하며, 배송 준비 중/배송 중 상태에서는 추가 배송비가 부가될 수 있습니다.)</td>
                                    </tr>
                                    <tr>
                                        <th>고객센터</th>
                                        <td>1566-0554 / 카카오톡 플러스친구 @ohora <br/>
                                    운영시간 : 365일 09:00 - 18:00 (점심시간 11:50 - 13:00)
                                    </tr>
                                </table>
                                -->
                  <table class="infoTbl">
  <colgroup>
  <col width="215px">
  <col width="*">
  </colgroup>
  <tbody><tr>
  <th>배송방법</th>
                      <td>
  <b> 기본 배송 : 롯데택배(1588-2121) </b><br>
  </td>
                    </tr>
  <tr>
  <th>배송지역</th>
                      <td>
  <b> 기본 배송 : 전국</b><br>
  </td>
                    </tr>
  <tr>
  <th>배송비</th>
                      <td>
                        <b> 기본 배송 : 3,000원 (5만원 이상 구매 시 무료배송)</b><br>
                        * 제주 및 특수 도서 산간 지역은 3,000원의 별도 추가 운임비 발생<br>
  </td>
                    </tr>
  <tr>
  <th>배송기간</th>
                      <td>
                        <b>[기본 배송]</b><br><b>* 평일 오후 2시 결제 완료 시 당일 출고됩니다. (주말/공휴일 제외)</b><br><b>* 상품 출고 시 송장 번호가 알림톡 또는 SMS로 발송됩니다.</b><br><b>* 모든 배송은 지역 택배사 사정과 천재지변으로 지연될 수 있습니다.</b><br><b>* 배송 폭주, 입고지연, 품절 등으로 인한 미출고 시 별도 안내 드립니다.</b> <br>
  </td>
                    </tr>
  <tr>
  <th>주의사항</th>
                      <td>
                        <b>* 주문 내역의 교환/취소/주소지 변경을 원하실 경우 고객센터로 연락 바랍니다.</b><br><b>* 주문 취소를 희망하는 경우 MY PAGE -&gt; 주문 상세정보에서 직접 접수 가능합니다.</b><br>
                        (배송준비중 상태의 주문 건을 취소 접수할 경우, 출고 상황에 따라 취소가 거부될 수 있습니다.)<br>
  </td>
                    </tr>
  <tr>
  <th>고객센터</th>
                      <td>
                        카카오톡 상담 (@ohora), 게시판 상담 (1:1 문의하기) <br>
                        운영시간 : 평일 09:00 - 18:00 (Lunch 12:30 - 13:30) <br>
  </td>
                    </tr>
  </tbody></table>
  <br>
  <br>

  <h3 class="infoTit">교환/반품 안내</h3>
                  <table class="infoTbl">
  <colgroup>
  <col width="215px">
  <col width="*">
  </colgroup>
  <tbody><tr>
  <th>교환/반품 신청기준</th>
                      <td>
                        <b>&lt;교환/반품 신청이 가능한 경우&gt;</b><br>
                        * 단순 변심으로 인한 교환 및 반품은 <b>제품 수령 후 주말 및 공휴일 포함 7일 이내</b>에 가능합니다. (배송비 고객부담)<br>
                        * 상품 불량으로 인한 교환 및 반품은 상품 공급일로부터 3개월 이내에 가능합니다. (기간엄수)<br>
                        (단, 상품 불량의 경우, 고객센터를 통한 불량 검수 후 정상 처리 여부가 결정됩니다.)<br>
                        * 옵션 오선택으로 인한 반품 및 교환 시에는 추가 배송비가 발생할 수 있습니다.<br>
                        * 상품 불량으로 인한 반품 및 교환을 원하시는 경우, 카톡 플러스친구 상담으로 접수 부탁드립니다.<br>
                        (불량 여부 확인 및 제품 품질 개선을 위하여 내용물 사진 등 제품에 대한 상세한 정보를 준비 부탁드립니다.)<br><br><b>&lt;교환/반품이 불가능한 경우&gt;</b><br>
                        * 소비자의 귀책 사유에 의한 상품 훼손(개봉) 및 사용에 의해 상품 가치가 현저히 감소한 경우 교환 및 반품이 불가합니다.<br>
                        * 교환 및 반품으로 인해 사은품 혜택 기준에 미달되었을 경우, 사은품도 함께 보내주셔야 정상적으로 처리 가능합니다.<br>
  </td>
                    </tr>
  <tr>
  <th>교환/반품 배송비</th>
                      <td>제품 하자가 아닌 단순 변심에 의한 경우 배송비를 제외한 나머지 금액만 환불 처리됩니다.</td>
                    </tr>
  <tr>
  <th>교환/반품 접수방법</th>
                      <td>
                        * 교환 및 반품 접수 문의는 고객센터로 연락 부탁드립니다.<br>
                        * 제품 수거는 교환 및 반품 신청 접수 후 오호라에서 순차 처리합니다.
                      </td>
                    </tr>
  <tr>
  <th>주의사항</th>
                      <td>* 교환 및 반품 신청 시 신청 가능 기간을 엄수해주세요.</td>
                    </tr>
  <tr>
  <th>고객센터</th>
                      <td>
                        카카오톡 상담 (@ohora), 게시판 상담 (1:1 문의하기) <br>
                        운영시간 : 평일 09:00 - 18:00 (Lunch 12:30 - 13:30) <br>
  </td>
                    </tr>
  </tbody></table>
  </div>
              </div>
            </div>
          </div>
  <!------------------------------ //prdQnA --------------------------------->


        <!------------------------------ //product_additional -------------------------------->
    
      <!------------------------------ //레이아웃 -------------------------------->
    </div>
    <!------------------------------ //SP_detailRelationPrd_wrap -------------------------------->
  </div>
  
   <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

  <script>
    // 모든 탭 링크에 부드러운 스크롤 적용하기
    document.querySelectorAll('.SP_detailPrdTab_wrap a').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href').substring(1); // 링크된 id 추출
            const targetElement = document.getElementById(targetId);

            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });
</script>

<!-- 가로스크롤 -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  </script>
</body>
   
</html>
