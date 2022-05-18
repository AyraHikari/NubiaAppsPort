.class public Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;
.super Ljava/lang/Object;
.source "UpdateApkController.java"

# interfaces
.implements Lcn/nubia/upgrade/http/IGetVersionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mIGetVersionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 134
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 138
    packed-switch p1, :pswitch_data_0

    .line 147
    :pswitch_0
    return-void

    .line 138
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onGetNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4
    .param p1, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 151
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$400(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-virtual {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->isInstallMsgNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 157
    .local v1, "message":Landroid/os/Message;
    const v2, 0x100005

    iput v2, v1, Landroid/os/Message;->what:I

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "VersionDL"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$500(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 165
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "message":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/calendar/util/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 166
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-virtual {v2, p1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v2, "updateAPKController"

    const-string v3, "do not dl new version in modile mode"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetNoVersion()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 175
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 176
    .local v1, "day":I
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$mIGetVersionListener;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "UPGRADE_CHECK"

    invoke-static {v2, v3, v1}, Lcn/nubia/calendar/util/Utils;->setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    return-void
.end method
