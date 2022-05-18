.class Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->get(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->access$300(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;->removeProxy(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)V

    .line 350
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->access$702(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;Z)Z

    .line 352
    iget-object v1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;->this$0:Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 353
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
