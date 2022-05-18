.class Lcn/nubia/music/activity/AudioPreviewActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->registerHeadsetReceiver()V
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
    .line 106
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    .line 120
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$300(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    .line 127
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$2;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$300(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_0
.end method
