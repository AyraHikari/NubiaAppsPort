.class Lcn/nubia/deskclock/CountDownRingService$3$1;
.super Ljava/lang/Object;
.source "CountDownRingService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/CountDownRingService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/CountDownRingService$3;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownRingService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/CountDownRingService$3;

    .prologue
    .line 197
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService$3$1;->this$1:Lcn/nubia/deskclock/CountDownRingService$3;

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
    .line 200
    const-string v0, "CountDownRingService"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 202
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 203
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$3$1;->this$1:Lcn/nubia/deskclock/CountDownRingService$3;

    iget-object v0, v0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/deskclock/CountDownRingService;->access$302(Lcn/nubia/deskclock/CountDownRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 205
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$3$1;->this$1:Lcn/nubia/deskclock/CountDownRingService$3;

    iget-object v0, v0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/deskclock/CountDownRingService$3$1;->this$1:Lcn/nubia/deskclock/CountDownRingService$3;

    iget-object v0, v0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v0}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/CountDownRingService$3$1;->this$1:Lcn/nubia/deskclock/CountDownRingService$3;

    iget-object v1, v1, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v1}, Lcn/nubia/deskclock/CountDownRingService;->access$500(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 208
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
