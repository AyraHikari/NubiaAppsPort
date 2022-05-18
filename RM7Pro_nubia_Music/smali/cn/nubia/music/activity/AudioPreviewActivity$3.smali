.class Lcn/nubia/music/activity/AudioPreviewActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->registerEventReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$3;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$3;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_0

    .line 157
    :cond_2
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast ACTION_CLOSE_SYSTEM_DIALOGS and the reason is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "recentapps"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$3;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$400(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$3;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_0
.end method
