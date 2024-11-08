package ohora.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewPaging {
	
	public int currentPage = 1;
	public int start ;
	public int end ;	
	public boolean prev;
    public boolean next;
    
    public int numberPerPage = 2;

}
