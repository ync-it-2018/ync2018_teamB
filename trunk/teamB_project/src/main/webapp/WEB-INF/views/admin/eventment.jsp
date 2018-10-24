<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<%@include file="include/header.jsp" %>
<!-- 깨끗한 빈 페이지. 해당 파일을 복사하여 새로운 admin view page를 만들어가면 됨 -->
    <!-- Main content -->
    <section class="content">
      <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->

					<div class="box">
            <div class="box-header with-border">
            <table border="1">
              	<tr>
              		<td width="100px" align="center">이벤트</td>
              	</tr>
              	<tr>
              		<td width="100px" align="center">마감기간 설정</td>
              		<td width="400px" align="center">
					<table>
	              		<tr>
	              			<td width="150px" align="center"><select>
	              			<option value="2018">2018</option>
	              			<option value="2017">2017</option>
	              			<option value="2016">2016</option>
	              			<option value="2015">2015</option>
	              			<option value="2014">2014</option>
	              			<option value="2013">2013</option>
	              			<option value="2012">2012</option>
	              			<option value="2011">2011</option>
	              			<option value="2010">2010</option>
	              			
	              			</select>년</td>
	              			<td width="150px" align="center"><select>
	              			<option value="1">1</option>
	              			<option value="2">2</option>
	              			<option value="3">3</option>
	              			<option value="4">4</option>
	              			<option value="5">5</option>
	              			<option value="6">6</option>
	              			<option value="7">7</option>
	              			<option value="8">8</option>
	              			<option value="9">9</option>
	              			<option value="10">10</option>
	              			<option value="11">11</option>
	              			<option value="12">12</option>	              			
	              			</select>월</td>
	              			<td width="150px" align="center"><select>
	              			<option value="1">1</option>
	              			<option value="2">2</option>
	              			<option value="3">3</option>
	              			<option value="4">4</option>
	              			<option value="5">5</option>
	              			<option value="6">6</option>
	              			<option value="7">7</option>
	              			<option value="8">8</option>
	              			<option value="9">9</option>
	              			<option value="10">10</option>
	              			<option value="11">11</option>
	              			<option value="12">12</option>
	              			<option value="13">13</option>
	              			<option value="14">14</option>
	              			<option value="15">15</option>
	              			<option value="16">16</option>
	              			<option value="17">17</option>
	              			<option value="18">18</option>
	              			<option value="19">19</option>
	              			<option value="20">20</option>
	              			<option value="21">21</option>
	              			<option value="22">22</option>
	              			<option value="23">23</option>
	              			<option value="24">24</option>
	              			<option value="25">25</option>
	              			<option value="26">26</option>
	              			<option value="27">27</option>
	              			<option value="28">28</option>
	              			<option value="29">29</option>
	              			<option value="30">30</option>
	              			<option value="31">31</option>	              			
	              			</select>일</td>
	               		</tr>
	              		</table>
					</td>
              	</tr>
              	<tr height="100px">
              		<td width="100px" align="center">제목</td>
              		<td width="400px" align="center">
	              		
					</td>
              	</tr>
              	<tr height="40px">
              		<td colspan="2" align="right">
              		<button><a href="/searchstatResult">조회</a></button>&nbsp;&nbsp;&nbsp;
              		<button>취소</button>	&nbsp;&nbsp;&nbsp;
              		</td>
              	</tr>
              </table>
            </div>
          </div>
      </div><!--/.col (left) -->
      </div>   <!-- /.row -->
    </section><!-- /.content -->

    
<%@include file="include/footer.jsp" %>
 
 