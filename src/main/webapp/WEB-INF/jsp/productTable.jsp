<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="pageTitle" value="Product Table View" />
<%@ include file="common/header.jspf"%>

<h2>Toy Department</h2>
<table style="width: 100%">

	<tr>
		<th></th>
		<c:forEach items="${productList}" var="product">
			<td><c:url var="productDetailsUrl" value="/productDetail">
					<c:param name="productId" value="${product.productId }" />
				</c:url> 
				<c:url value="/img/${product.imageName}" var="picture" /><a
				href="${productDetailsUrl }"><img class="image_style"
					src="${picture}" width=75px height=50px></a> 
					<div class = bSeller><font color = "red"> <strong>
					<c:choose>
					<c:when test="${product.topSeller}">
						<c:set var="bestSeller" value="BEST SELLER!"/>
					</c:when>  
					<c:otherwise>
						<c:set var="bestSeller" value=""></c:set>
					</c:otherwise>
				</c:choose> <c:out value="${bestSeller}"></c:out>
				</strong></font></div>
		</c:forEach>
		

	</tr>


	<tr class="grayRow">
		<th>Name</th>
		<c:forEach items="${productList}" var="product">
			<td><c:out value="${product.name}" /></td>
		</c:forEach>
	</tr>
	<tr>
		<th>Rating</th>
		<c:forEach items="${productList}" var="product">

			<fmt:formatNumber value="${product.averageRating}"
				maxFractionDigits="0" var="star" />

			<c:url var="star" value="/img/${star}-star.png" />
			<td><img src="${star}" width=100% height=automatic /></td>
		</c:forEach>
	</tr>
	<tr class="grayRow">
		<th>Mfr</th>
		<c:forEach items="${productList}" var="product">
			<td><c:out value="${product.manufacturer}" /></td>
		</c:forEach>
	</tr>

	<tr>
		<th>Price</th>
		<c:forEach items="${productList}" var="product">
			<td><font color = "crimson"><c:out value="$${product.price}" /></font></td>
		</c:forEach>
	</tr>
	<tr class="grayRow">
		<th>wt. (in lbs)</th>
		<c:forEach items="${productList}" var="product">
			<td><c:out value="${product.weightInLbs}" /></td>
		</c:forEach>
	</tr>




</table>



















<%@ include file="common/footer.jspf"%>

