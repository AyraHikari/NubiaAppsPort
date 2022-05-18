.class public Lc/d/a/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a$a;
    }
.end annotation


# direct methods
.method public static a()Lc/d/a/b/l/a;
    .locals 1

    new-instance v0, Lc/d/a/b/l/b;

    invoke-direct {v0}, Lc/d/a/b/l/b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lc/d/a/a/a/c/a;JI)Lc/d/a/a/a/a;
    .locals 9

    invoke-static {p0}, Lc/d/a/b/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-lez p4, :cond_1

    :cond_0
    invoke-static {p0}, Lc/d/a/c/e;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    :try_start_0
    new-instance v8, Lc/d/a/a/a/b/c/b;

    move-object v0, v8

    move-object v2, v7

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lc/d/a/a/a/b/c/b;-><init>(Ljava/io/File;Ljava/io/File;Lc/d/a/a/a/c/a;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception p2

    invoke-static {p2}, Lc/d/a/c/c;->c(Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {p0}, Lc/d/a/c/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance p2, Lc/d/a/a/a/b/b;

    invoke-direct {p2, p0, v7, p1}, Lc/d/a/a/a/b/b;-><init>(Ljava/io/File;Ljava/io/File;Lc/d/a/a/a/c/a;)V

    return-object p2
.end method

.method public static c(IILc/d/a/b/j/g;)Ljava/util/concurrent/Executor;
    .locals 8

    sget-object v0, Lc/d/a/b/j/g;->b:Lc/d/a/b/j/g;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    new-instance p2, Lc/d/a/b/j/i/a;

    invoke-direct {p2}, Lc/d/a/b/j/i/a;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_1
    move-object v6, p2

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v0, "uil-pool-"

    invoke-static {p1, v0}, Lc/d/a/b/a;->j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, p2

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object p2
.end method

.method public static d()Lc/d/a/a/a/c/a;
    .locals 1

    new-instance v0, Lc/d/a/a/a/c/b;

    invoke-direct {v0}, Lc/d/a/a/a/c/b;-><init>()V

    return-object v0
.end method

.method public static e(Z)Lc/d/a/b/k/b;
    .locals 1

    new-instance v0, Lc/d/a/b/k/a;

    invoke-direct {v0, p0}, Lc/d/a/b/k/a;-><init>(Z)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lc/d/a/b/m/b;
    .locals 1

    new-instance v0, Lc/d/a/b/m/a;

    invoke-direct {v0, p0}, Lc/d/a/b/m/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;I)Lc/d/a/a/b/c;
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    invoke-static {}, Lc/d/a/b/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lc/d/a/b/a;->m(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lc/d/a/b/a;->k(Landroid/app/ActivityManager;)I

    move-result v0

    :cond_0
    const/high16 p0, 0x100000

    mul-int/2addr v0, p0

    div-int/lit8 p1, v0, 0x8

    :cond_1
    new-instance p0, Lc/d/a/a/b/d/c;

    invoke-direct {p0, p1}, Lc/d/a/a/b/d/c;-><init>(I)V

    return-object p0
.end method

.method private static h(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc/d/a/c/e;->b(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static i()Ljava/util/concurrent/Executor;
    .locals 2

    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-static {v0, v1}, Lc/d/a/b/a;->j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static j(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lc/d/a/b/a$a;

    invoke-direct {v0, p0, p1}, Lc/d/a/b/a$a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static k(Landroid/app/ActivityManager;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0

    return p0
.end method

.method private static l()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static m(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
