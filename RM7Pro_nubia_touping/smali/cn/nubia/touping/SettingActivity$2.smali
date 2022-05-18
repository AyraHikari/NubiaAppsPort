.class Lcn/nubia/touping/SettingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/SettingActivity;->initReceiver()V
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
    .line 113
    iput-object p1, p0, Lcn/nubia/touping/SettingActivity$2;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.nubia.touping.action.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 120
    .local v0, "state":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 122
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$2;->this$0:Lcn/nubia/touping/SettingActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/touping/SettingActivity;->access$100(Lcn/nubia/touping/SettingActivity;Z)V

    goto :goto_0

    .line 126
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$2;->this$0:Lcn/nubia/touping/SettingActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/touping/SettingActivity;->access$100(Lcn/nubia/touping/SettingActivity;Z)V

    goto :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1c -> :sswitch_1
    .end sparse-switch
.end method
