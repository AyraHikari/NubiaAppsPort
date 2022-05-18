.class public Lc/b/a/n/k/h/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/h/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/f<",
        "Lc/b/a/n/k/h/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lc/b/a/n/k/h/j$a;


# instance fields
.field private final a:Lc/b/a/l/a$a;

.field private final b:Lc/b/a/n/i/m/c;

.field private final c:Lc/b/a/n/k/h/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/k/h/j$a;

    invoke-direct {v0}, Lc/b/a/n/k/h/j$a;-><init>()V

    sput-object v0, Lc/b/a/n/k/h/j;->d:Lc/b/a/n/k/h/j$a;

    return-void
.end method

.method public constructor <init>(Lc/b/a/n/i/m/c;)V
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/k/h/j;->d:Lc/b/a/n/k/h/j$a;

    invoke-direct {p0, p1, v0}, Lc/b/a/n/k/h/j;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/k/h/j$a;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/i/m/c;Lc/b/a/n/k/h/j$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/h/j;->b:Lc/b/a/n/i/m/c;

    .line 4
    new-instance v0, Lc/b/a/n/k/h/a;

    invoke-direct {v0, p1}, Lc/b/a/n/k/h/a;-><init>(Lc/b/a/n/i/m/c;)V

    iput-object v0, p0, Lc/b/a/n/k/h/j;->a:Lc/b/a/l/a$a;

    .line 5
    iput-object p2, p0, Lc/b/a/n/k/h/j;->c:Lc/b/a/n/k/h/j$a;

    return-void
.end method

.method private b([B)Lc/b/a/l/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/j;->c:Lc/b/a/n/k/h/j$a;

    invoke-virtual {v0}, Lc/b/a/n/k/h/j$a;->d()Lc/b/a/l/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lc/b/a/l/d;->o([B)Lc/b/a/l/d;

    .line 3
    invoke-virtual {v0}, Lc/b/a/l/d;->c()Lc/b/a/l/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lc/b/a/n/k/h/j;->c:Lc/b/a/n/k/h/j$a;

    iget-object v2, p0, Lc/b/a/n/k/h/j;->a:Lc/b/a/l/a$a;

    invoke-virtual {v1, v2}, Lc/b/a/n/k/h/j$a;->a(Lc/b/a/l/a$a;)Lc/b/a/l/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0, p1}, Lc/b/a/l/a;->n(Lc/b/a/l/c;[B)V

    .line 6
    invoke-virtual {v1}, Lc/b/a/l/a;->a()V

    return-object v1
.end method

.method private d(Landroid/graphics/Bitmap;Lc/b/a/n/g;Lc/b/a/n/k/h/b;)Lc/b/a/n/i/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lc/b/a/n/k/h/b;",
            ")",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/j;->c:Lc/b/a/n/k/h/j$a;

    iget-object v1, p0, Lc/b/a/n/k/h/j;->b:Lc/b/a/n/i/m/c;

    invoke-virtual {v0, p1, v1}, Lc/b/a/n/k/h/j$a;->c(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)Lc/b/a/n/i/k;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Lc/b/a/n/k/h/b;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Lc/b/a/n/k/h/b;->getIntrinsicHeight()I

    move-result p3

    invoke-interface {p2, p1, v0, p3}, Lc/b/a/n/g;->a(Lc/b/a/n/i/k;II)Lc/b/a/n/i/k;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-interface {p1}, Lc/b/a/n/i/k;->a()V

    :cond_0
    return-object p2
.end method

.method private e([BLjava/io/OutputStream;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string v0, "GifEncoder"

    .line 2
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to write data to output stream in GifResourceEncoder"

    .line 3
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/i/k;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/k/h/j;->c(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public c(Lc/b/a/n/i/k;Ljava/io/OutputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "Lc/b/a/n/k/h/b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/d;->b()J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Lc/b/a/n/i/k;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/k/h/b;

    .line 3
    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->h()Lc/b/a/n/g;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lc/b/a/n/k/d;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->d()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lc/b/a/n/k/h/j;->e([BLjava/io/OutputStream;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->d()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lc/b/a/n/k/h/j;->b([B)Lc/b/a/l/a;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lc/b/a/n/k/h/j;->c:Lc/b/a/n/k/h/j$a;

    invoke-virtual {v4}, Lc/b/a/n/k/h/j$a;->b()Lc/b/a/m/a;

    move-result-object v4

    .line 8
    invoke-virtual {v4, p2}, Lc/b/a/m/a;->h(Ljava/io/OutputStream;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_1

    return v5

    :cond_1
    move p2, v5

    .line 9
    :goto_0
    invoke-virtual {v3}, Lc/b/a/l/a;->f()I

    move-result v6

    if-ge p2, v6, :cond_3

    .line 10
    invoke-virtual {v3}, Lc/b/a/l/a;->j()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 11
    invoke-direct {p0, v6, v2, p1}, Lc/b/a/n/k/h/j;->d(Landroid/graphics/Bitmap;Lc/b/a/n/g;Lc/b/a/n/k/h/b;)Lc/b/a/n/i/k;

    move-result-object v6

    .line 12
    :try_start_0
    invoke-interface {v6}, Lc/b/a/n/i/k;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Lc/b/a/m/a;->a(Landroid/graphics/Bitmap;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_2

    .line 13
    invoke-interface {v6}, Lc/b/a/n/i/k;->a()V

    return v5

    .line 14
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lc/b/a/l/a;->d()I

    move-result v7

    .line 15
    invoke-virtual {v3, v7}, Lc/b/a/l/a;->e(I)I

    move-result v7

    .line 16
    invoke-virtual {v4, v7}, Lc/b/a/m/a;->f(I)V

    .line 17
    invoke-virtual {v3}, Lc/b/a/l/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-interface {v6}, Lc/b/a/n/i/k;->a()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v6}, Lc/b/a/n/i/k;->a()V

    throw p1

    .line 19
    :cond_3
    invoke-virtual {v4}, Lc/b/a/m/a;->d()Z

    move-result p2

    const/4 v2, 0x2

    const-string v4, "GifEncoder"

    .line 20
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoded gif with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/b/a/l/a;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/a/n/k/h/b;->d()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lc/b/a/t/d;->a(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
