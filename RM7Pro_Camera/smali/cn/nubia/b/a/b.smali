.class public final Lcn/nubia/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/h;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    return-void
.end method

.method public static a(IIII)Lcn/nubia/b/a/h;
    .locals 1

    .line 48
    new-instance v0, Lcn/nubia/b/a/b;

    invoke-static {p0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/nubia/b/a/b;-><init>(Landroid/media/ImageReader;)V

    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x14

    if-eq p0, v0, :cond_7

    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v0, 0x23

    if-eq p0, v0, :cond_5

    const/16 v0, 0x25

    if-eq p0, v0, :cond_4

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3

    const v0, 0x32315659

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    .line 75
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NV21"

    return-object p0

    :cond_1
    const-string p0, "NV16"

    return-object p0

    :cond_2
    const-string p0, "YV12"

    return-object p0

    :cond_3
    const-string p0, "JPEG"

    return-object p0

    :cond_4
    const-string p0, "RAW10"

    return-object p0

    :cond_5
    const-string p0, "YUV_420_888"

    return-object p0

    :cond_6
    const-string p0, "RAW_SENSOR"

    return-object p0

    :cond_7
    const-string p0, "YUY2"

    return-object p0

    :cond_8
    const-string p0, "RGB_565"

    return-object p0

    :cond_9
    const-string p0, "UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 82
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    new-instance v2, Lcn/nubia/b/a/b$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/b/a/b$1;-><init>(Lcn/nubia/b/a/b;Lcn/nubia/b/a/h$a;)V

    invoke-virtual {v1, v2, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()I
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()I
    .locals 2

    .line 94
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Landroid/view/Surface;
    .locals 2

    .line 109
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lcn/nubia/b/a/f;
    .locals 3

    .line 117
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 120
    monitor-exit v0

    return-object v1

    .line 122
    :cond_0
    new-instance v2, Lcn/nubia/b/a/a;

    invoke-direct {v2, v1}, Lcn/nubia/b/a/a;-><init>(Landroid/media/Image;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Lcn/nubia/b/a/f;
    .locals 3

    .line 130
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/a/b;->b:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 133
    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    new-instance v2, Lcn/nubia/b/a/a;

    invoke-direct {v2, v1}, Lcn/nubia/b/a/a;-><init>(Landroid/media/Image;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 164
    iget-object v0, p0, Lcn/nubia/b/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidImageReaderProxy"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcn/nubia/b/a/b;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", height "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcn/nubia/b/a/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    invoke-virtual {p0}, Lcn/nubia/b/a/b;->c()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/b/a/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
