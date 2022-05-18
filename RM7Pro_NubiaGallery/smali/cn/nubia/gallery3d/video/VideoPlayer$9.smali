.class Lcn/nubia/gallery3d/video/VideoPlayer$9;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;->setAudioTrack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$9;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$9;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1100(Lcn/nubia/gallery3d/video/VideoPlayer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 466
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer$9;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1000(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    .line 467
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
