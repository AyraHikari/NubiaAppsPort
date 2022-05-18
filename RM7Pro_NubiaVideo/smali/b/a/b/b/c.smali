.class public Lb/a/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/b/c$b;
    }
.end annotation


# instance fields
.field private a:Lb/a/b/b/a;

.field private b:Landroid/net/Uri;

.field private c:Landroid/content/Context;

.field private d:Lb/a/b/b/c$b;

.field private e:Lb/a/b/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lb/a/b/b/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    .line 3
    iput-object p1, p0, Lb/a/b/b/c;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lb/a/b/b/c;->b:Landroid/net/Uri;

    .line 5
    iput-object p3, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    return-void
.end method

.method static synthetic a(Lb/a/b/b/c;)Lb/a/b/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/b/c;->a:Lb/a/b/b/a;

    return-object p0
.end method

.method static synthetic b(Lb/a/b/b/c;)Lb/a/b/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    return-object p0
.end method

.method static synthetic c(Lb/a/b/b/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/b/c;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lb/a/b/b/c;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/b/c;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic e(Lb/a/b/b/c;)Lb/a/b/b/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    return-object p0
.end method

.method static synthetic f(Lb/a/b/b/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/b/c;->g(Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private h(Ljava/lang/String;)J
    .locals 5

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p1

    mul-long/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception p1

    const-string v0, "VideoTrim"

    const-string v1, "Fail to access sd storage"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private i(Ljava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    iget v2, v2, Lb/a/b/b/d;->f:I

    if-lez v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lb/a/b/b/c;->h(Ljava/lang/String;)J

    move-result-wide v2

    .line 5
    iget-object p1, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    iget-wide v4, p1, Lb/a/b/b/d;->b:J

    iget-wide v6, p1, Lb/a/b/b/d;->a:J

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget p1, p1, Lb/a/b/b/d;->f:I

    int-to-long v4, p1

    div-long/2addr v0, v4

    const-wide/32 v4, 0x200000

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private j(III)Z
    .locals 2

    if-le p3, p2, :cond_2

    .line 1
    iget-object v0, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    iget-boolean v0, v0, Lb/a/b/b/d;->c:Z

    if-nez v0, :cond_0

    sub-int v1, p3, p2

    if-lt v1, p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    sub-int/2addr p3, p2

    if-gt p3, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public k(Lb/a/b/b/c$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lb/a/b/b/c;->e:Lb/a/b/b/d;

    iget v1, v0, Lb/a/b/b/d;->f:I

    .line 2
    iget-wide v2, v0, Lb/a/b/b/d;->a:J

    long-to-int v7, v2

    .line 3
    iget-wide v2, v0, Lb/a/b/b/d;->b:J

    long-to-int v8, v2

    .line 4
    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, v1, v7, v8}, Lb/a/b/b/c;->j(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lb/a/b/b/c$b;->a(I)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lb/a/b/b/c;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lb/a/b/b/c;->b:Landroid/net/Uri;

    iget-object v2, p0, Lb/a/b/b/c;->c:Landroid/content/Context;

    const v3, 0x7f0f0054

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'TRIM\'_yyyyMMdd_HHmmss"

    .line 10
    invoke-static {v3, v0, v1, v2}, Lb/a/b/b/b;->a(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lb/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/b/c;->a:Lb/a/b/b/a;

    .line 11
    iget-object v0, p0, Lb/a/b/b/c;->c:Landroid/content/Context;

    iget-object v1, p0, Lb/a/b/b/c;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 12
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, v10}, Lb/a/b/b/c;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object p1, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    const/16 v0, 0x3ed

    invoke-interface {p1, v0}, Lb/a/b/b/c$b;->a(I)V

    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lb/a/b/b/c;->d:Lb/a/b/b/c$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lb/a/b/b/c$b;->c(I)V

    .line 16
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lb/a/b/b/c$a;

    move-object v4, v1

    move-object v5, p0

    move v9, p1

    invoke-direct/range {v4 .. v10}, Lb/a/b/b/c$a;-><init>(Lb/a/b/b/c;Ljava/io/File;IIILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
