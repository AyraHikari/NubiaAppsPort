.class Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;
.super Landroid/os/Handler;
.source "UpdateApkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;
    .param p2, "x1"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;-><init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 106
    :sswitch_0
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$300(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    goto :goto_0

    .line 109
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 110
    .local v0, "map1":Ljava/util/Map;
    const-string v2, "VersionDL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/upgrade/model/VersionData;

    .line 111
    .local v1, "versionData1":Lcn/nubia/upgrade/model/VersionData;
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    iget-object v3, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$ControlHandler;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v3}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x100005 -> :sswitch_1
        0x16000014 -> :sswitch_0
    .end sparse-switch
.end method
