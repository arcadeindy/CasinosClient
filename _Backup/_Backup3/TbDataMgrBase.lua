---- Copyright(c) Cragon. All rights reserved.
--
-----------------------------------------
--TbDataMgrBase = {
--    TbDataMgr = nil,
--    QueDBFileNames = {},
--}
--
-----------------------------------------
--function TbDataMgrBase:new(o, tbdata_mgr, que_dbfile_name)
--    o = o or {}
--    setmetatable(o, self)
--    self.__index = self
--    self.TbDataMgr = tbdata_mgr
--    self.QueDBFileNames = que_dbfile_name
--    local tb_count = LuaHelper:GetTableCount(self.QueDBFileNames)
--    if (tb_count > 0)
--    then
--        local tb_key, tb_value = LuaHelper:GetAndRemoveTableFirstEle(self.QueDBFileNames)
--        self.TbDataMgr:Setup(tb_value,
--                function()
--                    self:LoadDbFinished()
--                end
--        )
--    end
--    return o
--end
--
-----------------------------------------
----function TbDataMgrBase:LoadDbFinished()
----    local tb_count = LuaHelper:GetTableCount(self.QueDBFileNames)
----    if (tb_count > 0)
----    then
----        local tb_key, tb_value = LuaHelper:GetAndRemoveTableFirstEle(self.QueDBFileNames)
----        self.TbDataMgr:Setup(tb_value,
----                function()
----                    self:LoadDbFinished()
----                end
----        )
----    else
----        if (self.LoadTbFinisedCallBack ~= nil)
----        then
----            self.LoadTbFinisedCallBack()
----            self.LoadTbFinisedCallBack = nil
----        end
----    end
----end