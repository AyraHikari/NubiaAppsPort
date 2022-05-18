.class public Lcn/nubia/video/player/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcn/nubia/video/player/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->d:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/nubia/video/player/g;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcn/nubia/video/player/g;->f:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->g:Z

    .line 6
    iput-object p1, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/player/g;->d:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/video/player/g;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/g;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/player/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/g;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/video/player/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/player/g;->c:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/video/player/g;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/g;->l(I)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/video/player/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/g;->s()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/video/player/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/video/player/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/g;->q()V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g;->i:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1400

    new-array v4, v4, [B

    .line 6
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 9
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    .line 10
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 11
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/g;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/b/d/e;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/g;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x64000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lcn/nubia/video/player/g;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private l(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method private m(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz v0, :cond_1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private n(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/video/player/g;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private o()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/g;->i(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/video/player/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[\\s-:]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/g;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    const v1, 0x7f0f00e9

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->d:Z

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->f:Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/g;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    const v1, 0x7f0f00ef

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->d:Z

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/g;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    const v1, 0x7f0f00f1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/g;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    const v1, 0x7f0f00f0

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->g(I)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    new-instance v0, Lcn/nubia/video/player/g$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/g$a;-><init>(Lcn/nubia/video/player/g;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/g;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/g;->q()V

    return-void

    .line 3
    :cond_0
    iput-object v0, p0, Lcn/nubia/video/player/g;->e:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/g;->v()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/g;->g:Z

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/video/player/g;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public u(Landroid/net/Uri;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/player/p;

    iget-object v1, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/g;->j:Lcn/nubia/video/player/p;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/b/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/g;->r()V

    return-void

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/video/player/g;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/player/g;->i:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Pictures/Screenshots/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/player/g;->h:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/video/player/g;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/g;->n(Landroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/video/player/g;->f:Z

    .line 12
    iput-object p1, p0, Lcn/nubia/video/player/g;->b:Landroid/net/Uri;

    .line 13
    iput p2, p0, Lcn/nubia/video/player/g;->c:I

    .line 14
    iget-boolean p1, p0, Lcn/nubia/video/player/g;->d:Z

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 15
    invoke-direct {p0}, Lcn/nubia/video/player/g;->w()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/player/g;->q()V

    goto :goto_0

    .line 17
    :cond_4
    invoke-direct {p0}, Lcn/nubia/video/player/g;->t()V

    :goto_0
    return-void
.end method
