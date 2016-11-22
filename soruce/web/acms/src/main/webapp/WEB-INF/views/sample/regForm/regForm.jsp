<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- BEGIN CONTENT BODY -->
<div class="page-content tab-pane" id="sample_regForm">    
	<div class="row">
		<div class="col-lg-3 col-xs-12 col-md-12">
	        <div class="portlet light bordered">
	           <div class="portlet-title">
	               <div class="caption">
	                   <span class="caption-subject bold uppercase">학생조회</span>
	               </div>
	               <div class="actions">
	                   <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
	               </div>
	           </div>	                            
	            <div class="portlet-body">
					<table class="table table-striped table-bordered table-hover table-valign-middle">
						<colgroup>
							<col width="30%">
							<col width="35%">
							<col width="35%">
						</colgroup>
						<thead>
						</thead>
						<tbody>
							<tr>
								<th>교육과정</th>
								<td colspan="2">
                                    <div class="input-group-sm">
                                        <select id="eduSelect" class="form-control select2">
                                            <option></option>
                                            <optgroup label="교육과정1">
                                                <option value="AK">수학</option>
                                                <option value="HI">영어</option>
                                            </optgroup>
                                            <optgroup label="교육과정2">
                                                <option value="CA">아랍어</option>
                                                <option value="NV">일본어</option>
                                                <option value="OR">프랑스어</option>
                                            </optgroup>
                                            <optgroup label="교육과정3">
                                                <option value="AZ">java</option>
                                                <option value="CO">python</option>
                                                <option value="ID">c++</option>
                                            </optgroup>
                                        </select>
                                    </div>	
								</td>
							</tr>
							<tr>
								<th>수강반</th>
								<td colspan="2">
                                    <div class="input-group-sm">
                                        <select id="classSelect" class="form-control select2">
                                            <option></option>
                                            <optgroup label="중등부">
                                                <option value="AK">중1</option>
                                                <option value="HI">중2</option>
                                                <option value="HI">중3</option>
                                            </optgroup>
                                            <optgroup label="고등부">
                                                <option value="CA">고1</option>
                                                <option value="NV">고2</option>
                                                <option value="OR">고3</option>
                                            </optgroup>
                                            <optgroup label="영재반">
                                                <option value="AZ">영재1</option>
                                                <option value="CO">영재2</option>
                                                <option value="ID">영재3</option>
                                            </optgroup>
                                        </select>
                                    </div>								
								</td>
							</tr>
							<tr>
								<th>학생명</th>
								<td colspan="2">
                                    <div class="input-group-sm">
                                        <select id="stuSelect" class="form-control select2">
                                            <option></option>
                                            <optgroup label="중1반">
                                                <option value="AK">중1길동이</option>
                                                <option value="HI">중1동길이</option>
                                            </optgroup>
                                            <optgroup label="중2반">
                                                <option value="CA">중2김아무개</option>
                                                <option value="NV">중2이아무개</option>
                                                <option value="OR">중2박아무개</option>
                                            </optgroup>
                                            <optgroup label="중3반">
                                                <option value="AZ">중3호호호</option>
                                                <option value="CO">중3하하하</option>
                                                <option value="ID">중3김김김</option>
                                            </optgroup>
                                        </select>
                                    </div>								
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div> <!-- end col-lg-3 -->
		<div class="col-lg-9 col-xs-12 col-md-12">
	        <div class="portlet light bordered">
	           <div class="portlet-title">
	               <div class="caption">
	                   <span class="caption-subject bold uppercase">학생정보</span>
	               </div>
	               <div class="actions">
	                   <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
	               </div>
	           </div>	                            
	            <div class="portlet-body">
					<table class="table table-striped table-bordered table-hover table-valign-middle">
						<colgroup>
							<col width="12.6%">
							<col width="20.6%">
							<col width="12.6%">
							<col width="20.6%">
							<col width="12.6%">
							<col width="*">
						</colgroup>
						<thead>
						</thead>
						<tbody>
							<tr>
								<th>학생번호</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>성명</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<td colspan="2" rowspan="5">
									<div class="profileImgDiv" style="text-align: center; margin: 0 auto;">
									 	<div class="mt-element-overlay">
	                                      <div class="mt-overlay-1">
	                                         <img src="../assets/pages/img/page_general_search/01.jpg" />
	                                         <div class="mt-overlay">
	                                             <ul class="mt-info">
	                                                 <li>
	                                                     <a class="btn default btn-outline" data-toggle="modal" href="#regFormPfofile">
	                                                         <i class="icon-magnifier"></i>
	                                                     </a>
	                                                 </li>
	                                             </ul>
	                                         </div>
	                                     	</div>
	                                     </div>
									</div>
								</td>		
							</tr>				
							<tr>
								<th>성별</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>생년월일</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>				
							<tr>
								<th>집전화</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>핸드폰번호</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>				
							<tr>
								<th>이메일</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th></th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>				
							<tr>
								<th>학교</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>학년</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>				
							<tr>
								<th>주소</th>
								<td colspan="5">
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>
							<tr>
								<th>지역(시도)</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>지역(시군구)</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>소개수강생</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>				
							<tr>
								<th>사용자 UD</th>
								<td colspan="3">
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>앱설치여부</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>			
							<tr>
								<th>동의여부</th>
								<td colspan="5">
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>			
							<tr>
								<th></th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>가입일자</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>수강생상태</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>													
							<tr>
								<th>출결카드번호</th>
								<td>
                                    <div class="input-group-sm">
                                    </div>
								</td>		
								<th>문자전송</th>
								<td colspan="3">
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>													
							<tr>
								<th>비고</th>
								<td colspan="5">
                                    <div class="input-group-sm">
                                    </div>
								</td>		
							</tr>													
						</tbody>
					</table>
				</div>
			</div> <!-- end portlet -->
		</div> <!-- end col-lg-9 -->
	</div> <!--  end first row -->
</div> <!-- end page-content -->
<!-- start Profile modal -->
<div class="modal fade" id="regFormPfofile" tabindex="-1" role="basic" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">사진 설정</h4>
            </div>
            <div class="modal-body">
                <img src="../assets/global/plugins/jcrop/demos/demo_files/image3.jpg" id="demo1" alt="Jcrop Example" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline sbold red" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-outline sbold blue" onclick="saveProfile()">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>    
<!--  end Profile modal -->
<script src="../js/sample/regForm/regForm.js?ver=0.1.0.9" type="text/javascript"></script>