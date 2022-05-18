.class public Lc/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile m:Lc/b/a/g;


# instance fields
.field private final a:Lc/b/a/n/j/c;

.field private final b:Lc/b/a/n/i/c;

.field private final c:Lc/b/a/n/i/m/c;

.field private final d:Lc/b/a/n/i/n/h;

.field private final e:Lc/b/a/n/a;

.field private final f:Lc/b/a/r/h/f;

.field private final g:Lc/b/a/n/k/j/d;

.field private final h:Lc/b/a/q/c;

.field private final i:Lc/b/a/n/k/e/e;

.field private final j:Lc/b/a/n/k/i/f;

.field private final k:Lc/b/a/n/k/e/i;

.field private final l:Lc/b/a/n/k/i/f;


# direct methods
.method constructor <init>(Lc/b/a/n/i/c;Lc/b/a/n/i/n/h;Lc/b/a/n/i/m/c;Landroid/content/Context;Lc/b/a/n/a;)V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Lc/b/a/n/k/i/a;

    const-class v3, Lc/b/a/n/j/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Lc/b/a/r/h/f;

    invoke-direct {v4}, Lc/b/a/r/h/f;-><init>()V

    iput-object v4, p0, Lc/b/a/g;->f:Lc/b/a/r/h/f;

    .line 3
    new-instance v4, Lc/b/a/n/k/j/d;

    invoke-direct {v4}, Lc/b/a/n/k/j/d;-><init>()V

    iput-object v4, p0, Lc/b/a/g;->g:Lc/b/a/n/k/j/d;

    .line 4
    iput-object p1, p0, Lc/b/a/g;->b:Lc/b/a/n/i/c;

    .line 5
    iput-object p3, p0, Lc/b/a/g;->c:Lc/b/a/n/i/m/c;

    .line 6
    iput-object p2, p0, Lc/b/a/g;->d:Lc/b/a/n/i/n/h;

    .line 7
    iput-object p5, p0, Lc/b/a/g;->e:Lc/b/a/n/a;

    .line 8
    new-instance p1, Lc/b/a/n/j/c;

    invoke-direct {p1, p4}, Lc/b/a/n/j/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lc/b/a/g;->a:Lc/b/a/n/j/c;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    new-instance p1, Lc/b/a/n/i/p/a;

    invoke-direct {p1, p2, p3, p5}, Lc/b/a/n/i/p/a;-><init>(Lc/b/a/n/i/n/h;Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    .line 11
    new-instance p1, Lc/b/a/q/c;

    invoke-direct {p1}, Lc/b/a/q/c;-><init>()V

    iput-object p1, p0, Lc/b/a/g;->h:Lc/b/a/q/c;

    .line 12
    new-instance p2, Lc/b/a/n/k/e/p;

    invoke-direct {p2, p3, p5}, Lc/b/a/n/k/e/p;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    .line 13
    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v6, p2}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 14
    new-instance v5, Lc/b/a/n/k/e/g;

    invoke-direct {v5, p3, p5}, Lc/b/a/n/k/e/g;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V

    .line 15
    const-class p5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p5, v6, v5}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 16
    new-instance p5, Lc/b/a/n/k/e/n;

    invoke-direct {p5, p2, v5}, Lc/b/a/n/k/e/n;-><init>(Lc/b/a/q/b;Lc/b/a/q/b;)V

    .line 17
    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, p2, p5}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 18
    new-instance p2, Lc/b/a/n/k/h/c;

    invoke-direct {p2, p4, p3}, Lc/b/a/n/k/h/c;-><init>(Landroid/content/Context;Lc/b/a/n/i/m/c;)V

    .line 19
    const-class v5, Ljava/io/InputStream;

    const-class v6, Lc/b/a/n/k/h/b;

    invoke-virtual {p1, v5, v6, p2}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 20
    new-instance v5, Lc/b/a/n/k/i/g;

    invoke-direct {v5, p5, p2, p3}, Lc/b/a/n/k/i/g;-><init>(Lc/b/a/q/b;Lc/b/a/q/b;Lc/b/a/n/i/m/c;)V

    invoke-virtual {p1, v3, v2, v5}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 21
    const-class p2, Ljava/io/InputStream;

    const-class p5, Ljava/io/File;

    new-instance v3, Lc/b/a/n/k/g/d;

    invoke-direct {v3}, Lc/b/a/n/k/g/d;-><init>()V

    invoke-virtual {p1, p2, p5, v3}, Lc/b/a/q/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V

    .line 22
    const-class p1, Ljava/io/File;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/b/a/n/j/s/a$a;

    invoke-direct {p5}, Lc/b/a/n/j/s/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 23
    const-class p1, Ljava/io/File;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/c$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/c$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 24
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/b/a/n/j/s/b$a;

    invoke-direct {p5}, Lc/b/a/n/j/s/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 25
    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/d$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 26
    const-class p1, Landroid/os/ParcelFileDescriptor;

    new-instance p2, Lc/b/a/n/j/s/b$a;

    invoke-direct {p2}, Lc/b/a/n/j/s/b$a;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 27
    const-class p1, Ljava/io/InputStream;

    new-instance p2, Lc/b/a/n/j/t/d$a;

    invoke-direct {p2}, Lc/b/a/n/j/t/d$a;-><init>()V

    invoke-virtual {p0, v1, p1, p2}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 28
    const-class p1, Landroid/os/ParcelFileDescriptor;

    new-instance p2, Lc/b/a/n/j/s/c$a;

    invoke-direct {p2}, Lc/b/a/n/j/s/c$a;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 29
    const-class p1, Ljava/io/InputStream;

    new-instance p2, Lc/b/a/n/j/t/e$a;

    invoke-direct {p2}, Lc/b/a/n/j/t/e$a;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 30
    const-class p1, Landroid/net/Uri;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lc/b/a/n/j/s/d$a;

    invoke-direct {p5}, Lc/b/a/n/j/s/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 31
    const-class p1, Landroid/net/Uri;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/f$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/f$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 32
    const-class p1, Ljava/net/URL;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/g$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/g$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 33
    const-class p1, Lc/b/a/n/j/d;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/a$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 34
    const-class p1, [B

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lc/b/a/n/j/t/b$a;

    invoke-direct {p5}, Lc/b/a/n/j/t/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lc/b/a/g;->r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V

    .line 35
    const-class p1, Landroid/graphics/Bitmap;

    const-class p2, Lc/b/a/n/k/e/j;

    new-instance p5, Lc/b/a/n/k/j/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p5, v0, p3}, Lc/b/a/n/k/j/b;-><init>(Landroid/content/res/Resources;Lc/b/a/n/i/m/c;)V

    invoke-virtual {v4, p1, p2, p5}, Lc/b/a/n/k/j/d;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)V

    .line 36
    const-class p1, Lc/b/a/n/k/f/b;

    new-instance p2, Lc/b/a/n/k/j/a;

    new-instance p5, Lc/b/a/n/k/j/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p5, p4, p3}, Lc/b/a/n/k/j/b;-><init>(Landroid/content/res/Resources;Lc/b/a/n/i/m/c;)V

    invoke-direct {p2, p5}, Lc/b/a/n/k/j/a;-><init>(Lc/b/a/n/k/j/c;)V

    invoke-virtual {v4, v2, p1, p2}, Lc/b/a/n/k/j/d;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/k/j/c;)V

    .line 37
    new-instance p1, Lc/b/a/n/k/e/e;

    invoke-direct {p1, p3}, Lc/b/a/n/k/e/e;-><init>(Lc/b/a/n/i/m/c;)V

    iput-object p1, p0, Lc/b/a/g;->i:Lc/b/a/n/k/e/e;

    .line 38
    new-instance p2, Lc/b/a/n/k/i/f;

    invoke-direct {p2, p3, p1}, Lc/b/a/n/k/i/f;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/g;)V

    iput-object p2, p0, Lc/b/a/g;->j:Lc/b/a/n/k/i/f;

    .line 39
    new-instance p1, Lc/b/a/n/k/e/i;

    invoke-direct {p1, p3}, Lc/b/a/n/k/e/i;-><init>(Lc/b/a/n/i/m/c;)V

    iput-object p1, p0, Lc/b/a/g;->k:Lc/b/a/n/k/e/i;

    .line 40
    new-instance p2, Lc/b/a/n/k/i/f;

    invoke-direct {p2, p3, p1}, Lc/b/a/n/k/i/f;-><init>(Lc/b/a/n/i/m/c;Lc/b/a/n/g;)V

    iput-object p2, p0, Lc/b/a/g;->l:Lc/b/a/n/k/i/f;

    return-void
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/b/a/n/j/l<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lc/b/a/g;->d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/b/a/n/j/l<",
            "TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 p0, 0x3

    const-string p1, "Glide"

    .line 1
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Unable to load null model, setting placeholder only"

    .line 2
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_1
    invoke-static {p2}, Lc/b/a/g;->i(Landroid/content/Context;)Lc/b/a/g;

    move-result-object p2

    invoke-direct {p2}, Lc/b/a/g;->q()Lc/b/a/n/j/c;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lc/b/a/n/j/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/l;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lc/b/a/n/j/l<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lc/b/a/g;->d(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lc/b/a/r/h/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/h/j<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    invoke-interface {p0}, Lc/b/a/r/h/j;->h()Lc/b/a/r/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lc/b/a/r/b;->clear()V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lc/b/a/r/h/j;->k(Lc/b/a/r/b;)V

    :cond_0
    return-void
.end method

.method public static i(Landroid/content/Context;)Lc/b/a/g;
    .locals 5

    .line 1
    sget-object v0, Lc/b/a/g;->m:Lc/b/a/g;

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lc/b/a/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/b/a/g;->m:Lc/b/a/g;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    new-instance v1, Lc/b/a/p/b;

    invoke-direct {v1, p0}, Lc/b/a/p/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lc/b/a/p/b;->a()Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v2, Lc/b/a/h;

    invoke-direct {v2, p0}, Lc/b/a/h;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/p/a;

    .line 8
    invoke-interface {v4, p0, v2}, Lc/b/a/p/a;->a(Landroid/content/Context;Lc/b/a/h;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Lc/b/a/h;->a()Lc/b/a/g;

    move-result-object v2

    sput-object v2, Lc/b/a/g;->m:Lc/b/a/g;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/a/p/a;

    .line 11
    sget-object v3, Lc/b/a/g;->m:Lc/b/a/g;

    invoke-interface {v2, p0, v3}, Lc/b/a/p/a;->b(Landroid/content/Context;Lc/b/a/g;)V

    goto :goto_1

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_2
    sget-object p0, Lc/b/a/g;->m:Lc/b/a/g;

    return-object p0
.end method

.method private q()Lc/b/a/n/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->a:Lc/b/a/n/j/c;

    return-object v0
.end method

.method public static t(Landroid/content/Context;)Lc/b/a/j;
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/o/k;->f()Lc/b/a/o/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lc/b/a/o/k;->d(Landroid/content/Context;)Lc/b/a/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/b/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g;->h:Lc/b/a/q/c;

    invoke-virtual {v0, p1, p2}, Lc/b/a/q/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/r/h/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lc/b/a/r/h/j<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g;->f:Lc/b/a/r/h/f;

    invoke-virtual {v0, p1, p2}, Lc/b/a/r/h/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/r/h/j;

    move-result-object p1

    return-object p1
.end method

.method f(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g;->g:Lc/b/a/n/k/j/d;

    invoke-virtual {v0, p1, p2}, Lc/b/a/n/k/j/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/k/j/c;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/g;->d:Lc/b/a/n/i/n/h;

    invoke-interface {v0}, Lc/b/a/n/i/n/h;->d()V

    .line 3
    iget-object v0, p0, Lc/b/a/g;->c:Lc/b/a/n/i/m/c;

    invoke-interface {v0}, Lc/b/a/n/i/m/c;->d()V

    return-void
.end method

.method j()Lc/b/a/n/k/e/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->i:Lc/b/a/n/k/e/e;

    return-object v0
.end method

.method k()Lc/b/a/n/k/e/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->k:Lc/b/a/n/k/e/i;

    return-object v0
.end method

.method public l()Lc/b/a/n/i/m/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->c:Lc/b/a/n/i/m/c;

    return-object v0
.end method

.method m()Lc/b/a/n/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->e:Lc/b/a/n/a;

    return-object v0
.end method

.method n()Lc/b/a/n/k/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->j:Lc/b/a/n/k/i/f;

    return-object v0
.end method

.method o()Lc/b/a/n/k/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->l:Lc/b/a/n/k/i/f;

    return-object v0
.end method

.method p()Lc/b/a/n/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/g;->b:Lc/b/a/n/i/c;

    return-object v0
.end method

.method public r(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lc/b/a/n/j/m<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/g;->a:Lc/b/a/n/j/c;

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/n/j/c;->f(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)Lc/b/a/n/j/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lc/b/a/n/j/m;->b()V

    :cond_0
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/g;->d:Lc/b/a/n/i/n/h;

    invoke-interface {v0, p1}, Lc/b/a/n/i/n/h;->a(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/g;->c:Lc/b/a/n/i/m/c;

    invoke-interface {v0, p1}, Lc/b/a/n/i/m/c;->a(I)V

    return-void
.end method
