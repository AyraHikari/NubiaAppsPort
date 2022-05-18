.class public final Lc/d/a/a/a/b/c/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a/b/c/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/a/a/b/c/a$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lc/d/a/a/a/b/c/a;


# direct methods
.method private constructor <init>(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    invoke-static {p2}, Lc/d/a/a/a/b/c/a$d;->e(Lc/d/a/a/a/b/c/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc/d/a/a/a/b/c/a;->c(Lc/d/a/a/a/b/c/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lc/d/a/a/a/b/c/a$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/d/a/a/a/b/c/a$c;-><init>(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$d;)V

    return-void
.end method

.method static synthetic b(Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$d;
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    return-object p0
.end method

.method static synthetic c(Lc/d/a/a/a/b/c/a$c;)[Z
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a$c;->b:[Z

    return-object p0
.end method

.method static synthetic d(Lc/d/a/a/a/b/c/a$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc/d/a/a/a/b/c/a$c;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc/d/a/a/a/b/c/a;->g(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$c;Z)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lc/d/a/a/a/b/c/a$c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc/d/a/a/a/b/c/a;->g(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$c;Z)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/a/b/c/a;->x(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lc/d/a/a/a/b/c/a;->g(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$c;Z)V

    :goto_0
    return-void
.end method

.method public f(I)Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->e(Lc/d/a/a/a/b/c/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_0
    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->a:Lc/d/a/a/a/b/c/a$d;

    invoke-virtual {v1, p1}, Lc/d/a/a/a/b/c/a$d;->k(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lc/d/a/a/a/b/c/a$c;->d:Lc/d/a/a/a/b/c/a;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a;->e(Lc/d/a/a/a/b/c/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    new-instance p1, Lc/d/a/a/a/b/c/a$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lc/d/a/a/a/b/c/a$c$a;-><init>(Lc/d/a/a/a/b/c/a$c;Ljava/io/OutputStream;Lc/d/a/a/a/b/c/a$a;)V

    monitor-exit v0

    return-object p1

    :catch_1
    invoke-static {}, Lc/d/a/a/a/b/c/a;->f()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
