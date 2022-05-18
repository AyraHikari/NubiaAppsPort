.class public Lcn/nubia/camera/aimoon/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/m$a;
    }
.end annotation


# static fields
.field private static final d:[I


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Ljava/lang/Object;

.field private final k:[I

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:Lcn/nubia/camera/ad/a;

.field private o:Lcn/nubia/camera/aimoon/m$a;

.field private p:Lcn/nubia/b/k;

.field private q:Lcn/nubia/camera/k/t;

.field private r:Lcn/nubia/camera/k/z;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 39
    sput-object v0, Lcn/nubia/camera/aimoon/m;->d:[I

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/util/Size;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1312d00

    .line 35
    iput-wide v0, p0, Lcn/nubia/camera/aimoon/m;->a:J

    const/16 v0, 0x64

    .line 36
    iput v0, p0, Lcn/nubia/camera/aimoon/m;->b:I

    .line 37
    iput v0, p0, Lcn/nubia/camera/aimoon/m;->c:I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcn/nubia/camera/aimoon/m;->h:I

    .line 44
    iput v0, p0, Lcn/nubia/camera/aimoon/m;->i:I

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/aimoon/m;->j:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 46
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/camera/aimoon/m;->k:[I

    .line 47
    iput v0, p0, Lcn/nubia/camera/aimoon/m;->l:I

    .line 54
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/m;->q:Lcn/nubia/camera/k/t;

    .line 157
    new-instance v0, Lcn/nubia/camera/aimoon/m$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/m$1;-><init>(Lcn/nubia/camera/aimoon/m;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/m;->r:Lcn/nubia/camera/k/z;

    .line 204
    new-instance v0, Lcn/nubia/camera/aimoon/m$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aimoon/m$2;-><init>(Lcn/nubia/camera/aimoon/m;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/m;->s:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/aimoon/m;->n:Lcn/nubia/camera/ad/a;

    const-string p1, "TeleCameraHandlerThread"

    .line 58
    invoke-static {p1}, Lcn/nubia/b/j;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/aimoon/m;->m:Landroid/os/Handler;

    .line 60
    sget-boolean p1, Lcn/nubia/camera/aimoon/l;->d:Z

    if-nez p1, :cond_0

    .line 61
    new-instance p1, Lcn/nubia/b/k;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/16 v1, 0x23

    const/4 v2, 0x2

    invoke-direct {p1, v0, p2, v1, v2}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/m;->p:Lcn/nubia/b/k;

    .line 62
    new-instance p1, Lcn/nubia/camera/k/t;

    invoke-direct {p1}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/m;->q:Lcn/nubia/camera/k/t;

    .line 63
    iget-object p2, p0, Lcn/nubia/camera/aimoon/m;->p:Lcn/nubia/b/k;

    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 64
    iget-object p1, p0, Lcn/nubia/camera/aimoon/m;->q:Lcn/nubia/camera/k/t;

    iget-object p2, p0, Lcn/nubia/camera/aimoon/m;->r:Lcn/nubia/camera/k/z;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x4e20
        0x64
        0x64
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/m;)I
    .locals 2

    .line 28
    iget v0, p0, Lcn/nubia/camera/aimoon/m;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/aimoon/m;->h:I

    return v0
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/m;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/aimoon/m;->n:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/m;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/camera/aimoon/m;->h:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/aimoon/m;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/aimoon/m;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d()[I
    .locals 1

    .line 28
    sget-object v0, Lcn/nubia/camera/aimoon/m;->d:[I

    return-object v0
.end method

.method static synthetic e(Lcn/nubia/camera/aimoon/m;)[I
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/camera/aimoon/m;->k:[I

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/aimoon/m;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcn/nubia/camera/aimoon/m;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcn/nubia/camera/aimoon/m;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/camera/aimoon/m;->f:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/aimoon/m;)I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/camera/aimoon/m;->g:I

    return p0
.end method


# virtual methods
.method public a()Lcn/nubia/b/k;
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->p:Lcn/nubia/b/k;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 128
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcn/nubia/camera/aimoon/m;->l:I

    if-ne v0, p1, :cond_1

    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->n:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-wide/32 v0, 0x3d0900

    .line 138
    iput-wide v0, p0, Lcn/nubia/camera/aimoon/m;->a:J

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const-wide/32 v0, 0x989680

    .line 140
    iput-wide v0, p0, Lcn/nubia/camera/aimoon/m;->a:J

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0x1312d00

    .line 142
    iput-wide v0, p0, Lcn/nubia/camera/aimoon/m;->a:J

    .line 145
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->o:Lcn/nubia/camera/aimoon/m$a;

    if-eqz v0, :cond_5

    iget-wide v1, p0, Lcn/nubia/camera/aimoon/m;->a:J

    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/aimoon/m$a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySceneChanged newScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; current_scene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/aimoon/m;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; ref_exposure_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/camera/aimoon/m;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TeleEvController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput p1, p0, Lcn/nubia/camera/aimoon/m;->l:I

    goto :goto_1

    .line 150
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 151
    iput v2, v0, Landroid/os/Message;->what:I

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    iget-object p1, p0, Lcn/nubia/camera/aimoon/m;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public a(JJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 115
    div-long/2addr p1, v0

    div-long/2addr p1, v0

    mul-long/2addr p1, p3

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x2328

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/camera/aimoon/m;->a(I)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 97
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->j:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/camera/aimoon/m;->e:J

    .line 99
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/aimoon/m;->f:I

    .line 100
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/aimoon/m;->g:I

    .line 101
    sget-boolean v1, Lcn/nubia/camera/aimoon/l;->c:Z

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    const-string v1, "[MoonDebug] TeleEvController"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tele focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/aimoon/m$a;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/aimoon/m;->o:Lcn/nubia/camera/aimoon/m$a;

    return-void
.end method

.method public b()[I
    .locals 5

    .line 73
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [I

    .line 77
    iget-object v2, p0, Lcn/nubia/camera/aimoon/m;->k:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v1, v3

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    const-string v0, "TeleEvController"

    const-string v1, "release"

    .line 83
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/aimoon/m;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcn/nubia/camera/aimoon/m;->m:Landroid/os/Handler;

    :cond_0
    return-void
.end method
