.class public final Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 747
    iput-wide p3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 748
    iput-object p5, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 749
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;
    .param p6, "x4"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;

    .prologue
    .line 740
    invoke-direct/range {p0 .. p5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 776
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 777
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 779
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public edit()Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1500(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-virtual {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$1600(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
