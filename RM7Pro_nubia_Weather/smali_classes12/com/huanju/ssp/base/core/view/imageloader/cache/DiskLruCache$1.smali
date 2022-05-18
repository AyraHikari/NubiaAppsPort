.class Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    monitor-exit v1

    .line 184
    :goto_0
    return-object v3

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V

    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$300(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V

    .line 181
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$402(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;I)I

    .line 183
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
