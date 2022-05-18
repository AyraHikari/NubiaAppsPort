.class Lcn/nubia/camera/au/h$a;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/k/ab$a;

.field final synthetic b:Lcn/nubia/camera/au/h;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/au/h;Lcn/nubia/camera/k/ab$a;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcn/nubia/camera/au/h$a;->a:Lcn/nubia/camera/k/ab$a;

    .line 182
    iput-object p2, p0, Lcn/nubia/camera/au/h$a;->a:Lcn/nubia/camera/k/ab$a;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 194
    invoke-super/range {p0 .. p6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    const-string p1, "StarTrackStreamController"

    const-string p3, "receive one picture frame"

    .line 195
    invoke-static {p1, p3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-static {p1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/au/h;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-static {p1}, Lcn/nubia/camera/au/h;->b(Lcn/nubia/camera/au/h;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 200
    :try_start_0
    iget-object p3, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-static {p3}, Lcn/nubia/camera/au/h;->c(Lcn/nubia/camera/au/h;)Lcn/nubia/camera/k/af;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/af;->e()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "StarTrackStreamController"

    const-string p4, "take next picture"

    .line 201
    invoke-static {p3, p4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p3, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-static {p3}, Lcn/nubia/camera/au/h;->d(Lcn/nubia/camera/au/h;)Lcn/nubia/b/a;

    move-result-object p3

    new-instance p4, Lcn/nubia/camera/au/h$a;

    iget-object p5, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    iget-object p6, p0, Lcn/nubia/camera/au/h$a;->a:Lcn/nubia/camera/k/ab$a;

    invoke-direct {p4, p5, p6}, Lcn/nubia/camera/au/h$a;-><init>(Lcn/nubia/camera/au/h;Lcn/nubia/camera/k/ab$a;)V

    iget-object p5, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-virtual {p5}, Lcn/nubia/camera/au/h;->v()Lcom/a/a/a/d;

    move-result-object p5

    invoke-interface {p5}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/Handler;

    invoke-virtual {p3, p2, p4, p5}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 204
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/au/h$a;->b:Lcn/nubia/camera/au/h;

    invoke-static {p1}, Lcn/nubia/camera/au/h;->e(Lcn/nubia/camera/au/h;)V

    return-void

    :catchall_0
    move-exception p2

    .line 204
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/au/h$a;->a:Lcn/nubia/camera/k/ab$a;

    if-eqz p1, :cond_0

    .line 188
    invoke-interface {p1, p3}, Lcn/nubia/camera/k/ab$a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method
