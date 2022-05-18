.class public final Lcn/nubia/music/app/cache/MusicDiskLruCache;
.super Ljava/lang/Object;
.source "MusicDiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;,
        Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;,
        Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
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
            "Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;",
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
    .line 46
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 59
    iput-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->nextSequenceNumber:J

    .line 61
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$1;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 158
    iput-object p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->directory:Ljava/io/File;

    .line 159
    iput p2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->appVersion:I

    .line 160
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    .line 161
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 162
    iput p3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    .line 163
    iput-wide p4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->maxSize:J

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/app/cache/MusicDiskLruCache;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->completeEdit(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/app/cache/MusicDiskLruCache;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcn/nubia/music/app/cache/MusicDiskLruCache;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2100(Lcn/nubia/music/app/cache/MusicDiskLruCache;)Ljava/io/File;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2200(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->edit(Ljava/lang/String;J)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/music/app/cache/MusicDiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/music/app/cache/MusicDiskLruCache;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 131
    if-eqz p0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    throw v0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 374
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->access$1400(Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    move-result-object v2

    .line 375
    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$600(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 380
    :goto_0
    iget v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_2

    .line 381
    invoke-virtual {v2, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 382
    invoke-virtual {p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->abort()V

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit didn\'t create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_2
    :goto_1
    iget v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_5

    .line 389
    invoke-virtual {v2, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 390
    if-eqz p2, :cond_4

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-virtual {v2, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 393
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 394
    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1000(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 395
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 396
    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1000(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 397
    iget-wide v8, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    .line 388
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    :cond_4
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 405
    :cond_5
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    .line 406
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$702(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    .line 407
    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$600(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 408
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$602(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Z)Z

    .line 409
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    if-eqz p2, :cond_6

    .line 411
    iget-wide v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1202(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;J)J

    .line 418
    :cond_6
    :goto_3
    iget-wide v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    iget-wide v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 419
    :cond_7
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :cond_8
    monitor-exit p0

    return-void

    .line 414
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    array-length v0, p0

    .line 81
    if-le p1, p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 84
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_2
    sub-int v1, p2, p1

    .line 88
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 91
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    return-object v0
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 143
    if-nez v1, :cond_1

    .line 155
    :cond_0
    return-void

    .line 147
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    invoke-static {v3}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 151
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->checkNotClosed()V

    .line 340
    invoke-direct {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 342
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 343
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1200(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 358
    :goto_0
    monitor-exit p0

    return-object v0

    .line 346
    :cond_1
    if-nez v0, :cond_2

    .line 347
    :try_start_1
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V

    .line 348
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 353
    :goto_1
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V

    .line 354
    invoke-static {v1, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$702(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    .line 356
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 350
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcn/nubia/music/app/cache/MusicDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcn/nubia/music/app/cache/MusicDiskLruCache;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    if-gtz p2, :cond_1

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/app/cache/MusicDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 176
    iget-object v1, v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    :try_start_0
    invoke-direct {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readJournal()V

    .line 179
    invoke-direct {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->processJournal()V

    .line 180
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->delete()V

    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 190
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/app/cache/MusicDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 191
    invoke-direct {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->rebuildJournal()V

    goto :goto_0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 252
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 254
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 255
    :goto_1
    iget v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_0

    .line 256
    iget-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1000(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$702(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move v1, v2

    .line 260
    :goto_2
    iget v4, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_2

    .line 261
    invoke-virtual {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 262
    invoke-virtual {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 267
    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 115
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 116
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 118
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 124
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 125
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 127
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_2
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 98
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 100
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 104
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 105
    return-object v0
.end method

.method private readJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 198
    :try_start_0
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 203
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->appVersion:I

    .line 204
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 206
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 212
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 217
    invoke-static {v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 219
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 222
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 223
    array-length v0, v1

    if-ge v0, v4, :cond_0

    .line 224
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    aget-object v2, v1, v7

    .line 228
    aget-object v0, v1, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v1

    if-ne v0, v4, :cond_2

    .line 229
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 234
    if-nez v0, :cond_3

    .line 235
    new-instance v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    invoke-direct {v0, p0, v2, v6}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V

    .line 236
    iget-object v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_3
    aget-object v2, v1, v5

    const-string v3, "CLEAN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    array-length v2, v1

    iget v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    add-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_4

    .line 240
    invoke-static {v0, v7}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$602(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Z)Z

    .line 241
    invoke-static {v0, v6}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$702(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    .line 242
    array-length v2, v1

    invoke-static {v1, v4, v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->copyOfRange([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$800(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_4
    aget-object v2, v1, v5

    const-string v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, v1

    if-ne v2, v4, :cond_5

    .line 244
    new-instance v1, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V

    invoke-static {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$702(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    goto :goto_0

    .line 245
    :cond_5
    aget-object v0, v1, v5

    const-string v2, "READ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, v1

    if-eq v0, v4, :cond_1

    .line 246
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 274
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 275
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 276
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 278
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 280
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 282
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 283
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 286
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1100(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 294
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 295
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    :goto_0
    iget-wide v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    iget-wide v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 491
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 499
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

    .line 500
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

    .line 503
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
    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 477
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 478
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 481
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->trimToSize()V

    .line 482
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;
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
    .line 494
    invoke-virtual {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->close()V

    .line 495
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 496
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->edit(Ljava/lang/String;J)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;

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
    .line 467
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->checkNotClosed()V

    .line 468
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->trimToSize()V

    .line 469
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->checkNotClosed()V

    .line 306
    invoke-direct {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 312
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$600(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget v3, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 319
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    :cond_2
    :try_start_3
    iget v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    .line 326
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

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

    .line 327
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 331
    :cond_3
    new-instance v1, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1200(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Snapshot;-><init>(Lcn/nubia/music/app/cache/MusicDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcn/nubia/music/app/cache/MusicDiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 366
    iget-wide v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 429
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->checkNotClosed()V

    .line 430
    invoke-direct {p0, p1}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;

    .line 432
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$700(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)Lcn/nubia/music/app/cache/MusicDiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 453
    :goto_0
    monitor-exit p0

    return v0

    .line 441
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1000(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J

    .line 442
    invoke-static {v0}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->access$1000(Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 436
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 437
    invoke-virtual {v0, v1}, Lcn/nubia/music/app/cache/MusicDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 445
    :cond_3
    :try_start_2
    iget v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->redundantOpCount:I

    .line 446
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 447
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-direct {p0}, Lcn/nubia/music/app/cache/MusicDiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    iget-object v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcn/nubia/music/app/cache/MusicDiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
