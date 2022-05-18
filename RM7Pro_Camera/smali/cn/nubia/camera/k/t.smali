.class public Lcn/nubia/camera/k/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/h$a;


# instance fields
.field private a:Lcn/nubia/b/d;

.field private b:Lcn/nubia/camera/k/o;

.field private c:Lcn/nubia/camera/k/o;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/t;->d:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 79
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/h;)V
    .locals 8

    .line 42
    invoke-interface {p1}, Lcn/nubia/b/a/h;->f()Lcn/nubia/b/a/f;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "ImageAvailableListener"

    const-string v1, "image is null"

    .line 44
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/t;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/t;->b:Lcn/nubia/camera/k/o;

    iput-object v1, p0, Lcn/nubia/camera/k/t;->c:Lcn/nubia/camera/k/o;

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 52
    :try_start_1
    instance-of v0, v1, Lcn/nubia/camera/k/z;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/k/t;->a:Lcn/nubia/b/d;

    invoke-interface {v1, p1, v0}, Lcn/nubia/camera/k/o;->a(Ljava/lang/Object;Lcn/nubia/b/d;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    .line 55
    instance-of v0, v1, Lcn/nubia/camera/k/d;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lcn/nubia/camera/k/e;

    .line 58
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/k/t;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 59
    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v4

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v5

    invoke-interface {p1}, Lcn/nubia/b/a/f;->e()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/k/e;-><init>([BIIJ)V

    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/k/t;->a:Lcn/nubia/b/d;

    .line 56
    invoke-interface {v1, v0, v2}, Lcn/nubia/camera/k/o;->a(Ljava/lang/Object;Lcn/nubia/b/d;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 63
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 67
    :goto_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->F()V

    .line 68
    throw p1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 49
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/b/d;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/k/t;->a:Lcn/nubia/b/d;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/k/t;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/k/t;->b:Lcn/nubia/camera/k/o;

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
