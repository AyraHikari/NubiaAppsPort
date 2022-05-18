.class Lcn/nubia/b/e$a;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/e;

.field private b:Lcn/nubia/b/d$c;

.field private c:Lcn/nubia/b/d;


# direct methods
.method public constructor <init>(Lcn/nubia/b/e;Lcn/nubia/b/d$c;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    const/4 p1, 0x0

    .line 425
    iput-object p1, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    .line 427
    iput-object p2, p0, Lcn/nubia/b/e$a;->b:Lcn/nubia/b/d$c;

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 470
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHolder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-static {v0}, Lcn/nubia/b/e;->a(Lcn/nubia/b/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object p1, p0, Lcn/nubia/b/e$a;->b:Lcn/nubia/b/d$c;

    if-eqz p1, :cond_0

    .line 474
    iget-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {p1, v0}, Lcn/nubia/b/d$c;->a(Lcn/nubia/b/d;)V

    .line 476
    :cond_0
    iget-object p1, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lcn/nubia/b/d;->c()V

    :cond_1
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHolder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-static {v0}, Lcn/nubia/b/e;->a(Lcn/nubia/b/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_0
    iget-object p1, p0, Lcn/nubia/b/e$a;->b:Lcn/nubia/b/d$c;

    if-eqz p1, :cond_1

    .line 447
    iget-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {p1, v0}, Lcn/nubia/b/d$c;->b(Lcn/nubia/b/d;)V

    .line 449
    :cond_1
    iget-object p1, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    if-eqz p1, :cond_2

    .line 450
    invoke-virtual {p1}, Lcn/nubia/b/d;->c()V

    :cond_2
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHolder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-static {v0}, Lcn/nubia/b/e;->a(Lcn/nubia/b/e;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    iget-object p1, p0, Lcn/nubia/b/e$a;->b:Lcn/nubia/b/d$c;

    if-eqz p1, :cond_1

    .line 461
    iget-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/b/d$c;->a(Lcn/nubia/b/d;I)V

    .line 463
    :cond_1
    iget-object p1, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    if-eqz p1, :cond_2

    .line 464
    invoke-virtual {p1}, Lcn/nubia/b/d;->c()V

    :cond_2
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " opened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraHolder"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Lcn/nubia/b/d;

    iget-object v1, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/b/d;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    .line 434
    iget-object p1, p0, Lcn/nubia/b/e$a;->a:Lcn/nubia/b/e;

    invoke-static {p1}, Lcn/nubia/b/e;->a(Lcn/nubia/b/e;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {v0}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object p1, p0, Lcn/nubia/b/e$a;->b:Lcn/nubia/b/d$c;

    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcn/nubia/b/e$a;->c:Lcn/nubia/b/d;

    invoke-virtual {p1, v0}, Lcn/nubia/b/d$c;->c(Lcn/nubia/b/d;)V

    :cond_0
    return-void
.end method
