.class Lcn/nubia/touping/SettingActivity$1;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/SettingActivity;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/SettingActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcn/nubia/touping/SettingActivity$1;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "bitrate":I
    const-string v1, "[SettingActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v1

    const v2, 0x100046

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$1;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/SettingActivity;->access$000(Lcn/nubia/touping/SettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LELINK_UPDATE_BITRATE"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$1;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/Utils/TrackUtils;->sendScreenQuality(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
    .end packed-switch
.end method
