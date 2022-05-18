.class Lcn/nubia/music/activity/MediaPlaybackActivity$15;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/IProgressLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(F)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 485
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getBufferingPrecent()I

    move-result v0

    int-to-float v0, v0

    .line 488
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4, v5}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    .line 490
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2400(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/ui/SeekCircleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/music/ui/SeekCircleView;->setProgress(F)V

    .line 494
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2600(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, p1

    float-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2502(Lcn/nubia/music/activity/MediaPlaybackActivity;J)J

    .line 496
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2500(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->seek(J)J

    .line 497
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4, v5}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    .line 498
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$15;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2502(Lcn/nubia/music/activity/MediaPlaybackActivity;J)J

    goto :goto_0
.end method
