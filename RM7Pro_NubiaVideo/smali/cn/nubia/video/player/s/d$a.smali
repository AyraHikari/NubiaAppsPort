.class Lcn/nubia/video/player/s/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/nubia/video/player/s/d$a;->d:I

    .line 4
    iput v0, p0, Lcn/nubia/video/player/s/d$a;->e:I

    .line 5
    iput v0, p0, Lcn/nubia/video/player/s/d$a;->f:I

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcn/nubia/video/player/s/d$a;->g:J

    .line 7
    iput-object p1, p0, Lcn/nubia/video/player/s/d$a;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcn/nubia/video/player/s/d$a;->b:Landroid/net/Uri;

    .line 9
    invoke-static {p1, p2}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/s/d$a;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private h()I
    .locals 10

    const v0, -0x55c1aa49

    const/4 v1, 0x0

    const v2, -0x55c1aa48

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x18

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v4, v2, :cond_1

    if-ne v4, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    const-wide/16 v7, 0xc

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    iput v5, p0, Lcn/nubia/video/player/s/d$a;->d:I

    .line 8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    iput v5, p0, Lcn/nubia/video/player/s/d$a;->e:I

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 10
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcn/nubia/video/player/s/d$a;->g:J

    .line 12
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    iput v5, p0, Lcn/nubia/video/player/s/d$a;->d:I

    .line 13
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    iput v5, p0, Lcn/nubia/video/player/s/d$a;->e:I

    .line 14
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    iput v5, p0, Lcn/nubia/video/player/s/d$a;->f:I

    goto :goto_1

    :cond_2
    move v4, v1

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    move v4, v1

    .line 16
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-ne v4, v2, :cond_5

    const/4 v0, 0x2

    return v0

    :cond_5
    return v1
.end method


# virtual methods
.method public a()I
    .locals 9

    const-string v0, "PlayerManager"

    .line 1
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    .line 2
    iget-object v2, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 4
    new-instance v6, Lcn/nubia/video/player/s/d$a$a;

    invoke-direct {v6, p0, v1, v2}, Lcn/nubia/video/player/s/d$a$a;-><init>(Lcn/nubia/video/player/s/d$a;Landroid/media/MediaExtractor;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    const-wide/16 v6, 0x190

    .line 5
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 7
    invoke-virtual {v1, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string v7, "mime"

    .line 8
    invoke-virtual {v6, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video/"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    move v3, v0

    .line 10
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 11
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "str:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is error. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 12
    iget-object v0, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract time out:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    return v3

    .line 14
    :goto_4
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 15
    throw v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/d$a;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/d$a;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/player/s/d$a;->d:I

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/d$a;->a:Landroid/content/Context;

    const-string v1, "player_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/nubia/video/player/s/d$a;->g:J

    return-wide v0
.end method

.method public g()Lcn/nubia/video/player/s/d$b;
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    .line 3
    new-instance v1, Lcn/nubia/video/player/s/d$b;

    invoke-direct {v1}, Lcn/nubia/video/player/s/d$b;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getFrameRate()I

    move-result v2

    iput v2, v1, Lcn/nubia/video/player/s/d$b;->a:I

    .line 5
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getDegrees()I

    move-result v2

    iput v2, v1, Lcn/nubia/video/player/s/d$b;->b:I

    .line 6
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    return-object v1
.end method

.method public i()Z
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/s/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/s/d$a;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/d/e;->T(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k(I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/s/d$a;->h()I

    move-result p1

    return p1
.end method
