.class Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;
.super Landroid/os/Handler;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/weather/ui/activity/BaseFragmentActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/BaseFragmentActivity;)V
    .locals 1
    .param p1, "activity"    # Lcn/nubia/weather/ui/activity/BaseFragmentActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity$ActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;

    .line 73
    .local v0, "baseFragmentActivity":Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
    if-nez v0, :cond_0

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->openNetOrGps(Z)V

    goto :goto_0

    .line 81
    :pswitch_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->openNetOrGps(Z)V

    goto :goto_0

    .line 97
    :pswitch_4
    const-string v3, "BaseFragmentActivity"

    const-string v4, "BaseActivity handleMessage MESSAGE_ID_DL_NEW_VERSION "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 99
    .local v1, "map1":Ljava/util/Map;
    const-string v3, "VersionDL"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/upgrade/model/VersionData;

    .line 100
    .local v2, "versionData1":Lcn/nubia/upgrade/model/VersionData;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper;->doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
