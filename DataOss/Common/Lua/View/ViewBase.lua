-- Copyright(c) Cragon. All rights reserved.

---------------------------------------
ViewBase = class()

function ViewBase:ctor()
    self.CasinosContext = CS.Casinos.CasinosContext.Instance
    self.Context = Context
    self.ModelMgr = ModelMgr
    self.ControllerMgr = ControllerMgr
    self.ViewMgr = ViewMgr
    self.EventSys = EventSys
    self.MC = CommonMethodType
    self.Json = self.Context.Json
    self.LanMgr = self.Context.LanMgr
    self.TbDataMgr = self.Context.TbDataMgr
    self.Rpc = self.Context.Rpc

    self.ViewKey = nil
    self.GoUi = nil
    self.ComUi = nil
    self.Panel = nil
    self.UILayer = nil
    self.InitDepth = nil
end

function ViewBase:OnCreate()
end

function ViewBase:OnDestroy()
end

function ViewBase:OnHandleEv(ev)
end

function ViewBase:BindEvListener(ev_name, ev_listener)
    if (self.EventSys ~= nil) then
        self.EventSys:BindEvListener(ev_name, ev_listener)
    end
end

function ViewBase:UnbindEvListener(ev_listener)
    if (self.EventSys ~= nil) then
        self.EventSys:UnbindEvListener(ev_listener)
    end
end

function ViewBase:GetEv(ev_name)
    local ev = nil
    if (self.EventSys ~= nil) then
        ev = self.EventSys:GetEv(ev_name)
    end
    return ev
end

function ViewBase:SendEv(ev)
    if (self.EventSys ~= nil) then
        self.EventSys:SendEv(ev)
    end
end

---------------------------------------
ViewFactory = class()

function ViewFactory:ctor(this, ui_package_name, ui_component_name, ui_layer, is_single, fit_screen)
    self.PackageName = ui_package_name
    self.ComponentName = ui_component_name
    self.UILayer = ui_layer
    self.IsSingle = is_single
    self.FitScreen = fit_screen
end

function ViewFactory:CreateView()
end