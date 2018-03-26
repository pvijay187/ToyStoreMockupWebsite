<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="detail_box">
	<div class="detail_container">
		<div class="detail_row">
			<div class = "new", style = "display: inline-block";>
			<c:url value="/img/${product.imageName}" var="picture" />
			<img class="image_detail" src="${picture}">
			</div>
			<ul style="list-style: none; display: inline-block;">
				<li><h2> <font-weight: "bold">
						<c:out value="${product.name}" /></font-weight:>
						<font color="red"> <c:out
								value="${product.topSeller ? 'Best Seller!': ''}" /></font> 
			
				<li class="bar"></li>
						<font size = "3px"> 
						<c:out value="by ${product.manufacturer }" /> </font>
		


				<li class="bar"></li>
		
						<fmt:formatNumber value="${product.averageRating}"
							maxFractionDigits="0" var="star" />
						<c:url value="/img/${star}-star.png" var="averageRating" />
						<img class="image_rating" src="${averageRating}" height=20px;
							width=100px;>
						</h2></li>




				<li class="bar"></li>
				<li><h4>
						<font size = 5px, color="crimson">Price: <c:out
								value="${product.price }" />
						</font>
		
				<li class="bar"></li>
				<li> Weight:
						<span style="font-weight:normal;"><c:out value="${product.weightInLbs } lbs" /></span>
					</h4></li>
			
			<li><h5>
					<font size = 3px><c:out value = "Description:" /> </font>
					<span style="font-weight:normal;">	<font size = 3px><c:out value=" ${product.description}" /></font></span></h5></li>
			
			
			</ul>



		</div>
	</div>
</div>

<%@ include file="common/footer.jspf"%>
