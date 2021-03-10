local TextService = game:GetService("TextService")
local TweenService = game:GetService("TweenService")

local ClosureSpy = {}
local Methods = import("modules/ClosureSpy")

if not hasMethods(Methods.RequiredMethods) then
    return ClosureSpy
end

local Prompt = import("ui/controls/Prompt")
local CheckBox = import("ui/controls/CheckBox")
local Dropdown = import("ui/controls/Dropdown")
local List, ListButton = import("ui/controls/List")
local MessageBox, MessageType = import("ui/controls/MessageBox")
local ContextMenu, ContextMenuButton = import("ui/controls/ContextMenu")

local Base = import("rbxassetid://5042109928").Base
local Assets = import("rbxassetid://5042114982").ClosureSpy

local Prompts = Base.Prompts
local Page = Base.Body.Pages.ClosureSpy

local ClosureList = Page.List
local ListQuery = ClosureList.Query
local ListSearch = ListQuery.Search
local ListRefresh = ListQuery.Refresh
local ListResults = ClosureList.Results.Clip.Content

local ClosureLogs = Page.Logs
local LogsButtons = ClosureLogs.Buttons
local LogsClosure = ClosureLogs.ClosureObject
local LogsBack = ClosureLogs.Back
local LogsResults = ClosureLogs.Results.Clip.Content

local ClosureConditions = Page.Conditions
local ConditionsClosure = ClosureConditions.ClosureObject
local ConditionsButtons = ClosureConditions.Buttons
local ConditionsResults = ClosureConditions.Results.Clip.Content
local ConditionsBack = ClosureConditions.Back

local NewClosureCondition = Prompts.NewClosureCondition
local NewConditionInner = NewClosureCondition.Inner
local NewConditionButtons = NewConditionInner.Buttons
local NewConditionContent = NewConditionInner.Content
local NewConditionIndex = NewConditionContent.Index

local currentClosures = Methods.CurrentClosures

return ClosureSpy
