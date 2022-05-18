.class public Lc/d/a/a/a/b/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/a/a;


# static fields
.field public static final f:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected a:Lc/d/a/a/a/b/c/a;

.field protected final b:Lc/d/a/a/a/c/a;

.field protected c:I

.field protected d:Landroid/graphics/Bitmap$CompressFormat;

.field protected e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lc/d/a/a/a/b/c/b;->f:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lc/d/a/a/a/c/a;JI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lc/d/a/a/a/b/c/b;->c:I

    sget-object v0, Lc/d/a/a/a/b/c/b;->f:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lc/d/a/a/a/b/c/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lc/d/a/a/a/b/c/b;->e:I

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    if-ltz p6, :cond_3

    if-eqz p3, :cond_2

    if-nez v0, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    move-wide v3, p4

    if-nez p6, :cond_1

    const p6, 0x7fffffff

    :cond_1
    move v5, p6

    iput-object p3, p0, Lc/d/a/a/a/b/c/b;->b:Lc/d/a/a/a/c/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lc/d/a/a/a/b/c/b;->e(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/a/a/a/b/c/b;->b:Lc/d/a/a/a/c/a;

    invoke-interface {v0, p1}, Lc/d/a/a/a/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/io/File;Ljava/io/File;JI)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v5}, Lc/d/a/a/a/b/c/a;->s(Ljava/io/File;IIJI)Lc/d/a/a/a/b/c/a;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lc/d/a/a/a/b/c/b;->e(Ljava/io/File;Ljava/io/File;JI)V

    :cond_0
    iget-object p2, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/d/a/a/a/b/c/a;->q(Ljava/lang/String;)Lc/d/a/a/a/b/c/a$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Lc/d/a/a/a/b/c/a$e;->a(I)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$e;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-static {v1}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$e;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$e;->close()V

    :cond_3
    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;Lc/d/a/c/b$a;)Z
    .locals 3

    iget-object v0, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/a/a/b/c/a;->o(Ljava/lang/String;)Lc/d/a/a/a/b/c/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lc/d/a/a/a/b/c/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lc/d/a/a/a/b/c/b;->c:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget v0, p0, Lc/d/a/a/a/b/c/b;->c:I

    invoke-static {p2, v1, p3, v0}, Lc/d/a/c/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lc/d/a/c/b$a;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->a()V

    throw p2
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v0, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/a/a/b/c/a;->o(Ljava/lang/String;)Lc/d/a/a/a/b/c/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lc/d/a/a/a/b/c/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lc/d/a/a/a/b/c/b;->c:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget-object v0, p0, Lc/d/a/a/a/b/c/b;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lc/d/a/a/a/b/c/b;->e:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lc/d/a/c/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    invoke-virtual {v0}, Lc/d/a/a/a/b/c/a;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/a/a/b/c/b;->a:Lc/d/a/a/a/b/c/a;

    return-void
.end method
