.class final Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 936
    invoke-static {p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$2100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->lengths:[J

    .line 937
    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;

    .prologue
    .line 911
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)J
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 911
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;J)J
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .prologue
    .line 911
    iput-wide p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$602(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .prologue
    .line 911
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->currentEditor:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .prologue
    .line 911
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->currentEditor:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 965
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    array-length v2, p1

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$2100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 952
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 956
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 957
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 962
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 969
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$2200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 973
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->this$0:Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->access$2200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->lengths:[J

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v4, v1

    .line 942
    .local v2, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 944
    .end local v2    # "size":J
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
