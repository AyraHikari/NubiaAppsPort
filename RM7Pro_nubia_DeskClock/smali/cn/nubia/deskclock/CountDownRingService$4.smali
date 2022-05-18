.class Lcn/nubia/deskclock/CountDownRingService$4;
.super Ljava/lang/Object;
.source "CountDownRingService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/CountDownRingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountDownRingService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 286
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 290
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 291
    const-string v0, "CountDownRingService"

    const-string v1, "audio focus gain..."

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$1100(Lcn/nubia/deskclock/CountDownRingService;)V

    .line 294
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$1200(Lcn/nubia/deskclock/CountDownRingService;)V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 298
    :cond_2
    const-string v0, "CountDownRingService"

    const-string v1, "audio focus loss..."

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 302
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/CountDownRingService;->access$1302(Lcn/nubia/deskclock/CountDownRingService;Z)Z

    .line 305
    :cond_3
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$900(Lcn/nubia/deskclock/CountDownRingService;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$4;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$900(Lcn/nubia/deskclock/CountDownRingService;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
