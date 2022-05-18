.class Lcn/nubia/video/player/common/NubiaPlayer$1;
.super Ljava/lang/Object;
.source "NubiaPlayer.java"

# interfaces
.implements Lcn/nubia/video/player/common/NubiaPlayer$NativeGetAudioBufferCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/NubiaPlayer;->setAudioplay()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/NubiaPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/NubiaPlayer;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$1;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioBuffer([B)V
    .locals 4

    .line 469
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$1;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/common/NubiaPlayer;->access$600(Lcn/nubia/video/player/common/NubiaPlayer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer$1;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$700(Lcn/nubia/video/player/common/NubiaPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer$1;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$800(Lcn/nubia/video/player/common/NubiaPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer$1;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$700(Lcn/nubia/video/player/common/NubiaPlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 475
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
