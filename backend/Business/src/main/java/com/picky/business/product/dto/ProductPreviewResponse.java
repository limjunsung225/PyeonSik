package com.picky.business.product.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
//제품 미리보기 -> 검색해서 제품 리스트들 보여줄 때, 나타날 정보들
public class ProductPreviewResponse {
    private Long productId;
    private String productName;
    private int price;
    private String filename;
    private String badge;
    private Boolean isFavorite;

    public static ProductPreviewResponse of(Long productId, String productName , int price, String filename, String badge) {
        return ProductPreviewResponse.builder()
                .productId(productId)
                .productName (productName )
                .price(price)
                .filename(filename)
                .badge(badge)
                .build();
    }
}
