.class Lcn/nubia/camera/k/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/f;

.field private b:Lcn/nubia/camera/k/h;

.field private c:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/f;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/k/f$a;->a:Lcn/nubia/camera/k/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/k/f$a;->b:Lcn/nubia/camera/k/h;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcn/nubia/camera/k/f$a;->c:Z

    .line 86
    iput-object p2, p0, Lcn/nubia/camera/k/f$a;->b:Lcn/nubia/camera/k/h;

    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 100
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/k/f$a;->c:Z

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/h;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/k/f$a;->b:Lcn/nubia/camera/k/h;

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 94
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/k/f$a;->c:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/k/f$a;->b:Lcn/nubia/camera/k/h;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->e()V

    const-string v0, "CameraCloseThreadHelper"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera close end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/f$a;->b:Lcn/nubia/camera/k/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget-object v0, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    invoke-static {v1}, Lcn/nubia/camera/k/f;->a(Lcn/nubia/camera/k/f;)Lcn/nubia/camera/k/f$a;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 112
    sget-object v1, Lcn/nubia/camera/k/f;->a:Lcn/nubia/camera/k/f;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/k/f;->a(Lcn/nubia/camera/k/f;Lcn/nubia/camera/k/f$a;)Lcn/nubia/camera/k/f$a;

    .line 114
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-direct {p0}, Lcn/nubia/camera/k/f$a;->c()V

    return-void

    :catchall_0
    move-exception v1

    .line 114
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
