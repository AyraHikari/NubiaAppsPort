.class public Lcn/nubia/camera/pretty/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/a/e$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/k/ag;

.field private b:Lcn/nubia/b/a/f;

.field private c:Landroid/hardware/camera2/TotalCaptureResult;

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lcn/nubia/camera/pretty/a/e$a;

.field private g:Lcn/nubia/camera/k/ah;

.field private h:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->g:Lcn/nubia/camera/k/ah;

    .line 47
    new-instance v0, Lcn/nubia/camera/k/ag;

    invoke-direct {v0, p1}, Lcn/nubia/camera/k/ag;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/a/e;->a:Lcn/nubia/camera/k/ag;

    .line 48
    new-instance p1, Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->h:Ljava/util/BitSet;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/a/e;Lcn/nubia/b/a/f;)Lcn/nubia/b/a/f;
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/a/e;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private a(I)V
    .locals 11

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/e;->h:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 92
    iget-boolean p1, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->h:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->h:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 93
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    .line 94
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->c:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->g:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->a:Lcn/nubia/camera/k/ag;

    iget-object v1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    iget-object v2, p0, Lcn/nubia/camera/pretty/a/e;->c:Landroid/hardware/camera2/TotalCaptureResult;

    new-instance v3, Lcn/nubia/camera/pretty/a/e$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/pretty/a/e$1;-><init>(Lcn/nubia/camera/pretty/a/e;)V

    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->g:Lcn/nubia/camera/k/ah;

    .line 121
    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 111
    invoke-virtual/range {v0 .. v10}, Lcn/nubia/camera/k/ag;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;ZIZI)Z

    return-void

    .line 95
    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->f:Lcn/nubia/camera/pretty/a/e$a;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 96
    invoke-interface {p1, v1}, Lcn/nubia/camera/pretty/a/e$a;->a([B)V

    .line 98
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    if-eqz p1, :cond_3

    .line 99
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    .line 101
    :cond_3
    monitor-exit v0

    return-void

    .line 104
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/a/e;)Lcn/nubia/camera/pretty/a/e$a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/camera/pretty/a/e;->f:Lcn/nubia/camera/pretty/a/e$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Lcn/nubia/b/a/f;->close()V

    .line 60
    iput-object v2, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    .line 62
    :cond_0
    iput-object v2, p0, Lcn/nubia/camera/pretty/a/e;->c:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/pretty/a/e;->h:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    if-eqz v1, :cond_0

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->c:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 p1, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/e;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/b/a/f;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    .line 72
    monitor-exit v0

    return-void

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/a/e;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/pretty/a/e$a;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/e;->f:Lcn/nubia/camera/pretty/a/e$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->a:Lcn/nubia/camera/k/ag;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcn/nubia/camera/k/ag;->a()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0}, Lcn/nubia/b/a/f;->close()V

    .line 131
    iput-object v1, p0, Lcn/nubia/camera/pretty/a/e;->b:Lcn/nubia/b/a/f;

    .line 133
    :cond_1
    iput-object v1, p0, Lcn/nubia/camera/pretty/a/e;->c:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/a/e;->d:Z

    return-void
.end method
