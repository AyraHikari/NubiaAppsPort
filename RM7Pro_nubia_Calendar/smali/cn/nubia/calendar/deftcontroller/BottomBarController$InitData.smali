.class public Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;
.super Ljava/lang/Object;
.source "BottomBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/BottomBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public bottomBarMgr:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

.field public outterHandler:Landroid/os/Handler;

.field public workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 44
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->bottomBarMgr:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 45
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->outterHandler:Landroid/os/Handler;

    return-void
.end method
