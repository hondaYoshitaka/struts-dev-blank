<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:putList name="stylesheets">
		<tiles:add value="index.less"></tiles:add>
	</tiles:putList>
	<tiles:put name="title" value="Please Insert Title!!" />
	<tiles:put name="content" type="string">
		<div class="row">
			<div class="col-lg-12">
				This is content.<br/>
				Please insert message.
			</div>
		</div>
	</tiles:put>
</tiles:insert>
