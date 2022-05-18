.class public Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;
.super Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;
.source "UnlimitedDiskCache.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 55
    return-void
.end method
