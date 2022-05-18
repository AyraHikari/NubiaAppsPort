.class Lcn/nubia/music/MediaPlaybackService$b$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService$b;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService$b;)V
    .locals 0

    .prologue
    .line 3588
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$b$1;->a:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 3613
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b$1;->a:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService$b;->d(Lcn/nubia/music/MediaPlaybackService$b;)V

    .line 3614
    return-void
.end method

.method public onError(II)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3597
    packed-switch p1, :pswitch_data_0

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3605
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b$1;->a:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService$b;->c(Lcn/nubia/music/MediaPlaybackService$b;)V

    .line 3608
    :goto_0
    return v2

    .line 3599
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer.MEDIA_ERROR_SERVER_DIED Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3601
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b$1;->a:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService$b;->b(Lcn/nubia/music/MediaPlaybackService$b;)V

    goto :goto_0

    .line 3597
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared()V
    .locals 1

    .prologue
    .line 3592
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b$1;->a:Lcn/nubia/music/MediaPlaybackService$b;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a(Lcn/nubia/music/MediaPlaybackService$b;)V

    .line 3593
    return-void
.end method
