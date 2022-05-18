.class Lcn/nubia/music/activity/MediaPlaybackActivity$17;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 767
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2700(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 770
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2800(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 771
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2900(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 772
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2300(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 773
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3000(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 776
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 779
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3100(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 781
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2900(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 785
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$17;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->finish()V

    .line 789
    return-void
.end method
