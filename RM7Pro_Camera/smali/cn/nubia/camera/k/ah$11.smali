.class Lcn/nubia/camera/k/ah$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/q;

.field final synthetic b:Lcn/nubia/camera/k/u;

.field final synthetic c:[Lcn/nubia/b/m;

.field final synthetic d:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    iput-object p2, p0, Lcn/nubia/camera/k/ah$11;->a:Lcn/nubia/camera/k/q;

    iput-object p3, p0, Lcn/nubia/camera/k/ah$11;->b:Lcn/nubia/camera/k/u;

    iput-object p4, p0, Lcn/nubia/camera/k/ah$11;->c:[Lcn/nubia/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    .line 623
    iget-object v0, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v1}, Lcn/nubia/camera/k/ah;->c(Lcn/nubia/camera/k/ah;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object p1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 626
    monitor-exit v0

    return-void

    .line 628
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    monitor-exit v0

    return-void

    .line 631
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v1

    if-nez v1, :cond_2

    .line 632
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 636
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    const-string v3, "StreamController"

    .line 638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "afState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcn/nubia/camera/k/ab;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "; aeState: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v2}, Lcn/nubia/camera/k/ab;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eqz v2, :cond_6

    .line 639
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    .line 640
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 641
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    .line 642
    invoke-static {v3}, Lcn/nubia/camera/k/ah;->e(Lcn/nubia/camera/k/ah;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v3}, Lcn/nubia/camera/k/ah;->f(Lcn/nubia/camera/k/ah;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    .line 647
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_5

    .line 648
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    .line 649
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_7

    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2}, Lcn/nubia/camera/k/ah;->g(Lcn/nubia/camera/k/ah;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2}, Lcn/nubia/camera/k/ah;->h(Lcn/nubia/camera/k/ah;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 650
    iget-object v2, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v2}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v2

    .line 651
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 652
    iget-object v3, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v3}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v5}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v5

    new-array v6, p1, [Lcn/nubia/b/m;

    iget-object v7, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    .line 653
    invoke-static {v7}, Lcn/nubia/camera/k/ah;->i(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/n;

    move-result-object v7

    aput-object v7, v6, v4

    .line 652
    invoke-virtual {v2, v5, p1, v6}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    .line 655
    invoke-virtual {v4}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 652
    invoke-virtual {v3, v2, v1, v4}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 656
    iget-object v2, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v2}, Lcn/nubia/camera/k/ah;->j(Lcn/nubia/camera/k/ah;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 657
    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v1, p1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Z)Z

    .line 658
    iget-object p1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->a:Lcn/nubia/camera/k/q;

    iget-object v2, p0, Lcn/nubia/camera/k/ah$11;->b:Lcn/nubia/camera/k/u;

    iget-object v3, p0, Lcn/nubia/camera/k/ah$11;->c:[Lcn/nubia/b/m;

    invoke-static {p1, v1, v2, v3}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    const-string p1, "StreamController"

    const-string v1, "trigger capture"

    .line 659
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object p1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    goto :goto_2

    .line 646
    :cond_6
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v1, p1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ah;Z)Z

    .line 662
    :cond_7
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/k/ah$11;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->C()V

    .line 663
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/ah$11;->b(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/ah$11;->b(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
