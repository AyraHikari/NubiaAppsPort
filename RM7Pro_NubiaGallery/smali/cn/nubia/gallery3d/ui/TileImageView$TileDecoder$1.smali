.class Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;

    iget-object v0, v0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder$1;->this$1:Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;

    iget-object v1, v1, Lcn/nubia/gallery3d/ui/TileImageView$TileDecoder;->this$0:Lcn/nubia/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
