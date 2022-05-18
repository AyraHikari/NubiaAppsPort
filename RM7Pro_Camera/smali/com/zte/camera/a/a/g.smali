.class public Lcom/zte/camera/a/a/g;
.super Lcom/zte/camera/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/a/a/g$a;,
        Lcom/zte/camera/a/a/g$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "g"

.field private static b:I = 0x3f4800


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/media/MediaExtractor;

.field private f:Lcom/zte/camera/a/a/f;

.field private g:Lcom/zte/camera/a/a/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lcom/zte/camera/a/a/d$a;

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/HandlerThread;

.field private p:Lcom/zte/camera/a/a/g$b;

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Landroid/net/Uri;

.field private u:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 82
    invoke-direct {p0}, Lcom/zte/camera/a/a/c;-><init>()V

    const v0, 0x3f4800

    .line 47
    iput v0, p0, Lcom/zte/camera/a/a/g;->c:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    .line 51
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    .line 53
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    .line 54
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/zte/camera/a/a/g;->m:I

    .line 62
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    .line 63
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->o:Landroid/os/HandlerThread;

    .line 64
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->p:Lcom/zte/camera/a/a/g$b;

    .line 65
    iput-boolean v1, p0, Lcom/zte/camera/a/a/g;->q:Z

    const/16 v2, 0x64

    .line 68
    iput v2, p0, Lcom/zte/camera/a/a/g;->r:I

    .line 70
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    .line 83
    sget-object v0, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v3, "create VlogVideoAndAudioExport"

    invoke-static {v0, v3}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 84
    iput-wide v3, p0, Lcom/zte/camera/a/a/g;->i:J

    .line 85
    iput-wide v3, p0, Lcom/zte/camera/a/a/g;->j:J

    .line 86
    iput-boolean v1, p0, Lcom/zte/camera/a/a/g;->q:Z

    .line 87
    iput v2, p0, Lcom/zte/camera/a/a/g;->r:I

    .line 89
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->o:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "export"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/g;->o:Landroid/os/HandlerThread;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Lcom/zte/camera/a/a/g$a;

    iget-object v2, p0, Lcom/zte/camera/a/a/g;->o:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/zte/camera/a/a/g$a;-><init>(Lcom/zte/camera/a/a/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    .line 95
    iput-boolean v1, p0, Lcom/zte/camera/a/a/g;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/g;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/zte/camera/a/a/g;->m:I

    return p1
.end method

.method private a(Lcom/zte/camera/a/a/d$a;)Landroid/net/Uri;
    .locals 11

    const-string v0, "vlog video URI: "

    .line 523
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->l:Lcom/zte/camera/a/a/d$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 527
    :cond_0
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->b()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->c()J

    move-result-wide v5

    .line 530
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->d()Ljava/lang/String;

    move-result-object v7

    .line 531
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->e()I

    move-result v8

    .line 532
    invoke-virtual {p1}, Lcom/zte/camera/a/a/d$a;->f()I

    move-result p1

    .line 534
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 535
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v10, "is_pending"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    .line 536
    invoke-virtual {v9, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 537
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "datetaken"

    invoke-virtual {v9, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 539
    invoke-static {v7}, Lcom/zte/camera/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "relative_path"

    invoke-virtual {v9, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v3, "video/mp4"

    .line 540
    invoke-virtual {v9, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "width"

    invoke-virtual {v9, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "height"

    invoke-virtual {v9, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "resolution"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "content://media/external/video/media"

    .line 547
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 548
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    sget-object p1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 550
    :try_start_1
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v3, "failed to add video to media store:"

    invoke-static {v1, v3, p1}, Lcom/zte/camera/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :goto_1
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    throw p1

    .line 524
    :cond_1
    :goto_2
    sget-object p1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructVideoValues mAttr null("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/camera/a/a/g;->l:Lcom/zte/camera/a/a/d$a;

    const/4 v4, 0x0

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") error or context null("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    move v3, v4

    :cond_4
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic a(Lcom/zte/camera/a/a/g;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/zte/camera/a/a/g;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zte/camera/a/a/g;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->h()V

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 592
    sget-object p1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete dst uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/zte/camera/a/a/g;Ljava/lang/String;Z)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/a/a/g;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 8

    const-string p2, "mime"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 310
    sget-object p1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string p2, "videoPath is null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->d()V

    return v0

    .line 315
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    sget-object p2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mp4 file is not exist ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->d()V

    return v0

    .line 323
    :cond_1
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    .line 326
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 330
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_5

    .line 333
    iget-object v5, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 334
    invoke-virtual {v5, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    .line 336
    :try_start_2
    invoke-virtual {v5, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "video/hevc"

    .line 337
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 338
    iput-boolean v4, p0, Lcom/zte/camera/a/a/g;->s:Z

    goto :goto_1

    .line 340
    :cond_2
    iput-boolean v0, p0, Lcom/zte/camera/a/a/g;->s:Z

    :goto_1
    const-string p2, "width"

    const/16 v1, 0x2d0

    .line 342
    invoke-virtual {v5, p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "height"

    const/16 v6, 0x500

    .line 343
    invoke-virtual {v5, v1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-le p2, v4, :cond_3

    if-le v1, v4, :cond_3

    mul-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 345
    iput p2, p0, Lcom/zte/camera/a/a/g;->c:I

    goto :goto_2

    .line 347
    :cond_3
    sget p2, Lcom/zte/camera/a/a/g;->b:I

    iput p2, p0, Lcom/zte/camera/a/a/g;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 350
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    sget p2, Lcom/zte/camera/a/a/g;->b:I

    iput p2, p0, Lcom/zte/camera/a/a/g;->c:I

    .line 353
    :goto_2
    iget-object p2, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {p2, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 354
    iget-object p2, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    invoke-virtual {p2, v5}, Lcom/zte/camera/a/a/a;->a(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 355
    iget-object p2, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    invoke-virtual {p2}, Lcom/zte/camera/a/a/a;->c()V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v4, v0

    :goto_3
    if-nez v4, :cond_6

    .line 361
    sget-object p2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this mp4 is empty getVideoTrack fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->d()V

    .line 363
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v0

    .line 367
    :cond_6
    :try_start_5
    sget-object p2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extract file= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/zte/camera/a/a/g;->a()Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    .line 382
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_7

    :catch_3
    move-exception p2

    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p2

    .line 374
    :goto_5
    :try_start_7
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoTrack fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_7

    .line 380
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 387
    :cond_7
    :goto_6
    sget-object p2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extract file result=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",file ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_7
    if-eqz v2, :cond_8

    .line 380
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception p2

    .line 382
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    :cond_8
    :goto_8
    throw p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/zte/camera/a/a/g;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/zte/camera/a/a/g;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/zte/camera/a/a/g;->m:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->f()V

    const/4 v0, 0x1

    .line 251
    invoke-direct {p0, v0}, Lcom/zte/camera/a/a/g;->a(Z)V

    .line 252
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->p:Lcom/zte/camera/a/a/g$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 253
    invoke-interface {v0, v1}, Lcom/zte/camera/a/a/g$b;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/a;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 284
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Lcom/zte/camera/a/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    sget-object v0, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v5, "muxer hasnot start"

    invoke-static {v0, v5}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, v4}, Lcom/zte/camera/a/a/a;->a(Z)V

    .line 289
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    invoke-virtual {v0}, Lcom/zte/camera/a/a/a;->g()V

    .line 291
    :cond_0
    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v1, "muxer start"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iput-boolean v4, p0, Lcom/zte/camera/a/a/g;->q:Z

    .line 295
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v0, v4}, Lcom/zte/camera/a/a/a;->a(Z)V

    :cond_2
    const/4 v0, 0x3

    .line 298
    invoke-virtual {p0, v0, v2, v3}, Lcom/zte/camera/a/a/g;->a(IJ)V

    goto :goto_0

    .line 301
    :cond_3
    iput-boolean v4, p0, Lcom/zte/camera/a/a/g;->q:Z

    .line 302
    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/camera/a/a/g;->a(IJ)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/zte/camera/a/a/g;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->f()V

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 489
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 490
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Lcom/zte/camera/a/a/a;->d()V

    :cond_1
    const-wide/16 v1, 0x0

    .line 495
    iput-wide v1, p0, Lcom/zte/camera/a/a/g;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 497
    sget-object v2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseAll fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->u:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    .line 503
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 505
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 507
    :goto_1
    iput-object v0, p0, Lcom/zte/camera/a/a/g;->u:Landroid/os/ParcelFileDescriptor;

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/zte/camera/a/a/g;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/zte/camera/a/a/g;->q:Z

    return p0
.end method

.method private g()V
    .locals 4

    .line 559
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 560
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic g(Lcom/zte/camera/a/a/g;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->h()V

    return-void
.end method

.method private h()V
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    sget-object v0, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file is not exsit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 580
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    .line 581
    sget-object v3, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/zte/camera/a/a/g;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->g()V

    return-void
.end method

.method static synthetic i(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/g$b;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->p:Lcom/zte/camera/a/a/g$b;

    return-object p0
.end method

.method static synthetic j(Lcom/zte/camera/a/a/g;)Landroid/net/Uri;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic k(Lcom/zte/camera/a/a/g;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->c()V

    return-void
.end method

.method static synthetic l(Lcom/zte/camera/a/a/g;)Lcom/zte/camera/a/a/f;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    return-object p0
.end method

.method static synthetic m(Lcom/zte/camera/a/a/g;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/zte/camera/a/a/g;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/zte/camera/a/a/g;->m:I

    return v0
.end method

.method static synthetic n(Lcom/zte/camera/a/a/g;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->d()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    iget-object v0, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 568
    iput p1, v0, Landroid/os/Message;->what:I

    .line 569
    iget-object p1, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    const/4 v0, 0x4

    .line 100
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/camera/a/a/g;->a(IJ)V

    return-void
.end method

.method public a(Lcom/zte/camera/a/a/g$b;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/zte/camera/a/a/g;->p:Lcom/zte/camera/a/a/g$b;

    return-void
.end method

.method public a(Ljava/util/List;Lcom/zte/camera/a/a/d$a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zte/camera/a/a/d$a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 512
    iput-object p3, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    .line 513
    iput-object p1, p0, Lcom/zte/camera/a/a/g;->h:Ljava/util/List;

    .line 514
    iput-object p4, p0, Lcom/zte/camera/a/a/g;->k:Ljava/lang/String;

    .line 515
    iput-object p2, p0, Lcom/zte/camera/a/a/g;->l:Lcom/zte/camera/a/a/d$a;

    .line 517
    iget-object p1, p0, Lcom/zte/camera/a/a/g;->n:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 518
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 12

    const/4 v0, 0x1

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    invoke-virtual {v1}, Lcom/zte/camera/a/a/f;->b()Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 405
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v5, "exportAudioAndVideo is not ready!"

    invoke-static {v1, v5}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget v1, p0, Lcom/zte/camera/a/a/g;->r:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/zte/camera/a/a/g;->r:I

    if-gez v1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->e()V

    const/4 v1, 0x7

    .line 410
    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/camera/a/a/g;->a(IJ)V

    return v4

    :cond_0
    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    .line 413
    invoke-virtual {p0, v1, v2, v3}, Lcom/zte/camera/a/a/g;->a(IJ)V

    return v4

    .line 419
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 420
    iput-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 421
    iget v5, p0, Lcom/zte/camera/a/a/g;->c:I

    if-ge v5, v0, :cond_2

    .line 422
    sget v5, Lcom/zte/camera/a/a/g;->b:I

    iput v5, p0, Lcom/zte/camera/a/a/g;->c:I

    .line 424
    :cond_2
    iget v5, p0, Lcom/zte/camera/a/a/g;->c:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v4

    .line 432
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v5, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-gez v7, :cond_3

    .line 441
    :try_start_2
    iget-wide v1, p0, Lcom/zte/camera/a/a/g;->j:J

    const-wide/32 v3, 0x8214

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/zte/camera/a/a/g;->i:J

    .line 442
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ptsOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/zte/camera/a/a/g;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->e()V

    goto/16 :goto_3

    .line 446
    :cond_3
    iput v4, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 447
    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 448
    iget-object v8, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    int-to-long v10, v6

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 449
    iget-wide v8, p0, Lcom/zte/camera/a/a/g;->i:J

    add-long/2addr v8, v2

    iput-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 451
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, p0, Lcom/zte/camera/a/a/g;->j:J

    .line 454
    iget-boolean v8, p0, Lcom/zte/camera/a/a/g;->s:Z

    if-eqz v8, :cond_4

    .line 455
    invoke-static {v5, v7}, Lcom/zte/camera/d/b;->b(Ljava/nio/ByteBuffer;I)Z

    move-result v7

    goto :goto_1

    .line 457
    :cond_4
    invoke-static {v5, v7}, Lcom/zte/camera/d/b;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    move v7, v4

    .line 459
    :goto_2
    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 460
    sget-object v7, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "write video data: info.presentationTimeUs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", info.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " info.flag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v7, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    invoke-virtual {v7, v5, v1}, Lcom/zte/camera/a/a/f;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 463
    iget-object v7, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_0

    :catch_0
    move-exception v7

    .line 434
    sget-object v8, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v9, "exportAudioAndVideo getsample fail"

    invoke-static {v8, v9}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    iget-object v7, p0, Lcom/zte/camera/a/a/g;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const v7, 0x8214

    add-int/2addr v6, v7

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 467
    sget-object v2, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exportAudioAndVideo fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0
.end method

.method public a(I)Z
    .locals 10

    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->l:Lcom/zte/camera/a/a/d$a;

    invoke-direct {p0, v1}, Lcom/zte/camera/a/a/g;->a(Lcom/zte/camera/a/a/d$a;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    .line 261
    iget-object v1, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/zte/camera/d/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/camera/a/a/g;->u:Landroid/os/ParcelFileDescriptor;

    .line 262
    iget-object v2, p0, Lcom/zte/camera/a/a/g;->t:Landroid/net/Uri;

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Lcom/zte/camera/a/a/f;

    iget-object v2, p0, Lcom/zte/camera/a/a/g;->u:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zte/camera/a/a/f;-><init>(Ljava/io/FileDescriptor;Z)V

    iput-object v1, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    const/4 v2, 0x1

    .line 268
    invoke-virtual {v1, v2}, Lcom/zte/camera/a/a/f;->a(Z)V

    .line 270
    new-instance v1, Lcom/zte/camera/a/a/a;

    iget-object v3, p0, Lcom/zte/camera/a/a/g;->f:Lcom/zte/camera/a/a/f;

    invoke-direct {v1, v3, v0, p0}, Lcom/zte/camera/a/a/a;-><init>(Lcom/zte/camera/a/a/f;ZLcom/zte/camera/a/a/c;)V

    iput-object v1, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    .line 271
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->e(I)I

    move-result v1

    int-to-long v8, v1

    .line 272
    iget-object v3, p0, Lcom/zte/camera/a/a/g;->g:Lcom/zte/camera/a/a/a;

    iget-object v4, p0, Lcom/zte/camera/a/a/g;->d:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/zte/camera/a/a/a;->b(Landroid/content/Context;IIIJ)V

    return v2

    .line 263
    :cond_1
    :goto_0
    sget-object p1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    const-string v1, "create Uri or FileDescriptor fail"

    invoke-static {p1, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 276
    sget-object v1, Lcom/zte/camera/a/a/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVlogVideoAndAudioExport error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/zte/camera/a/a/g;->d()V

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
