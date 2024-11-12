package ohora.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FaqDTO {
	private int seq;
	private String writer;
	private String title;
	private Date writedate;
	private int readed;
	private int tag;
	private String category;
	private String content;
	private String ect;
}
