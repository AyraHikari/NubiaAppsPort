.class public Lcn/nubia/camera/panorama/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/nubia/camera/panorama/k;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcn/nubia/camera/panorama/k;->c:J

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/k;->b:Landroid/os/HandlerThread;

    .line 25
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public static a()Lcn/nubia/camera/panorama/k;
    .locals 2

    .line 13
    sget-object v0, Lcn/nubia/camera/panorama/k;->a:Lcn/nubia/camera/panorama/k;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcn/nubia/camera/panorama/k;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcn/nubia/camera/panorama/k;->a:Lcn/nubia/camera/panorama/k;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcn/nubia/camera/panorama/k;

    invoke-direct {v1}, Lcn/nubia/camera/panorama/k;-><init>()V

    sput-object v1, Lcn/nubia/camera/panorama/k;->a:Lcn/nubia/camera/panorama/k;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 20
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/camera/panorama/k;->a:Lcn/nubia/camera/panorama/k;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcn/nubia/camera/panorama/k;->c:J

    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/nubia/camera/panorama/k;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcn/nubia/camera/panorama/k;->c:J

    return-wide v0
.end method
