package ohora.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewRating {
	private double avg_rating;
	
	private int count_5;
	private int count_4;
	private int count_3;
	private int count_2;
	private int count_1;
}
