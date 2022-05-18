.class public Lc/b/a/n/k/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/h/i$b;,
        Lc/b/a/n/k/h/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/e<",
        "Ljava/io/InputStream;",
        "Lc/b/a/n/k/h/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lc/b/a/n/k/h/i$b;

.field private static final g:Lc/b/a/n/k/h/i$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc/b/a/n/k/h/i$b;

.field private final c:Lc/b/a/n/i/m/c;

.field private final d:Lc/b/a/n/k/h/i$a;

.field private final e:Lc/b/a/n/k/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/h/i$b;

    invoke-direct {v0}, Lc/b/a/n/k/h/i$b;-><init>()V

    sput-object v0, Lc/b/a/n/k/h/i;->f:Lc/b/a/n/k/h/i$b;

    .line 2
    new-instance v0, Lc/b/a/n/k/h/i$a;

    invoke-direct {v0}, Lc/b/a/n/k/h/i$a;-><init>()V

    sput-object v0, Lc/b/a/n/k/h/i;->g:Lc/b/a/n/k/h/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/b/a/n/i/m/c;)V
    .locals 2

    .line 1
    sget-object v0, Lc/b/a/n/k/h/i;->f:Lc/b/a/n/k/h/i$b;

    sget-object v1, Lc/b/a/n/k/h/i;->g:Lc/b/a/n/k/h/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lc/b/a/n/k/h/i;-><init>(Landroid/content/Context;Lc/b/a/n/i/m/c;Lc/b/a/n/k/h/i$b;Lc/b/a/n/k/h/i$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lc/b/a/n/i/m/c;Lc/b/a/n/k/h/i$b;Lc/b/a/n/k/h/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/h/i;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/b/a/n/k/h/i;->c:Lc/b/a/n/i/m/c;

    .line 5
    iput-object p4, p0, Lc/b/a/n/k/h/i;->d:Lc/b/a/n/k/h/i$a;

    .line 6
    new-instance p1, Lc/b/a/n/k/h/a;

    invoke-direct {p1, p2}, Lc/b/a/n/k/h/a;-><init>(Lc/b/a/n/i/m/c;)V

    iput-object p1, p0, Lc/b/a/n/k/h/i;->e:Lc/b/a/n/k/h/a;

    .line 7
    iput-object p3, p0, Lc/b/a/n/k/h/i;->b:Lc/b/a/n/k/h/i$b;

    return-void
.end method

.method private c([BIILc/b/a/l/d;Lc/b/a/l/a;)Lc/b/a/n/k/h/d;
    .locals 10

    .line 1
    invoke-virtual {p4}, Lc/b/a/l/d;->c()Lc/b/a/l/c;

    move-result-object v7

    .line 2
    invoke-virtual {v7}, Lc/b/a/l/c;->a()I

    move-result p4

    const/4 v0, 0x0

    if-lez p4, :cond_2

    invoke-virtual {v7}, Lc/b/a/l/c;->b()I

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p5, v7, p1}, Lc/b/a/n/k/h/i;->d(Lc/b/a/l/a;Lc/b/a/l/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lc/b/a/n/k/d;->b()Lc/b/a/n/k/d;

    move-result-object v4

    .line 5
    new-instance p4, Lc/b/a/n/k/h/b;

    iget-object v1, p0, Lc/b/a/n/k/h/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lc/b/a/n/k/h/i;->e:Lc/b/a/n/k/h/a;

    iget-object v3, p0, Lc/b/a/n/k/h/i;->c:Lc/b/a/n/i/m/c;

    move-object v0, p4

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lc/b/a/n/k/h/b;-><init>(Landroid/content/Context;Lc/b/a/l/a$a;Lc/b/a/n/i/m/c;Lc/b/a/n/g;IILc/b/a/l/c;[BLandroid/graphics/Bitmap;)V

    .line 6
    new-instance p1, Lc/b/a/n/k/h/d;

    invoke-direct {p1, p4}, Lc/b/a/n/k/h/d;-><init>(Lc/b/a/n/k/h/b;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private d(Lc/b/a/l/a;Lc/b/a/l/c;[B)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lc/b/a/l/a;->n(Lc/b/a/l/c;[B)V

    .line 2
    invoke-virtual {p1}, Lc/b/a/l/a;->a()V

    .line 3
    invoke-virtual {p1}, Lc/b/a/l/a;->j()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static e(Ljava/io/InputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-array v1, v1, [B

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "GifResourceDecoder"

    const-string v2, "Error reading data from stream"

    .line 5
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/i/k;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/h/i;->b(Ljava/io/InputStream;II)Lc/b/a/n/k/h/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;II)Lc/b/a/n/k/h/d;
    .locals 7

    .line 1
    invoke-static {p1}, Lc/b/a/n/k/h/i;->e(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 2
    iget-object p1, p0, Lc/b/a/n/k/h/i;->b:Lc/b/a/n/k/h/i$b;

    invoke-virtual {p1, v1}, Lc/b/a/n/k/h/i$b;->a([B)Lc/b/a/l/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/b/a/n/k/h/i;->d:Lc/b/a/n/k/h/i$a;

    iget-object v2, p0, Lc/b/a/n/k/h/i;->e:Lc/b/a/n/k/h/a;

    invoke-virtual {v0, v2}, Lc/b/a/n/k/h/i$a;->a(Lc/b/a/l/a$a;)Lc/b/a/l/a;

    move-result-object v6

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, v6

    .line 4
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lc/b/a/n/k/h/i;->c([BIILc/b/a/l/d;Lc/b/a/l/a;)Lc/b/a/n/k/h/d;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p3, p0, Lc/b/a/n/k/h/i;->b:Lc/b/a/n/k/h/i$b;

    invoke-virtual {p3, p1}, Lc/b/a/n/k/h/i$b;->b(Lc/b/a/l/d;)V

    .line 6
    iget-object p1, p0, Lc/b/a/n/k/h/i;->d:Lc/b/a/n/k/h/i$a;

    invoke-virtual {p1, v6}, Lc/b/a/n/k/h/i$a;->b(Lc/b/a/l/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 7
    iget-object p3, p0, Lc/b/a/n/k/h/i;->b:Lc/b/a/n/k/h/i$b;

    invoke-virtual {p3, p1}, Lc/b/a/n/k/h/i$b;->b(Lc/b/a/l/d;)V

    .line 8
    iget-object p1, p0, Lc/b/a/n/k/h/i;->d:Lc/b/a/n/k/h/i$a;

    invoke-virtual {p1, v6}, Lc/b/a/n/k/h/i$a;->b(Lc/b/a/l/a;)V

    throw p2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
