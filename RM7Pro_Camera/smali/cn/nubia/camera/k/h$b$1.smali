.class Lcn/nubia/camera/k/h$b$1;
.super Lcn/nubia/b/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/h$b;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/h$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/h$b;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    invoke-direct {p0}, Lcn/nubia/b/d$c;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 7

    .line 620
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    invoke-static {v0}, Lcn/nubia/camera/k/h$b;->a(Lcn/nubia/camera/k/h$b;)Lcn/nubia/camera/k/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 621
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->e()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v2, v2, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v2}, Lcn/nubia/camera/k/h;->l(Lcn/nubia/camera/k/h;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 623
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->d()[Ljava/lang/String;

    move-result-object v0

    .line 625
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 626
    iget-object v6, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v6, v6, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v6}, Lcn/nubia/camera/k/h;->l(Lcn/nubia/camera/k/h;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_2
    return v3

    :cond_3
    return v1
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "ERROR_CAMERA_SERVICE"

    goto :goto_0

    :cond_1
    const-string p1, "ERROR_CAMERA_DEVICE"

    goto :goto_0

    :cond_2
    const-string p1, "ERROR_MAX_CAMERAS_IN_USE"

    goto :goto_0

    :cond_3
    const-string p1, "ERROR_CAMERA_IN_USE"

    :goto_0
    return-object p1
.end method

.method public a(Lcn/nubia/b/d;)V
    .locals 0

    .line 560
    invoke-super {p0, p1}, Lcn/nubia/b/d$c;->a(Lcn/nubia/b/d;)V

    return-void
.end method

.method public a(Lcn/nubia/b/d;I)V
    .locals 5

    const-string v0, ")"

    const-string v1, "("

    const-string v2, "CameraOpener"

    if-eqz p1, :cond_0

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " open fail:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcn/nubia/camera/k/h$b$1;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera open fail: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcn/nubia/camera/k/h$b$1;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    sget-object p2, Lcn/nubia/camera/d$a;->c:Lcn/nubia/camera/d$a;

    invoke-static {p1, p2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V

    .line 591
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->a()V

    return-void
.end method

.method public b(Lcn/nubia/b/d;)V
    .locals 2

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->k(Lcn/nubia/camera/k/h;)V

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->v()V

    .line 567
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->j(Lcn/nubia/camera/k/h;)V

    if-eqz p1, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " disconnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOpener"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :catch_0
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->l(Lcn/nubia/camera/k/h;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 578
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->a()V

    .line 580
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->m(Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public c(Lcn/nubia/b/d;)V
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " open success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOpener"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/b/d;)V

    .line 598
    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->l(Lcn/nubia/camera/k/h;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/b/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 599
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->a()V

    .line 600
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 602
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->i(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "return whn paused"

    .line 603
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 607
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/h$b$1;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 608
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    invoke-static {p1}, Lcn/nubia/camera/k/h$b;->a(Lcn/nubia/camera/k/h$b;)Lcn/nubia/camera/k/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 609
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    invoke-static {p1}, Lcn/nubia/camera/k/h$b;->a(Lcn/nubia/camera/k/h$b;)Lcn/nubia/camera/k/g;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-interface {p1, v0}, Lcn/nubia/camera/k/g;->a(Lcn/nubia/camera/k/h;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->n(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/k/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 611
    iget-object p1, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object p1, p1, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->n(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/k/g;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/h$b$1;->a:Lcn/nubia/camera/k/h$b;

    iget-object v0, v0, Lcn/nubia/camera/k/h$b;->a:Lcn/nubia/camera/k/h;

    invoke-interface {p1, v0}, Lcn/nubia/camera/k/g;->a(Lcn/nubia/camera/k/h;)V

    goto :goto_0

    :cond_2
    const-string p1, "camera open isn\'t done"

    .line 615
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
