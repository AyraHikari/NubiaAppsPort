.class public Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;
.super Ljava/lang/Object;
.source "UserActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/UserActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public outterHandler:Landroid/os/Handler;

.field public userActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

.field public workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 58
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->userActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 59
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->outterHandler:Landroid/os/Handler;

    return-void
.end method
