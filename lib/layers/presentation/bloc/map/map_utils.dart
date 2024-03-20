import 'package:pookaboo/layers/data/models/toilet/toilet.dart';
import 'package:pookaboo/shared/constant/enum.dart';

String getMarkerInnerText(int type, Rating rating) {
  String image = type == ToiletType.building.index ? '🏢' : '☕️';
  double avgRating = Rating.getAverageRating(rating);

  String innerText =
      '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>';
  // '<div class="chip" style="outline: none; display:inline-flex;align-items:center;padding:2px 8px;gap:4px;border-radius:20px;border:1px solid #191A1F;background-color:#202328;box-shadow:none;box-sizing:border-box;font-family:Pretendard Variable;line-height:26px;color:#F2F3F5;">'
  // '<span class="chip-icon" style="font-size:14px;">$image</span>'
  // '<span class="chip-rating" style="opacity:0.9;font-size:16px;font-weight:bold;font-family:Roboto;">$avgRating</span>'
  // '</div>';

  return innerText;
}



  // if (currentMarker != null) {
  //       currentMarker.style.border = '1px solid #191A1F';
  //       currentMarker.style.backgroundColor = '#202328';        
  //       currentMarker.style.color = '#F2F3F5';
  //     }

  //     markerEl.style.border = '6px solid rgba(235, 230, 93, 0.5)';
  //     markerEl.style.backgroundColor = '#FFFA66';
  //     markerEl.style.color = '#191A1F';
