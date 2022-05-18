.class Lcn/nubia/music/activity/MediaPlaybackActivity$6;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;->setRingtoneForCard(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iput p2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1189
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3700(Lcn/nubia/music/activity/MediaPlaybackActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3800(Lcn/nubia/music/activity/MediaPlaybackActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    const v1, 0x7f0b0065

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$3900(Lcn/nubia/music/activity/MediaPlaybackActivity;I)V

    .line 1195
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->b:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$4000(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v2

    iget v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$6;->a:I

    invoke-static {v0, v2, v3, v1}, Lcn/nubia/music/utils/MusicUtils;->setCallRingtone(Landroid/content/Context;JI)V

    goto :goto_0
.end method
