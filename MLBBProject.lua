CC_FS267 = {
	"CopyrightΒ© 2023 | FS267"
}
function CC_FS(FS_FUNCTION)
	if FS_FUNCTION == "Main" then
		CC_FS267["MainMenu"] = gg["choice"]({
			"π Visibility Hack [Loading Player] π",
			"π Angle Hack [Lobby] ποΈ",
			"β Bypass [Match Over] β",
			"[E X I T]"
		}, nil, CC_FS267[1])
		if CC_FS267["MainMenu"] == 1 then
			CC_FS("Visibility")
		end
		if CC_FS267["MainMenu"] == 2 then
			CC_FS("Angle")
		end
		if CC_FS267["MainMenu"] == 3 then
			CC_FS("Bypass")
		end
		if CC_FS267["MainMenu"] == 4 then
			CC_FS("Exit")
		end
	end
	if FS_FUNCTION == "Angle" then
		CC_FS267["AngleMenu"] = gg["prompt"]({
			"βοΈ RESET ANGLE βοΈ",
			"β High View βοΈοΈ[0;3]",
			"π 3D View ποΈ[0;3]",
			"< B A C K >",
			"[E X I T]"
		}, nil, {
			"checkbox",
			"number",
			"number",
			"checkbox",
			"checkbox"
		})
		if CC_FS267["AngleMenu"] == nil then
			CC_FS267["AngleMenu"] = {}
		else
			if CC_FS267["AngleMenu"][1] == true then
				CC_FS("ResetAngle")
			end
			if CC_FS267["AngleMenu"][2] == "1" then
				CC_FS("HighView1")
			end
			if CC_FS267["AngleMenu"][2] == "2" then
				CC_FS("HighView2")
			end
			if CC_FS267["AngleMenu"][2] == "3" then
				CC_FS("HighView3")
			end
			if CC_FS267["AngleMenu"][3] == "1" then
				CC_FS("3DView1")
			end
			if CC_FS267["AngleMenu"][3] == "2" then
				CC_FS("3DView2")
			end
			if CC_FS267["AngleMenu"][3] == "3" then
				CC_FS("3DView3")
			end
			if CC_FS267["AngleMenu"][4] == true then
				CC_FS("Main")
			end
			if CC_FS267["AngleMenu"][5] == true then
				CC_FS("Exit")
			end
		end
	end
	if FS_FUNCTION == "VisibilitySearch" then
		gg["clearResults"]()
		gg["setRanges"](32)
		gg["searchNumber"]("90111,93574326272", 32)
		if gg["isVisible"](true) then
			gg["setVisible"](false)
		end
		if gg["getResultsCount"]() == 0 then
			gg["alert"]("β Value Not Found β")
		else
			gg["refineAddress"]("FA4")
			CC_FS267["Result"] = gg["getResults"](1)
			for i, FS in ipairs(CC_FS267["Result"]) do
				FS["address"] = FS["address"] - 12
			end
			gg["clearResults"]()
			while CC_FS267["VisibilityAddress"] == nil do
				if gg["getValues"](CC_FS267["Result"])[1]["value"] == 60129542155 then
					for i, FS in ipairs(CC_FS267["Result"]) do
						CC_FS267["VisibilityAddress"] = FS["address"] + 4
					end
				else
					if gg["isVisible"](true) then
						if gg["alert"]("π Waiting For Value! π\n\nDo you want to cancel?") == 1 then
							break
						end
						gg["setVisible"](false)
					end
				end
			end
		end
	end
	if FS_FUNCTION == "Visibility" then
		if CC_FS267["VisibilityAddress"] == nil then
			CC_FS("VisibilitySearch")
		end
		if CC_FS267["VisibilityAddress"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["VisibilityAddress"],
					["flags"] = 16,
					["value"] = 6
				}
			})
			gg["toast"]("π The visible area has been enlarged π")
		end
	end
	if FS_FUNCTION == "Bypass" then
		if CC_FS267["VisibilityAddress"] == nil then
			CC_FS("VisibilitySearch")
		end
		if CC_FS267["VisibilityAddress"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["VisibilityAddress"],
					["flags"] = 4,
					["value"] = 14
				}
			})
			gg["toast"]("β Bypassed β")
		end
	end
	if FS_FUNCTION == "AngleSearch" then
		gg["clearResults"]()
		gg["setRanges"](32)
		gg["searchNumber"]("; αΊΈδ΅κΈμ―νδ³η€δ«ι¦δ³ε°©λΆ")
		if gg["isVisible"](true) then
			gg["setVisible"](false)
		end
		while not CC_FS267["AngleList"] do
			if gg["getResultsCount"]() == 0 then
				gg["alert"]("β Value Not Found β")
				break
			else
				gg["removeResults"](gg["getResults"](2))
				CC_FS267["AngleList"] = {gg["getResults"](10)}
				gg["clearResults"]()
				gg["searchNumber"]("; αΊΈμ΅κΈμ―νμ³η€δ«α¦μ")
				if gg["isVisible"](true) then
					gg["setVisible"](false)
				end
				if gg["getResultsCount"]() == 0 then
					gg["alert"]("β Value Not Found β")
					CC_FS267["AngleList"] = nil
					break
				else
					gg["removeResults"](gg["getResults"](2))
					CC_FS267["AngleList"][2] = gg["getResults"](10)
				end
			end
		end
		gg["clearResults"]()
	end
	if FS_FUNCTION == "ResetAngle" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16629
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -20972
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16081
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16627
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16139
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -20972
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16081
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16141
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("βοΈ Angle Resetted β")
		end
	end
	if FS_FUNCTION == "HighView1" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 10168
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16690
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 25972
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16009
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -8182
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16688
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 10168
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16078
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 25972
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16009
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -6038
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16084
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("π₯οΈ Angle Changed π₯οΈ")
		end
	end
	if FS_FUNCTION == "HighView2" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -13107
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16748
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -19891
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -15966
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 10486
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16748
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 12472
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16017
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -19891
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -15966
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -5878
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16019
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("π Angle Changed π")
		end
	end
	if FS_FUNCTION == "HighView3" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -2184
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16796
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 2052
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -15914
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = -20534
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16795
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -12904
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -15952
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -2954
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -15894
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = 27498
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -15959
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("π Angle Changed ποΈ")
		end
	end
	if FS_FUNCTION == "3DView1" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = 28216
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16647
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = -31820
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16238
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 9866
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = 16646
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = -3
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16786
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = -26214
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 16947
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -23752
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16109
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 6036
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16233
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = 23434
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16110
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = -3
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16786
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("ποΈοΈοΈ Angle Changed ποΈ")
		end
	end
	if FS_FUNCTION == "3DView2" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -29146
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16719
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16203
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 9293
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = -16966
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 13107
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16811
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = 31072
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 17074
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = -4488
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16033
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16203
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -31222
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16690
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 7268
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16802
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 13898
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15689
				}
			})
			gg["toast"]("ποΈ Angle Changed π")
		end
	end
	if FS_FUNCTION == "3DView3" then
		if CC_FS267["AngleList"] == nil then
			CC_FS("AngleSearch")
		end
		if CC_FS267["AngleList"] ~= nil then
			gg["setValues"]({
				{
					["address"] = CC_FS267["AngleList"][1][1]["address"],
					["flags"] = 2,
					["value"] = -29472
				},
				{
					["address"] = CC_FS267["AngleList"][1][2]["address"],
					["flags"] = 2,
					["value"] = 16666
				},
				{
					["address"] = CC_FS267["AngleList"][1][3]["address"],
					["flags"] = 2,
					["value"] = 20021
				},
				{
					["address"] = CC_FS267["AngleList"][1][4]["address"],
					["flags"] = 2,
					["value"] = -16255
				},
				{
					["address"] = CC_FS267["AngleList"][1][5]["address"],
					["flags"] = 2,
					["value"] = 2301
				},
				{
					["address"] = CC_FS267["AngleList"][1][6]["address"],
					["flags"] = 2,
					["value"] = -16145
				},
				{
					["address"] = CC_FS267["AngleList"][1][7]["address"],
					["flags"] = 2,
					["value"] = 13107
				},
				{
					["address"] = CC_FS267["AngleList"][1][8]["address"],
					["flags"] = 2,
					["value"] = 16763
				},
				{
					["address"] = CC_FS267["AngleList"][1][9]["address"],
					["flags"] = 2,
					["value"] = 16960
				},
				{
					["address"] = CC_FS267["AngleList"][1][10]["address"],
					["flags"] = 2,
					["value"] = 17151
				},
				{
					["address"] = CC_FS267["AngleList"][2][1]["address"],
					["flags"] = 2,
					["value"] = 7864
				},
				{
					["address"] = CC_FS267["AngleList"][2][2]["address"],
					["flags"] = 2,
					["value"] = -16139
				},
				{
					["address"] = CC_FS267["AngleList"][2][3]["address"],
					["flags"] = 2,
					["value"] = -13107
				},
				{
					["address"] = CC_FS267["AngleList"][2][4]["address"],
					["flags"] = 2,
					["value"] = -16308
				},
				{
					["address"] = CC_FS267["AngleList"][2][5]["address"],
					["flags"] = 2,
					["value"] = -10486
				},
				{
					["address"] = CC_FS267["AngleList"][2][6]["address"],
					["flags"] = 2,
					["value"] = -16141
				},
				{
					["address"] = CC_FS267["AngleList"][2][7]["address"],
					["flags"] = 2,
					["value"] = 28836
				},
				{
					["address"] = CC_FS267["AngleList"][2][8]["address"],
					["flags"] = 2,
					["value"] = 16939
				},
				{
					["address"] = CC_FS267["AngleList"][2][9]["address"],
					["flags"] = 2,
					["value"] = 6554
				},
				{
					["address"] = CC_FS267["AngleList"][2][10]["address"],
					["flags"] = 2,
					["value"] = -15610
				}
			})
			gg["toast"]("π Angle Changed π")
		end
	end
	if FS_FUNCTION == "Exit" then
		gg["toast"]("Thank you for using my script!")
		print("Thank you for using my script!\n\nContact Me:\nTelegram	: @fathoni267")
		os["exit"]()
	end
end
gg["require"]("80.0")
while true do
	if gg["isVisible"](true) then
		gg["setVisible"](false)
		CC_FS("Main")
	end
end
