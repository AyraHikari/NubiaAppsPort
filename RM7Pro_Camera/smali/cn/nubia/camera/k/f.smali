.class public Lcn/nubia/camera/k/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/f$a;
    }
.end annotation


# static fields
.field public static a:Lcn/nubia/camera/k/f;


# instance fields
.field private b:Lcn/nubia/camera/k/h;

.field private c:Lcn/nubia/camera/k/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/f;)Lcn/nubia/camera/k/f$a;
    .locals 0

    .line 9
    iget-object p0, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/k/f;Lcn/nubia/camera/k/f$a;)Lcn/nubia/camera/k/f$a;
    .locals 0

    .line 9
    iput-object p1, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    return-object p1
.end method

.method public static a()Lcn/nubia/camera/k/f;
    .locals 1

    .line 20
    sget-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcn/nubia/camera/k/f;

    invoke-direct {v0}, Lcn/nubia/camera/k/f;-><init>()V

    sput-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    .line 23
    :cond_0
    sget-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcn/nubia/camera/k/h;)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lcn/nubia/camera/k/h;)V
    .locals 5

    const-string v0, "CameraCloseThreadHelper"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCameraAsync begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcn/nubia/camera/k/f$a;->a()Lcn/nubia/camera/k/h;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "CameraCloseThreadHelper"

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close cameraAsync, Use last camera close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    iget-object v4, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    invoke-virtual {v4}, Lcn/nubia/camera/k/f$a;->a()Lcn/nubia/camera/k/h;

    move-result-object v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    new-instance v1, Lcn/nubia/camera/k/f$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/k/f$a;-><init>(Lcn/nubia/camera/k/f;Lcn/nubia/camera/k/h;)V

    iput-object v1, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    .line 40
    sget-object v1, Lcn/nubia/camera/k/n;->c:Lcom/a/a/a/d;

    invoke-interface {v1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    iget-object v1, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    if-ne v1, p1, :cond_3

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    .line 48
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraCloseThreadHelper"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeCameraAsync end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Lcn/nubia/camera/k/h;)V
    .locals 3

    const-string v0, "CameraCloseThreadHelper"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitCurrentCameraClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object p1, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    monitor-enter p1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    .line 58
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string p1, "CameraCloseThreadHelper"

    const-string v1, "waitCurrentCameraClose"

    .line 60
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_1
    invoke-virtual {v0}, Lcn/nubia/camera/k/f$a;->b()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 58
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d(Lcn/nubia/camera/k/h;)V
    .locals 3

    .line 71
    sget-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Lcn/nubia/camera/k/f$a;

    iget-object v2, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/k/f$a;-><init>(Lcn/nubia/camera/k/f;Lcn/nubia/camera/k/h;)V

    iput-object v1, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    .line 74
    sget-object v1, Lcn/nubia/camera/k/n;->c:Lcom/a/a/a/d;

    invoke-interface {v1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/camera/k/f;->c:Lcn/nubia/camera/k/f$a;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcn/nubia/camera/k/f;->b:Lcn/nubia/camera/k/h;

    .line 77
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0, p1}, Lcn/nubia/camera/k/f;->c(Lcn/nubia/camera/k/h;)V

    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
