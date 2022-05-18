.class public Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;
.super Ljava/lang/Object;
.source "TopBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/TopBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public actionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field public actionBarView:Landroid/view/View;

.field public currentMonthDateWidget:Landroid/widget/TextView;

.field public currentYearAndWeekDateWidget:Landroid/widget/TextView;

.field public dateCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

.field public outterHandler:Landroid/os/Handler;

.field public view:Landroid/view/View;

.field public widgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

.field public workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 38
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->widgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 39
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 40
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->dateCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 41
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->outterHandler:Landroid/os/Handler;

    .line 42
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->view:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBarView:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentMonthDateWidget:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentYearAndWeekDateWidget:Landroid/widget/TextView;

    return-void
.end method
