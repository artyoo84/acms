<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content tab-pane" id="sample_datatable">    
                    <div class="row">
                        <div class="col-lg-6 col-xs-12 col-md-12">
	                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
	                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <span class="caption-subject bold uppercase">게시판 샘플</span>
                                    </div>
                                    <div class="actions">
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
                                    </div>
                                </div>	                            
	                                <div class="portlet-body">
	                                    <table class="table table-striped table-bordered table-hover" id="sample_1">
	                                        <thead>
	                                            <tr class="thAlignCenter">
	                                            	<th>
	                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
	                                                        <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" />
	                                                        <span></span>
	                                                    </label>
	                                                </th>
	                                                <th>Name</th>
	                                                <th>Position</th>
	                                                <th>Office</th>
	                                                <th>Age</th>
	                                                <th>Start date</th>
	                                                <th>Salary</th>
	                                            </tr>
	                                        </thead>
									        <tfoot>
									            <tr>
									                <th colspan="6" style="text-align:right">Total:</th>
									                <th></th>
									            </tr>
									        </tfoot>                                        
	                                    </table>
	                                </div>
							</div>
                        </div> <!-- end board  -->
	                    <div class="col-lg-6 col-xs-12  col-md-12">
                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
                            <div class="portlet light bordered">
                               <div class="portlet-title">
                                   <div class="caption">
                                       <span class="caption-subject bold uppercase">confirm 샘플</span>
                                   </div>
                                   <div class="actions">
                                       <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
                                   </div>
                               </div>	                            
                                <div class="portlet-body">
                                    <h3>Basic Usage</h3>
                                    <p> Add small overlays with "Yes" and "No" buttons, like those on the iPad, to any element. Click the button to trigger the confirmation. </p>
                                    <button class="btn green-sharp btn-large" data-toggle="confirmation" data-original-title="Are you sure ?"
                                        title="">Default configuration</button>
                                    <h3>Custom Buttons</h3>
                                    <button class="btn red-mint" data-toggle="confirmation" data-placement="right" data-btn-ok-label="Continue" data-btn-ok-icon="icon-like" data-btn-ok-class="btn-success" data-btn-cancel-label="Stoooop!"
                                        data-btn-cancel-icon="icon-close" data-btn-cancel-class="btn-danger">Action confirmation!</button>
                                    <h3>Directions</h3>
                                    <button class="btn btn-outline green-sharp  uppercase" data-toggle="confirmation" data-placement="left">Confirmation on left</button>
                                    <button class="btn btn-outline red-mint  uppercase" data-toggle="confirmation" data-placement="top">Confirmation on top</button>
                                    <button class="btn btn-outline yellow-mint  uppercase" data-toggle="confirmation" data-placement="bottom">Confirmation on bottom</button>
                                    <button class="btn btn-outline purple-sharp  uppercase" data-toggle="confirmation" data-placement="right">Confirmation on right</button>
                                    <h3>Singleton</h3>
                                    <p> Only one boxe visible at once. </p>
                                    <button class="btn btn-outline green-sharp  uppercase" data-toggle="confirmation" data-singleton="true">Confirmation 1</button>
                                    <button class="btn btn-outline red-mint  uppercase" data-toggle="confirmation" data-singleton="true">Confirmation 2</button>
                                    <h3>Popout</h3>
                                    <p> Click anywhere on the page to close all boxes. </p>
                                    <button class="btn green-sharp btn-circle" data-toggle="confirmation" data-popout="true">Confirmation 1</button>
                                    <button class="btn red-mint btn-circle" data-toggle="confirmation" data-popout="true">Confirmation 2</button>
                                    <h3>Event Handling</h3>
                                    <p> All events from Bootstrap Popover are available but suffixed with bs.confirmation. </p>
                                    <button class="btn yellow-mint uppercase btn-circle" data-toggle="confirmation" id="bs_confirmation_demo_1">Confirmation 1</button>
                                    <button class="btn grey-mint uppercase btn-circle" data-toggle="confirmation" id="bs_confirmation_demo_2">Confirmation 2</button>
                                </div>                
                            </div>
						</div> <!--  end confirm 샘플 -->
	                    <div class="col-lg-6 col-xs-12  col-md-12">
                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
                            <div class="portlet light bordered">
                               <div class="portlet-title">
                                   <div class="caption">
                                       <span class="caption-subject bold uppercase">modal 샘플</span>
                                   </div>
                                   <div class="actions">
                                       <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
                                   </div>
                               </div>	                            
                                <div class="portlet-body">
                                    <p>
                                        <a class="btn red" data-toggle="modal" href="#basic"> Block Modal Content </a>
                                    </p>
                                    <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                                    <h4 class="modal-title">Modal Title</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>
                                                        <a href="javascript:;" class="btn btn-outline sbold blue" id="blockui_sample_3_1_0"> Block Whole Modal </a>
                                                    </p>
                                                    <p>
                                                        <a href="javascript:;" class="btn btn-outline sbold green" id="blockui_sample_3_1"> Block Below Element </a>
                                                        <a href="javascript:;" class="btn btn-outline sbold default" id="blockui_sample_3_1_1"> Unblock Below Element </a>
                                                    </p>
                                                    <div id="blockui_sample_3_1_element">
                                                        <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                                            similique. </p>
                                                        <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                                            similique. </p>
                                                        <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                                            similique. </p>
                                                        <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident,
                                                            similique. </p>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-outline sbold red" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-outline sbold blue">Save changes</button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>                                
                                </div>                
                            </div>
						</div> <!-- end modal 샘플 -->
                    </div> <!-- end row -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portlet light bordered" id="blockui_sample_1_portlet_body">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-bubble font-green-sharp"></i>
                                        <span class="caption-subject font-green-sharp sbold">Portlet Blocking</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique. </p>
                                    <p> Aet accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores
                                        et. </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold blue-madison" id="blockui_sample_1_1"> Block Portlet With Default Message </a>
                                    </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold red-intense" id="blockui_sample_1_2"> Block Portlet With Boxed Message </a>
                                    </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold green-haze" id="blockui_sample_1_3"> Block Portlet With CSS3 Animation</a>
                                    </p>
                                </div>
                            </div>
                        </div> <!-- end portlet Blocking -->
                        <div class="col-md-6">
                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-bubble font-red-mint"></i>
                                        <span class="caption-subject font-red-mint sbold">Page Blocking</span>
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold green" id="blockui_sample_2_1"> Block Page With Default Message </a>
                                    </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold yellow" id="blockui_sample_2_2"> Block Page With Boxed Message </a>
                                    </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold red" id="blockui_sample_2_3"> Block Page Without Background Overlay </a>
                                    </p>
                                    <p>
                                        <a href="javascript:;" class="btn btn-outline sbold purple" id="blockui_sample_2_4"> Block Page with CSS3 Animation </a>
                                    </p>
                                    <p> At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique. </p>
                                </div>
                            </div>
                        </div> <!--  end page Blocking -->
                        <div class="col-lg-12 col-xs-12 col-md-12">
	                            <!-- BEGIN EXAMPLE TABLE PORTLET-->
	                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <span class="caption-subject bold uppercase">게시판 샘플2</span>
                                    </div>
                                    <div class="actions">
                                        <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
                                    </div>
                                </div>	                            
                                <div class="portlet-body">
                                <!-- 신규 버튼 영역 -->
                                 <div class="modal fade" id="newPop" tabindex="-1" role="basic" aria-hidden="true">
                                     <div class="modal-dialog">
                                         <div class="modal-content">
                                             <div class="modal-header">
	                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
	                                            <h4 class="modal-title">교재등록</h4>
                                             </div>
                                             <div class="modal-body">
                                                <!-- BEGIN FORM-->
                                                <form action="#" class="horizontal-form">
                                                    <div class="form-body">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">교재명</label>
                                                                    <input type="text" id="firstName" class="form-control" >
                                                                    <span class="help-block"> 교재명을 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">저자명</label>
                                                                    <input type="text" id="lastName" class="form-control" placeholder="Lim">
                                                                    <span class="help-block"> 저자명을 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                        </div>
                                                        <!--/row-->
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">출판사명</label>
																	<input type="text" id="lastName" class="form-control" placeholder="둘리출판사">
                                                                    <span class="help-block"> 출판사명을 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">ISBN코드</label>
                                                                    <input type="text" class="form-control" > </div>
                                                            </div>
                                                            <!--/span-->
                                                        </div>
                                                        <!--/row-->
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="control-label">교재분류</label>
                                                                    <div class="form-inline">
	                                                                    <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
	                                                                        <option value="Category 1">Category 1</option>
	                                                                        <option value="Category 2">Category 2</option>
	                                                                        <option value="Category 3">Category 5</option>
	                                                                        <option value="Category 4">Category 4</option>
	                                                                    </select>
	                                                                    <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
	                                                                        <option value="Category 1">Category 1</option>
	                                                                        <option value="Category 2">Category 2</option>
	                                                                        <option value="Category 3">Category 5</option>
	                                                                        <option value="Category 4">Category 4</option>
	                                                                    </select>
	                                                                    <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
	                                                                        <option value="Category 1">Category 1</option>
	                                                                        <option value="Category 2">Category 2</option>
	                                                                        <option value="Category 3">Category 5</option>
	                                                                        <option value="Category 4">Category 4</option>
	                                                                    </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">교재정가</label>
                                                                    <input type="text" id="firstName" class="form-control" >
                                                                    <span class="help-block"> 교재정가를 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">기타</label>
                                                                    <input type="text" id="lastName" class="form-control" >
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                        </div>                                                        
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">매입금액</label>
                                                                    <input type="text" id="firstName" class="form-control" >
                                                                    <span class="help-block"> 매입금액을 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">판매금액</label>
                                                                    <input type="text" id="lastName" class="form-control" >
                                                                    <span class="help-block"> 판매금액을 입력해주세요. </span>
                                                                </div>
                                                            </div>
                                                            <!--/span-->
                                                        </div>              
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="control-label">삭제여부</label>
                                                                    <select class="form-control" data-placeholder="Choose a Category" tabindex="1">
                                                                        <option value="Category 1">Category 1</option>
                                                                        <option value="Category 2">Category 2</option>
                                                                        <option value="Category 3">Category 5</option>
                                                                        <option value="Category 4">Category 4</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <label class="control-label">비고</label>
                                                                    <input type="text" id="lastName" class="form-control" >
                                                                </div>
                                                            </div>
                                                        </div>                                                                                                  
                                                    </div>
                                                </form>
                                                <!-- END FORM-->                                             	
                                             </div>
                                             <div class="modal-footer">
                                                 <button type="button" class="btn btn-outline sbold red" data-dismiss="modal">닫기</button>
                                                 <button type="button" class="btn btn-outline sbold blue">저장</button>
                                             </div>
                                         </div>
                                         <!-- /.modal-content -->
                                     </div>
                                     <!-- /.modal-dialog -->
                                 </div>                                    
                                <!-- end 신규 버튼 영역 -->
								<div class="row">
				                      	<div class="col-lg-6 col-md-6 col-sm-12 search-form">
					                        <div class="form-group">
					                            <label class="control-label col-lg-3 col-md-3 col-sm-4 ">교재분류
					                            </label>
					                            <div class="col-lg-8 col-md-7 col-sm-6 ">
					                            	<div class="form-inline">
					                              	<input type="text" class="form-control " name="bzno1" maxlength="3" />
					                            	</div>
					                            </div>
					                        </div> <!-- end div form-group -->                  	
				                      	</div> <!--  end col -->
				                      	<div class="col-lg-6 col-md-6 col-sm-12 search-form">
					                        <div class="form-group">
					                            <label class="control-label col-lg-3 col-md-3 col-sm-4">출판사
					                            </label>
					                            <div class="col-lg-8 col-md-7 col-sm-6 ">
					                            	<div class="form-inline">
					                              	<input type="text" class="form-control " name="bzno1" maxlength="3" />
					                            	</div>
					                            </div>
					                        </div> <!-- end div form-group -->              	
				                      	</div> <!--  end col -->
				                      	<div class="col-lg-6 col-md-6 col-sm-12 search-form">
					                        <div class="form-group">
					                            <label class="control-label col-lg-3 col-md-3 col-sm-4 ">교재명
					                            </label>
					                            <div class="col-lg-8 col-md-7 col-sm-6">
					                            	<div class="form-inline">
					                              	<input type="text" class="form-control" name="bzno1" maxlength="3" />
					                            	</div>
					                            </div> <!-- end div form-group -->    	
					                     	</div> <!--  end form -->
				                      	</div> <!--  end col -->
                                    </div> <!--  end row -->	                                
									<div class="row">
				                      	<div class="col-lg-12 col-md-12 col-sm-12">
		                                    <table class="table table-striped table-bordered table-hover" id="board_sample_2">
		                                        <thead>
		                                            <tr class="thAlignCenter">
		                                            	<th>
		                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
		                                                        <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes" />
		                                                        <span></span>
		                                                    </label>
		                                                </th>
		                                                <th>No</th>
		                                                <th>대분류</th>
		                                                <th>중분류</th>
		                                                <th>소분류</th>
		                                                <th>출판사</th>
		                                                <th>교재명</th>
		                                                <th>저자명</th>
		                                                <th>판매금액</th>
		                                                <th>비고</th>
		                                                <th>삭제여부</th>
		                                            </tr>
		                                        </thead>
										        <tfoot>
										            <tr>
										                <th colspan="8" style="text-align:right">Total:</th>
										                <th></th>
										                <th></th>
										                <th></th>
										            </tr>
										        </tfoot>                                        
		                                    </table> <!--  end table -->
				                      	</div> <!-- end table div -->
                                    	</div> <!--  end row -->	                                
                                </div>
								</div>
						</div>
                        </div> <!-- end board sample 2 -->                        
                    </div> <!-- end row -->                    
                   
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../assets/pages/scripts/table-datatables-buttons.js?ver=0.2.2.4" type="text/javascript"></script>
<script src="../assets/pages/scripts/ui-confirmations.js?ver=0.1.1.3" type="text/javascript"></script>
<script src="../assets/pages/scripts/ui-blockui.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
