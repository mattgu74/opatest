start() =
    <>
        <h1>TEST 1</h1>
        <img src="res/oni.png" alt="bouh" onmouseover={_ -> jlog("mouseover image")} onmouseout={_ -> jlog("mouseout image")} usemap="test" width="138" height="235"/>
<map name="test">
<area shape="rect" coords="0,0,138,235" href="test" onmouseover={_ -> jlog("mouseover area")} onmouseout={_ -> jlog("mouseout area")}/>
</map>
        <h1>TEST 2</h1>
        <img src="res/oni.png" alt="bouh" usemap="test2" width="138" height="235"/>
<map name="test2">
<area shape="rect" coords="0,0,138,235" href="#" onmouseover={_ -> jlog("mouseover area")} onmouseout={_ -> jlog("mouseout area")}/>
</map>
        <h1>TEST 4</h1>
        <a onmouseover={_ -> jlog("text mouseover")} onmouseout={_ -> jlog("text mouseout")}>test</a>
    </>

server = Server.one_page_bundle("Test map", [@static_resource_directory("res")], [], start)
