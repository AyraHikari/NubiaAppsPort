.class Lcn/nubia/deskclock/AsyncRingtonePlayer$3;
.super Ljava/lang/Object;
.source "AsyncRingtonePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AsyncRingtonePlayer;->createMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AsyncRingtonePlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AsyncRingtonePlayer;

    .prologue
    .line 340
    iput-object p1, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 343
    const-string v0, "AsyncRingtonePlayer"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    invoke-static {v0}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1200(Lcn/nubia/deskclock/AsyncRingtonePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 351
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/AsyncRingtonePlayer$3;->this$0:Lcn/nubia/deskclock/AsyncRingtonePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AsyncRingtonePlayer;->access$1202(Lcn/nubia/deskclock/AsyncRingtonePlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 353
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
