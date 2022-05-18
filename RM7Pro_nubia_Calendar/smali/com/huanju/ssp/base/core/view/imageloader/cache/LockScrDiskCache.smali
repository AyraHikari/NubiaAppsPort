.class public Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;
.super Ljava/lang/Object;
.source "LockScrDiskCache.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/view/imageloader/cache/ImageCache;


# instance fields
.field private diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    .line 11
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->clear()V

    .line 33
    return-void
.end method

.method public getCache(Ljava/lang/String;)[B
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v1, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->getCache(Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    .local v0, "data":[B
    return-object v0
.end method

.method public putCache(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/LockScrDiskCache;->diskCache:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;

    invoke-virtual {v0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskCache;->putCache(Ljava/lang/String;[B)V

    .line 28
    return-void
.end method
