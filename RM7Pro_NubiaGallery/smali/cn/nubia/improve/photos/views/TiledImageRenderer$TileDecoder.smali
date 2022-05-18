.class Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;
.super Ljava/lang/Thread;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;Lcn/nubia/improve/photos/views/TiledImageRenderer$1;)V
    .locals 0

    .line 787
    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;-><init>(Lcn/nubia/improve/photos/views/TiledImageRenderer;)V

    return-void
.end method

.method private waitForTile()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$700(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 801
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$800(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileQueue;->pop()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 803
    monitor-exit v0

    return-object v1

    .line 805
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$700(Lcn/nubia/improve/photos/views/TiledImageRenderer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 807
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finishAndWait()V
    .locals 2

    .line 790
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->interrupt()V

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "TiledImageRenderer"

    const-string v1, "Interrupted while waiting for TileDecoder thread to finish!"

    .line 794
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 813
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->waitForTile()Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileDecoder;->this$0:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-static {v1, v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;->access$900(Lcn/nubia/improve/photos/views/TiledImageRenderer;Lcn/nubia/improve/photos/views/TiledImageRenderer$Tile;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
