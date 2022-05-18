.class Lcn/nubia/camera/pretty/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/e;

.field private b:Lcn/nubia/camera/aj/j;

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/e;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcn/nubia/camera/pretty/e$5;->a:Lcn/nubia/camera/pretty/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance p1, Lcn/nubia/camera/aj/j;

    invoke-direct {p1}, Lcn/nubia/camera/aj/j;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/pretty/e$5;->b:Lcn/nubia/camera/aj/j;

    .line 488
    new-instance p1, Lcn/nubia/camera/pretty/e$5$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/pretty/e$5$1;-><init>(Lcn/nubia/camera/pretty/e$5;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/e$5;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$5;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->p(Lcn/nubia/camera/pretty/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/pretty/e$5;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->o(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/a;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/camera/pretty/d;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$5;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->o(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/a;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/pretty/d;

    .line 506
    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 508
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$5;->b:Lcn/nubia/camera/aj/j;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/aj/j;->a(F)V

    .line 509
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$5;->b:Lcn/nubia/camera/aj/j;

    const v2, 0x3f2b851f    # 0.67f

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/j;->b(F)Z

    move-result v1

    if-eqz v1, :cond_2

    cmpg-float p1, p1, v2

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 511
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$5;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 512
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$5;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 515
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$5;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 516
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$5;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method
