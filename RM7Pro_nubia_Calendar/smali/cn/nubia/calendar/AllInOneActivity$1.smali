.class Lcn/nubia/calendar/AllInOneActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AllInOneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/AllInOneActivity;->registerEventReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/AllInOneActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/AllInOneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/AllInOneActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/calendar/AllInOneActivity$1;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "reason"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "reason":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/AllInOneActivity$1;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-static {v3}, Lcn/nubia/calendar/AllInOneActivity;->access$000(Lcn/nubia/calendar/AllInOneActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive broadcast ACTION_CLOSE_SYSTEM_DIALOGS and the reason is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :try_start_0
    iget-object v3, p0, Lcn/nubia/calendar/AllInOneActivity$1;->this$0:Lcn/nubia/calendar/AllInOneActivity;

    invoke-virtual {v3}, Lcn/nubia/calendar/AllInOneActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "exception":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
