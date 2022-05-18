.class public final Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;,
        Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;,
        Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 10
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 166
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 168
    iput-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    .line 171
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 192
    iput-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->nextSequenceNumber:J

    .line 195
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 196
    iput p2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->appVersion:I

    .line 197
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 199
    iput p3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    .line 200
    iput-wide p4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->maxSize:J

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 2
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p1, "x1"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->completeEdit(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .prologue
    .line 101
    iget v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 269
    if-eqz p0, :cond_0

    .line 271
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 274
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;Z)V
    .locals 12
    .param p1, "editor"    # Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->access$1400(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    move-result-object v2

    .line 581
    .local v2, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 582
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    .end local v2    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 586
    .restart local v2    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$600(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 587
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 588
    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 589
    invoke-virtual {p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->abort()V

    .line 590
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 595
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 596
    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 597
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_4

    .line 598
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 599
    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 600
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 601
    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 602
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 603
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 604
    iget-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    .line 595
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 607
    :cond_4
    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 611
    .end local v1    # "dirty":Ljava/io/File;
    :cond_5
    iget v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    .line 612
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .line 613
    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$600(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 614
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$602(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Z)Z

    .line 615
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 616
    if-eqz p2, :cond_6

    .line 617
    iget-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1202(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;J)J

    .line 624
    :cond_6
    :goto_3
    iget-wide v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 625
    :cond_7
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :cond_8
    monitor-exit p0

    return-void

    .line 620
    :cond_9
    :try_start_2
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 207
    .local v1, "originalLength":I
    if-le p1, p2, :cond_0

    .line 208
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 210
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 211
    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 213
    :cond_2
    sub-int v3, p2, p1

    .line 214
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 216
    .local v0, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 217
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 284
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not a directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 288
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 292
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 356
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 532
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->checkNotClosed()V

    .line 533
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 535
    .local v1, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 536
    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 552
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 539
    :cond_1
    if-nez v1, :cond_3

    .line 540
    :try_start_1
    new-instance v1, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V

    .line 541
    .restart local v1    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_2
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V

    .line 547
    .local v0, "editor":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .line 550
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    .end local v0    # "editor":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 542
    .restart local v1    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 634
    const/16 v0, 0x7d0

    .line 635
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 636
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 635
    :goto_0
    return v1

    .line 636
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .locals 9
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_0
    if-gtz p2, :cond_1

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_1
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 318
    .local v0, "cache":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    iget-object v1, v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    :try_start_0
    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readJournal()V

    .line 321
    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->processJournal()V

    .line 322
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 341
    .end local v0    # "cache":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    .local v6, "cache":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 324
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v0    # "cache":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    :catch_0
    move-exception v8

    .line 328
    .local v8, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v8    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_2
    :goto_1
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;

    .end local v0    # "cache":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 338
    .restart local v0    # "cache":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;
    invoke-direct {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 341
    .restart local v6    # "cache":Ljava/lang/Object;
    goto :goto_0

    .line 329
    .end local v6    # "cache":Ljava/lang/Object;
    .restart local v8    # "journalIsCorrupt":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 330
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private declared-synchronized processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 428
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 430
    .local v0, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 431
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 432
    iget-wide v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    .end local v2    # "t":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .line 436
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 437
    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 438
    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 440
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 427
    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;>;"
    .end local v2    # "t":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 443
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;>;"
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v2, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 250
    .local v0, "c":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 251
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 252
    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 259
    .local v1, "length":I
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    .line 260
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 256
    .end local v1    # "length":I
    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 227
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v0, v3, [C

    .line 229
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v3

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object p0, v4, v5

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 235
    throw v3

    .line 232
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v2    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 234
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object p0, v4, v5

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 232
    return-object v3
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 365
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "magic":Ljava/lang/String;
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 367
    .local v6, "version":Ljava/lang/String;
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 371
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->appVersion:I

    .line 372
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    .line 373
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    .line 374
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 375
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    throw v7

    .line 381
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 387
    .local v2, "endOfJournal":Ljava/io/EOFException;
    invoke-static {v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 389
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 392
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 394
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 397
    :cond_0
    aget-object v1, v2, v8

    .line 398
    .local v1, "key":Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 399
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 404
    .local v0, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 405
    new-instance v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V

    .line 406
    .restart local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 410
    invoke-static {v0, v8}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$602(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Z)Z

    .line 411
    invoke-static {v0, v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    .line 412
    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$800(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 414
    new-instance v3, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V

    invoke-static {v0, v3}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$702(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    goto :goto_0

    .line 415
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 418
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    const/4 v1, 0x0

    .line 452
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 456
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 457
    .end local v1    # "writer":Ljava/io/Writer;
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 460
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 462
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 464
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 468
    .local v0, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :goto_1
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 476
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 450
    :catchall_1
    move-exception v3

    :goto_2
    monitor-exit p0

    throw v3

    .line 471
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1100(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 475
    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :cond_2
    const/4 v3, 0x1

    :try_start_4
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 478
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 479
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 480
    monitor-exit p0

    return-void

    .line 475
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :catchall_2
    move-exception v3

    goto :goto_1

    .line 450
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_2
.end method

.method private trimToSize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    :goto_0
    iget-wide v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 716
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 718
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 731
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 710
    :goto_0
    monitor-exit p0

    return-void

    .line 702
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 703
    .local v0, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 704
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 699
    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 707
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->trimToSize()V

    .line 708
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 709
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->close()V

    .line 727
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 728
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->checkNotClosed()V

    .line 691
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->trimToSize()V

    .line 692
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 488
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->checkNotClosed()V

    .line 489
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v8, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    if-nez v8, :cond_1

    .line 520
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 495
    :cond_1
    :try_start_1
    invoke-static {v8}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$600(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .local v6, "ins":[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_2
    iget v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v9, v2, :cond_2

    .line 507
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v6, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    .line 515
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 516
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 520
    :cond_3
    new-instance v1, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;

    invoke-static {v8}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1200(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Snapshot;-><init>(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 488
    .end local v6    # "ins":[Ljava/io/InputStream;
    .end local v8    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .end local v9    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 567
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->checkNotClosed()V

    .line 647
    invoke-direct {p0, p1}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;

    .line 649
    .local v0, "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$700(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 650
    :cond_0
    const/4 v3, 0x0

    .line 670
    :goto_0
    monitor-exit p0

    return v3

    .line 653
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 654
    invoke-virtual {v0, v2}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 655
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 656
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 646
    .end local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 658
    .restart local v0    # "entry":Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J

    .line 659
    invoke-static {v0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;->access$1000(Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 662
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    iget v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->redundantOpCount:I

    .line 663
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 664
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 667
    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 670
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/huanju/ssp/base/core/view/imageloader/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
