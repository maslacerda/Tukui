if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarBottomLeft as bar #2
---------------------------------------------------------------------------

local TukuiBar2 = CreateFrame("Frame","TukuiBar2",UIParent)
TukuiBar2:SetAllPoints(TukuiActionBarBackground)
MultiBarBottomLeft:SetParent(TukuiBar2)

for i=1, 12 do
	local b = _G["MultiBarBottomLeftButton"..i]
	local b2 = _G["MultiBarBottomLeftButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		if TukuiDB.lowversion and TukuiCF.actionbar.bottomrows == 2 then
			b:SetPoint("BOTTOM", ActionButton1, "TOP", 0, TukuiDB.Scale(4))
		else
			b:SetPoint("LEFT", ActionButton12, "RIGHT", TukuiDB.Scale(4), 0)
		end
	else
		b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
	end
end

-- remove 4 buttons on high reso to fit bottom bar.
if not TukuiDB.lowversion then
	MultiBarBottomLeftButton3:SetAlpha(0)
    	MultiBarBottomLeftButton3:SetScale(0.0001)
	MultiBarBottomLeftButton4:SetAlpha(0)
    	MultiBarBottomLeftButton4:SetScale(0.0001)
    	MultiBarBottomLeftButton5:SetAlpha(0)
    	MultiBarBottomLeftButton5:SetScale(0.0001)
    	MultiBarBottomLeftButton6:SetAlpha(0)
    	MultiBarBottomLeftButton6:SetScale(0.0001)
    	MultiBarBottomLeftButton7:SetAlpha(0)
    	MultiBarBottomLeftButton7:SetScale(0.0001)
    	MultiBarBottomLeftButton8:SetAlpha(0)
    	MultiBarBottomLeftButton8:SetScale(0.0001)
    	MultiBarBottomLeftButton9:SetAlpha(0)
    	MultiBarBottomLeftButton9:SetScale(0.0001)
    	MultiBarBottomLeftButton10:SetAlpha(0)
    	MultiBarBottomLeftButton10:SetScale(0.0001)
	MultiBarBottomLeftButton11:SetAlpha(0)
	MultiBarBottomLeftButton11:SetScale(0.0001)
	MultiBarBottomLeftButton12:SetAlpha(0)
	MultiBarBottomLeftButton12:SetScale(0.0001)
end

-- hide it if needed
if (TukuiCF.actionbar.bottomrows == 1 and TukuiDB.lowversion) then
	TukuiBar2:Hide()
end