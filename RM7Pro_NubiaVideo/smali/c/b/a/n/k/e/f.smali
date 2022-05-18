.class public abstract Lc/b/a/n/k/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/k/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/k/e/a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/b/a/n/k/e/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/b/a/n/k/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lc/b/a/n/k/e/l$a;->c:Lc/b/a/n/k/e/l$a;

    sget-object v1, Lc/b/a/n/k/e/l$a;->d:Lc/b/a/n/k/e/l$a;

    sget-object v2, Lc/b/a/n/k/e/l$a;->e:Lc/b/a/n/k/e/l$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lc/b/a/n/k/e/f;->a:Ljava/util/Set;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lc/b/a/t/h;->c(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lc/b/a/n/k/e/f;->b:Ljava/util/Queue;

    .line 3
    new-instance v0, Lc/b/a/n/k/e/f$a;

    invoke-direct {v0}, Lc/b/a/n/k/e/f$a;-><init>()V

    sput-object v0, Lc/b/a/n/k/e/f;->c:Lc/b/a/n/k/e/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x500000

    .line 2
    invoke-virtual {p0, p1}, Lc/b/a/t/f;->mark(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lc/b/a/n/k/e/o;->b()V

    :goto_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    :try_start_0
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lc/b/a/t/f;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x6

    const-string v1, "Downsampler"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception loading inDecodeBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sample="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object p1
.end method

.method private c(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;Lc/b/a/n/i/m/c;IIILc/b/a/n/a;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-static {p1, p8}, Lc/b/a/n/k/e/f;->d(Ljava/io/InputStream;Lc/b/a/n/a;)Landroid/graphics/Bitmap$Config;

    move-result-object p8

    .line 2
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3
    iput-object p8, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    if-eq p7, v0, :cond_0

    const/16 v0, 0x13

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lc/b/a/n/k/e/f;->l(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-double v0, p5

    int-to-double v2, p7

    div-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    int-to-double p6, p6

    div-double/2addr p6, v2

    .line 6
    invoke-static {p6, p7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p6

    double-to-int p6, p6

    .line 7
    invoke-interface {p4, p5, p6, p8}, Lc/b/a/n/i/m/c;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p3, p4}, Lc/b/a/n/k/e/f;->k(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 8
    :cond_1
    invoke-static {p1, p2, p3}, Lc/b/a/n/k/e/f;->b(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static d(Ljava/io/InputStream;Lc/b/a/n/a;)Landroid/graphics/Bitmap$Config;
    .locals 7

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 1
    sget-object v2, Lc/b/a/n/a;->a:Lc/b/a/n/a;

    if-eq p1, v2, :cond_5

    sget-object v2, Lc/b/a/n/a;->b:Lc/b/a/n/a;

    if-eq p1, v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x400

    .line 2
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    const/4 v3, 0x5

    .line 3
    :try_start_0
    new-instance v4, Lc/b/a/n/k/e/l;

    invoke-direct {v4, p0}, Lc/b/a/n/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lc/b/a/n/k/e/l;->f()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 5
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    :goto_0
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 7
    :try_start_2
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 10
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 11
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_2
    return-object p0

    .line 12
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 13
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_4
    :goto_4
    throw p1

    .line 16
    :cond_5
    :goto_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static declared-synchronized e()Landroid/graphics/BitmapFactory$Options;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lc/b/a/n/k/e/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lc/b/a/n/k/e/f;->b:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 4
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5
    invoke-static {v2}, Lc/b/a/n/k/e/f;->j(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    .line 7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g(IIIII)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_0

    move p5, p3

    :cond_0
    if-ne p4, v0, :cond_1

    move p4, p2

    :cond_1
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lc/b/a/n/k/e/f;->h(IIII)I

    move-result p1

    goto :goto_1

    .line 2
    :cond_3
    :goto_0
    invoke-virtual {p0, p3, p2, p4, p5}, Lc/b/a/n/k/e/f;->h(IIII)I

    move-result p1

    :goto_1
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 3
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    :goto_2
    const/4 p2, 0x1

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private static i(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lc/b/a/n/k/e/f;->j(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    sget-object v0, Lc/b/a/n/k/e/f;->b:Ljava/util/Queue;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static j(Landroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 9
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v3, v1, :cond_0

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-void
.end method

.method private static k(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    .line 2
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private static l(Ljava/io/InputStream;)Z
    .locals 5

    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    .line 1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v2, 0x400

    .line 2
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x5

    .line 3
    :try_start_0
    new-instance v3, Lc/b/a/n/k/e/l;

    invoke-direct {v3, p0}, Lc/b/a/n/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lc/b/a/n/k/e/l;->d()Lc/b/a/n/k/e/l$a;

    move-result-object v3

    .line 4
    sget-object v4, Lc/b/a/n/k/e/f;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 8
    :try_start_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Cannot determine the image type from header"

    .line 9
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 11
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    .line 13
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :cond_4
    :goto_3
    throw v3
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lc/b/a/n/i/m/c;IILc/b/a/n/a;)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v10, p2

    const-string v1, "Cannot reset the input stream"

    const-string v2, "Downsampler"

    .line 1
    invoke-static {}, Lc/b/a/t/a;->a()Lc/b/a/t/a;

    move-result-object v11

    .line 2
    invoke-virtual {v11}, Lc/b/a/t/a;->b()[B

    move-result-object v12

    .line 3
    invoke-virtual {v11}, Lc/b/a/t/a;->b()[B

    move-result-object v13

    .line 4
    invoke-static {}, Lc/b/a/n/k/e/f;->e()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 5
    new-instance v3, Lc/b/a/n/k/e/o;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Lc/b/a/n/k/e/o;-><init>(Ljava/io/InputStream;[B)V

    .line 6
    invoke-static {v3}, Lc/b/a/t/c;->b(Ljava/io/InputStream;)Lc/b/a/t/c;

    move-result-object v15

    .line 7
    new-instance v4, Lc/b/a/t/f;

    invoke-direct {v4, v15}, Lc/b/a/t/f;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, 0x500000

    .line 8
    :try_start_0
    invoke-virtual {v15, v0}, Lc/b/a/t/c;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 9
    :try_start_1
    new-instance v0, Lc/b/a/n/k/e/l;

    invoke-direct {v0, v15}, Lc/b/a/n/k/e/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lc/b/a/n/k/e/l;->c()I

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v15}, Lc/b/a/t/c;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 11
    :try_start_3
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {v2, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    move v0, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 13
    :try_start_4
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Cannot determine the image orientation from header"

    .line 14
    invoke-static {v2, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :cond_1
    :try_start_5
    invoke-virtual {v15}, Lc/b/a/t/c;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 16
    :try_start_6
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {v2, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move v0, v5

    .line 18
    :goto_2
    iput-object v12, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    move-object/from16 v9, p0

    .line 19
    invoke-virtual {v9, v4, v3, v14}, Lc/b/a/n/k/e/f;->f(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v1

    .line 20
    aget v6, v1, v5

    const/4 v2, 0x1

    .line 21
    aget v7, v1, v2

    .line 22
    invoke-static {v0}, Lc/b/a/n/k/e/r;->c(I)I

    move-result v17

    move-object/from16 v16, p0

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p3

    move/from16 v21, p4

    .line 23
    invoke-direct/range {v16 .. v21}, Lc/b/a/n/k/e/f;->g(IIIII)I

    move-result v8

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v9, p5

    .line 24
    invoke-direct/range {v1 .. v9}, Lc/b/a/n/k/e/f;->c(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;Lc/b/a/n/i/m/c;IIILc/b/a/n/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    invoke-virtual {v15}, Lc/b/a/t/c;->a()Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 26
    invoke-static {v1, v10, v0}, Lc/b/a/n/k/e/r;->f(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v10, v1}, Lc/b/a/n/i/m/c;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 29
    :cond_3
    invoke-virtual {v11, v12}, Lc/b/a/t/a;->c([B)Z

    .line 30
    invoke-virtual {v11, v13}, Lc/b/a/t/a;->c([B)Z

    .line 31
    invoke-virtual {v15}, Lc/b/a/t/c;->c()V

    .line 32
    invoke-static {v14}, Lc/b/a/n/k/e/f;->i(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2

    .line 33
    :cond_4
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 34
    :goto_3
    :try_start_8
    invoke-virtual {v15}, Lc/b/a/t/c;->reset()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v0

    .line 35
    :try_start_9
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-static {v2, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_5
    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    .line 38
    invoke-virtual {v11, v12}, Lc/b/a/t/a;->c([B)Z

    .line 39
    invoke-virtual {v11, v13}, Lc/b/a/t/a;->c([B)Z

    .line 40
    invoke-virtual {v15}, Lc/b/a/t/c;->c()V

    .line 41
    invoke-static {v14}, Lc/b/a/n/k/e/f;->i(Landroid/graphics/BitmapFactory$Options;)V

    throw v0
.end method

.method public f(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;)[I
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p1, p2, p3}, Lc/b/a/n/k/e/f;->b(Lc/b/a/t/f;Lc/b/a/n/k/e/o;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v1, p2, p1

    iget p1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p2, v0

    return-object p2
.end method

.method protected abstract h(IIII)I
.end method
