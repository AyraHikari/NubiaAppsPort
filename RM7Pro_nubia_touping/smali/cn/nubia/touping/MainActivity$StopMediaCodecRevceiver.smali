.class Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopMediaCodecRevceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/MainActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/touping/MainActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/MainActivity;Lcn/nubia/touping/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/MainActivity;
    .param p2, "x1"    # Lcn/nubia/touping/MainActivity$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;-><init>(Lcn/nubia/touping/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v2, "action.MIRACAST.NubiaWirelessTouPingForIntentBroadcastReceiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 185
    .end local v1    # "type":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 176
    .restart local v1    # "type":I
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/MainActivity;

    iget-object v2, v2, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/MainActivity;

    iget-object v2, v2, Lcn/nubia/touping/MainActivity;->mDialogManager:Lcn/nubia/touping/Utils/DialogManager;

    invoke-virtual {v2}, Lcn/nubia/touping/Utils/DialogManager;->help2ClickCancleBtn()V

    goto :goto_0

    .line 181
    .end local v1    # "type":I
    :cond_1
    const-string v2, "cn.nubia.add.display.wfd.CONNECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StopMediaCodecRevceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcn/nubia/touping/MainActivity$StopMediaCodecRevceiver;->this$0:Lcn/nubia/touping/MainActivity;

    invoke-virtual {v2}, Lcn/nubia/touping/MainActivity;->finish()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
