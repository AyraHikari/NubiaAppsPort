.class Lcn/nubia/camera/three_a/ui/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/c;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->f(Lcn/nubia/camera/three_a/ui/c;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->g(Lcn/nubia/camera/three_a/ui/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    .line 517
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    .line 518
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->p()Z

    move-result v0

    if-nez v0, :cond_3

    .line 519
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_6

    .line 520
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    mul-float/2addr v0, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v1

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 522
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->h(Lcn/nubia/camera/three_a/ui/c;)I

    goto :goto_0

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 524
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1, v2}, Lcn/nubia/camera/three_a/ui/c;->b(Lcn/nubia/camera/three_a/ui/c;I)I

    goto :goto_0

    :cond_1
    const v0, 0x3da3d70a    # 0.08f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    .line 526
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->i(Lcn/nubia/camera/three_a/ui/c;)I

    .line 529
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->j(Lcn/nubia/camera/three_a/ui/c;)I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 530
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1, v2}, Lcn/nubia/camera/three_a/ui/c;->b(Lcn/nubia/camera/three_a/ui/c;I)I

    .line 531
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1, v2}, Lcn/nubia/camera/three_a/ui/c;->a(Lcn/nubia/camera/three_a/ui/c;Z)Z

    .line 532
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->c(Lcn/nubia/camera/three_a/ui/c;)V

    .line 533
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->r()V

    .line 534
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object p1, p1, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v0, v0, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/d/b;Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 535
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->s()V

    goto :goto_1

    .line 540
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->f(Lcn/nubia/camera/three_a/ui/c;)I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 541
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->e(Lcn/nubia/camera/three_a/ui/c;)I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    .line 542
    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->o()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->n()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {p1}, Lcn/nubia/camera/three_a/ui/c;->v()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object p1, p1, Lcn/nubia/camera/three_a/ui/c;->c:Lcn/nubia/camera/ad/a;

    .line 543
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_5

    .line 544
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/c;->c(Lcn/nubia/camera/three_a/ui/c;)V

    .line 546
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/c$3;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {p1, v2}, Lcn/nubia/camera/three_a/ui/c;->b(Lcn/nubia/camera/three_a/ui/c;I)I

    :cond_6
    :goto_1
    return-void
.end method
