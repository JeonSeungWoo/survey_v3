<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="itemEditModePh">
		<div class="itemEditMenuPh">
			<div class="itemEditMenu holder">
				<div menu="editItem" class="itemEditBtnSelect column" title="편집"
					data-ncode="edt.edtbutton">&nbsp;</div>
				<div menu="duplicateItem" class="itemDuplicateBtn column" title="복제"
					data-ncode="edt.copybutton">&nbsp;</div>
				<div menu="deleteItem" class="itemDeleteBtn column" title="삭제"
					data-ncode="edt.deletebutton">&nbsp;</div>
				<div class="requiredPh column" style="display: block;">
					<div id="required" name="required"
						class="required ui_checkbox disable ui_component ui_active"
						value="1" setvaluemsg="SET_VALUE_CHECKBOX" checked="false"
						data-ncode="edt.require">
						<a class="tab_order check_holder" name="tab_order"
							unselectable="on"></a>
						<div class="checkbox" unselectable="on"></div>
						<div class="checkbox_label" unselectable="on">필수항목</div>
					</div>
				</div>
			</div>
			<div class="itemUpDownEditPh holder">
				<div menu="moveItemUp" class="itemUpBtn" data-ncode="edt.up">&nbsp;</div>
				<div menu="moveItemDown" class="itemDownBtn" data-ncode="edt.down">&nbsp;</div>
			</div>
		</div>
		<div class="itemTitlePh holder">
			<div class="column label">항목 제목</div>
			<div class="column">
				<input type="text" id="title" title="title" name="title" value=""
					class="itemTitle ui_inputbox ui_component placeholder"
					maxlength="500" setvaluemsg="SET_VALUE_INPUTBOX"
					data-placehoder-key="22BE373E-D847-48CA-BD4B-7096873E8350">
				<label for="title" style="display: none;">title</label>
			</div>
		</div>

		<div class="itemDescriptionPh holder">
			<div class="column label">항목 설명</div>
			<div class="column">
				<input type="text" id="description" title="description"
					name="description" value=""
					class="itemDescription ui_inputbox ui_component placeholder"
					maxlength="500" setvaluemsg="SET_VALUE_INPUTBOX"
					data-placehoder-key="2457AE12-1FF5-4AD7-929E-B60E2302912C">
				<label for="description" style="display: none;">description</label>
			</div>
			<div class="column">
				<div menu="imageOptionButton" name="imageOptionButton"
					data-option-id="-1" data-ncode="edt.iimgadd"
					class="ui_component cmd_toggle ui_button column imageOptionButton">&nbsp;</div>

			</div>
		</div>

		<div class="holder itemImagePh hide">
			<img class="imageResource" src="">
			<div id="image_option_delete_image" menu="imageDeleteOption"
				data-option-id="-1" data-ncode="edt.iimgdel" name="image_option"
				class="image_option imageDeleteOption ui_button"></div>
			<div id="image_option_text_place" menu="imageTextPlaceOption"
				data-option-id="-1" name="image_option"
				class="image_option ui_button imageTextPlaceOption"
				style="display: none">옵션 설명 위치</div>
			<input type="hidden" id="mainImage" name="mainImage" value=""
				class="ui_inputbox ui_component imageValue"
				setvaluemsg="SET_VALUE_INPUTBOX"> <input type="hidden" id=""
				name="" value="" class="ui_inputbox ui_component textPlaceValue"
				setvaluemsg="SET_VALUE_INPUTBOX">
		</div>


		<div class="itemTypePh holder" style="display: block;">
			<div class="itemType column">
				<div class="column label">유형</div>
				<div class="column">

					<div id="itemTypeSelectBox" name="itemTypeSelectBox"
						class="itemTypeSelectBox ui_selectbox ui_component ui_active"
						setvaluemsg="SET_VALUE_SELECTBOX" data-ncode="edt.select"
						prevvalue="singleChoice" value="singleChoice"
						style="width: 126px;">
						<div class="selectbox_value_area">
							<a class="tab_order" name="tab_order" unselectable="on"></a>
							<div class="selectbox_value" value="singleChoice">
								<span>단일 선택형</span>
							</div>
							<div class="selectbox_btn_area" unselectable="on">
								<div class="selectbox_btn" unselectable="on"></div>
							</div>
						</div>
						<div class="selectbox_layer">
							<div class="selectbox_option" style="" value="text"
								unselectable="on" data-ncode="edt.atype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">주관식 단답형</span></a>
							</div>
							<div class="selectbox_option" style="" value="paragraph"
								unselectable="on" data-ncode="edt.btype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">주관식 서술형</span></a>
							</div>
							<div class="selectbox_option select" style=""
								value="singleChoice" unselectable="on" data-ncode="edt.ctype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">단일 선택형</span></a>
							</div>
							<div class="selectbox_option" style="" value="multipleChoice"
								unselectable="on" data-ncode="edt.dtype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">복수 선택형</span></a>
							</div>
							<div class="selectbox_option" style="" value="selectBox"
								unselectable="on" data-ncode="edt.etype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">목록 선택형</span></a>
							</div>
							<div class="selectbox_option" style="" value="scale"
								unselectable="on" data-ncode="edt.ftype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">선호도형</span></a>
							</div>
							<div class="selectbox_option" style="" value="grid"
								unselectable="on" data-ncode="edt.gtype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">표형</span></a>
							</div>
							<div class="selectbox_option_bar" unselectable="on">&nbsp;</div>
							<div class="selectbox_option" style="" value="datetime"
								unselectable="on" data-ncode="edt.htype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">날짜/시간</span></a>
							</div>
							<div class="selectbox_option" style="" value="phone"
								unselectable="on" data-ncode="edt.itype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">연락처</span></a>
							</div>
							<div class="selectbox_option" style="" value="address"
								unselectable="on" data-ncode="edt.jtype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">주소</span></a>
							</div>
							<div class="selectbox_option" style="" value="number"
								unselectable="on" data-ncode="edt.ktype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">금액/숫자</span></a>
							</div>
							<div class="selectbox_option" style="" value="image"
								unselectable="on" data-ncode="edt.ltype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">이미지</span></a>
							</div>
							<div class="selectbox_option" style="" value="file"
								unselectable="on" data-ncode="edt.mtype">
								<a class="tab_order" name="tab_order" unselectable="on"><span
									unselectable="on">파일</span></a>
							</div>
						</div>
					</div>

				</div>
				<div class="column fieldSizePh">
					<div class="column fieldSizeLabel">사이즈</div>
					<div class="column fieldSizeSelect">
						<div class="holder">
							<div id="" name="fieldSize" style="width: 20px;"
								class="fieldSize column ui_active ui_radio ui_component"
								value="small" setvaluemsg="SET_VALUE_RADIO">
								<div class="radio" unselectable="on"></div>
								<span class="span_label radio_label" unselectable="on">작게</span>
							</div>
							<div id="" name="fieldSize" style="width: 20px;"
								class="fieldSize column ui_active ui_radio ui_component check"
								value="medium" setvaluemsg="SET_VALUE_RADIO" checked="true">
								<div class="radio" unselectable="on"></div>
								<span class="span_label radio_label" unselectable="on">보통</span>
							</div>
							<div id="" name="fieldSize" style="width: 20px;"
								class="fieldSize column ui_active ui_radio ui_component"
								value="large" setvaluemsg="SET_VALUE_RADIO">
								<div class="radio" unselectable="on"></div>
								<span class="span_label radio_label" unselectable="on">크게</span>
							</div>
						</div>
					</div>
				</div>
				<div class="column datetimePh">
					<div class="column useTimePh">
						<div id="useTime" name="useTime"
							class="useTime ui_checkbox ui_component" style="" value=""
							setvaluemsg="SET_VALUE_CHECKBOX" checked="false">
							<a class="tab_order check_holder" name="tab_order"
								unselectable="on"></a>
							<div class="checkbox" unselectable="on"></div>
							<div class="checkbox_label" unselectable="on">시간 포함</div>
						</div>
					</div>
					<div class="column lunarPh hide">
						<div id="useLunar" name="useLunar"
							class="useLunar ui_checkbox ui_component" style="" value=""
							setvaluemsg="SET_VALUE_CHECKBOX" checked="false">
							<a class="tab_order check_holder" name="tab_order"
								unselectable="on"></a>
							<div class="checkbox" unselectable="on"></div>
							<div class="checkbox_label" unselectable="on">음력</div>
						</div>
					</div>
				</div>
			</div>
			<div id="attachmentTypeDescription"></div>
			<div class="pageMoveOption column" style="display: block;">
				<div id="pageMoveCheckBtn" name="pageMoveCheckBtn"
					class="pageMoveCheckBtn ui_checkbox disable ui_component"
					style="width: 200px;" value="1" setvaluemsg="SET_VALUE_CHECKBOX"
					checked="false">
					<a class="tab_order check_holder" name="tab_order"
						unselectable="on"></a>
					<div class="checkbox" unselectable="on"></div>
					<div class="checkbox_label" unselectable="on">답변을 기준으로 페이지 이동</div>
				</div>
			</div>
			<div class="optionAlign column" style="display: block;">
				<div id="optionAlignCheck" name="optionAlignCheck"
					class="optionAlignCheck ui_checkbox disable ui_component"
					style="width: 200px;" value="horizontal"
					setvaluemsg="SET_VALUE_CHECKBOX" checked="false">
					<a class="tab_order check_holder" name="tab_order"
						unselectable="on"></a>
					<div class="checkbox" unselectable="on"></div>
					<div class="checkbox_label" unselectable="on">좌우 정렬</div>
				</div>
			</div>
		</div>

		<div class="requiredCheckCountPh holder">
			<div class="column">
				<div class="column label">필수 선택 수</div>
				<div class="column">
					<div class="selectBox column">
						<div id="minCheckSelectBox" name="minCheckSelectBox"
							class="minCheckSelectBox ui_selectbox ui_component ui_active"
							setvaluemsg="SET_VALUE_SELECTBOX">
							<div class="selectbox_value_area">
								<a class="tab_order" name="tab_order" unselectable="on"></a>
								<div class="selectbox_value" value="">
									<span></span>
								</div>
								<div class="selectbox_btn_area" unselectable="on">
									<div class="selectbox_btn" unselectable="on"></div>
								</div>
							</div>
							<div class="selectbox_layer" maxcount="20"></div>
						</div>
					</div>
					<div class="rangeMark column">~</div>
					<div class="selectBox column">
						<div id="maxCheckSelectBox" name="maxCheckSelectBox"
							class="maxCheckSelectBox ui_selectbox ui_component ui_active"
							setvaluemsg="SET_VALUE_SELECTBOX">
							<div class="selectbox_value_area">
								<a class="tab_order" name="tab_order" unselectable="on"></a>
								<div class="selectbox_value" value="">
									<span></span>
								</div>
								<div class="selectbox_btn_area" unselectable="on">
									<div class="selectbox_btn" unselectable="on"></div>
								</div>
							</div>
							<div class="selectbox_layer" maxcount="20"></div>
						</div>
					</div>
				</div>
				<div class="column requiredCheckMsg"></div>
			</div>
		</div>

		<div class="itemOptionsPh">
			<div class="itemOptions holder vertical">
				<div class="itemOptionCont dragOption">
					<div class="column dragOptionBtn" dragx="yes" dragtype="dragOption"></div>
					<div name="itemOptionRadio" style="width: 20px;"
						class="itemOptionRadio ui_radio ui_component column"
						setvaluemsg="SET_VALUE_RADIO">
						<a class="tab_order" name="tab_order" unselectable="on"></a>
						<div class="radio" unselectable="on"></div>
					</div>

					<div class="column" style="position: relative;">
						<div class="hide text"></div>
						<input title="" type="text" id="option" name="option"
							maxlength="100" value=""
							class="column ui_inputLabel tab_order ui_inputbox ui_component placeholder"
							style="" setvaluemsg="SET_VALUE_INPUTBOX" placeholder=""
							data-placehoder-key="AC9C7495-9FD8-432B-ABF3-ABA744807761">


					</div>
					<div class="column"></div>
					<div class="column">
						<div menu="imageOptionButton" name="imageOptionButton"
							data-option-id="1" data-ncode="edt.oimgadd"
							class="ui_component cmd_toggle ui_button column imageOptionButton">&nbsp;</div>
					</div>
					<div class="column">
						<a href="javascript:void(0);" menu="deleteOption"
							class="deleteOption column ui_button"> </a>
					</div>
					<div class="holder">
						<div class="holder itemImagePh hide">
							<img class="imageResource" src="">
							<div id="image_option_delete_image" menu="imageDeleteOption"
								data-option-id="1" data-ncode="edt.oimgdel" name="image_option"
								class="image_option imageDeleteOption ui_button"></div>
							<div id="image_option_text_place" menu="imageTextPlaceOption"
								data-option-id="1" name="image_option"
								class="image_option ui_button imageTextPlaceOption"
								style="display: none">옵션 설명 위치</div>
							<input type="hidden" id="option_image" name="option_image"
								value="" class="ui_inputbox ui_component imageValue"
								setvaluemsg="SET_VALUE_INPUTBOX"> <input type="hidden"
								id="option_text_place" name="option_text_place" value="alt"
								class="ui_inputbox ui_component textPlaceValue"
								setvaluemsg="SET_VALUE_INPUTBOX">
						</div>
					</div>
				</div>
				<div class="itemOptionCont dragOption">
					<div class="column dragOptionBtn" dragx="yes" dragtype="dragOption"></div>
					<div name="itemOptionRadio" style="width: 20px;"
						class="itemOptionRadio ui_radio ui_component column"
						setvaluemsg="SET_VALUE_RADIO">
						<a class="tab_order" name="tab_order" unselectable="on"></a>
						<div class="radio" unselectable="on"></div>
					</div>

					<div class="column" style="position: relative;">
						<div class="hide text"></div>
						<input title="" type="text" id="option" name="option"
							maxlength="100" value=""
							class="column ui_inputLabel tab_order ui_inputbox ui_component placeholder"
							style="" setvaluemsg="SET_VALUE_INPUTBOX" placeholder=""
							data-placehoder-key="5BDB56B3-181D-4A44-BC94-73AEA31EE56B">


					</div>
					<div class="column"></div>
					<div class="column">
						<div menu="imageOptionButton" name="imageOptionButton"
							data-option-id="2" data-ncode="edt.oimgadd"
							class="ui_component cmd_toggle ui_button column imageOptionButton">&nbsp;</div>
					</div>
					<div class="column">
						<a href="javascript:void(0);" menu="deleteOption"
							class="deleteOption column ui_button"> </a>
					</div>
					<div class="holder">
						<div class="holder itemImagePh hide">
							<img class="imageResource" src="">
							<div id="image_option_delete_image" menu="imageDeleteOption"
								data-option-id="2" data-ncode="edt.oimgdel" name="image_option"
								class="image_option imageDeleteOption ui_button"></div>
							<div id="image_option_text_place" menu="imageTextPlaceOption"
								data-option-id="2" name="image_option"
								class="image_option ui_button imageTextPlaceOption"
								style="display: none">옵션 설명 위치</div>
							<input type="hidden" id="option_image" name="option_image"
								value="" class="ui_inputbox ui_component imageValue"
								setvaluemsg="SET_VALUE_INPUTBOX"> <input type="hidden"
								id="option_text_place" name="option_text_place" value="alt"
								class="ui_inputbox ui_component textPlaceValue"
								setvaluemsg="SET_VALUE_INPUTBOX">
						</div>
					</div>
				</div>
				<div class="holder addOptionHolder">
					<div name="itemOptionRadio" style="width: 20px;"
						class="itemOptionRadio ui_radio ui_component column"
						setvaluemsg="SET_VALUE_RADIO">
						<a class="tab_order" name="tab_order" unselectable="on"></a>
						<div class="radio" unselectable="on"></div>
					</div>

					<div menu="addOption"
						class="addOption column ui_input_disable ui_inputLabel">클릭하면
						추가</div>
					<div class="column addOptionEtc">
						또는 <span menu="addOptionEtc" class="addOptionEtcLabel">'기타'
							추가</span>
					</div>
				</div>
			</div>
		</div>

		<div class="itemInfoPh">
			<div class="holder itemInfoUseDatePh"></div>
		</div>
		<div class="itemEditConfirmPh holder">
			<div menu="confirmEdit"
				class="editConfirmBtn ui_button normal confirm_button"
				data-ncode="edt.confirm">확인</div>
		</div>

	</div>
</body>
</html>