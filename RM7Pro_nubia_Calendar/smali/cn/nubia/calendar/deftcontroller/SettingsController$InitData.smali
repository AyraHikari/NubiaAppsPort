.class public Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;
.super Ljava/lang/Object;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public configModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field public outterHandler:Landroid/os/Handler;

.field public workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 27
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->configModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 28
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->outterHandler:Landroid/os/Handler;

    return-void
.end method
