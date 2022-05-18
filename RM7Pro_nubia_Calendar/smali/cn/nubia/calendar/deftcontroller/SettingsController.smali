.class public Lcn/nubia/calendar/deftcontroller/SettingsController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "SettingsController.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;
    }
.end annotation


# static fields
.field public static final SETTINGS_CMD_SHOW_SETTINGS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SettingsController"


# instance fields
.field private mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mOutterHandler:Landroid/os/Handler;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 79
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 80
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 81
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mOutterHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method private getYunSdkCountSetting()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    const-string v1, "CalendarSetting"

    invoke-static {v1}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "yunsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showSettings()V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/SettingsController;->getYunSdkCountSetting()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method


# virtual methods
.method public destroySelf()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public execCommand(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 46
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/SettingsController;->showSettings()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;)V
    .locals 1
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;

    .prologue
    .line 36
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 37
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->configModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 38
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mOutterHandler:Landroid/os/Handler;

    .line 40
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SettingsController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->registerObserver(Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "changeFlag"    # I

    .prologue
    .line 76
    return-void
.end method
