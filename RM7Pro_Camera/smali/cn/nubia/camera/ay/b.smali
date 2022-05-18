.class public Lcn/nubia/camera/ay/b;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ay/a$a;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ay/b$c;,
        Lcn/nubia/camera/ay/b$d;,
        Lcn/nubia/camera/ay/b$a;,
        Lcn/nubia/camera/ay/b$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/common/ui/RotateImageView;

.field protected b:Lcom/android/common/ui/RotateImageView;

.field protected c:Lcom/android/common/ui/RotateImageView;

.field private i:Lcn/nubia/camera/ay/a;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private l:Landroid/widget/RelativeLayout;

.field private final m:Landroid/os/Handler;

.field private n:Landroid/graphics/Bitmap;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Z

.field private q:Z

.field private r:Lcn/nubia/k/a/a;

.field private s:I

.field private t:Lcn/nubia/camera/ay/f;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/android/common/ui/RotateLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Lcn/nubia/camera/q/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->l:Landroid/widget/RelativeLayout;

    .line 78
    new-instance v0, Lcn/nubia/camera/ay/b$b;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/ay/b$b;-><init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->o:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcn/nubia/camera/ay/b;->p:Z

    .line 87
    iput-boolean v0, p0, Lcn/nubia/camera/ay/b;->q:Z

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->r:Lcn/nubia/k/a/a;

    .line 89
    iput v0, p0, Lcn/nubia/camera/ay/b;->s:I

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->u:Landroid/widget/RelativeLayout;

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->v:Lcom/android/common/ui/RotateLayout;

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->w:Landroid/widget/TextView;

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->x:Landroid/widget/RelativeLayout;

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->y:Lcn/nubia/camera/q/c;

    return-void
.end method

.method private J()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private K()Z
    .locals 2

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private L()V
    .locals 2

    const-string v0, "TrajectoryFragment"

    const-string v1, "cancelTrajectory"

    .line 529
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->d()V

    .line 531
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->t:Lcn/nubia/camera/ay/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/f;->u()V

    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(Z)V

    .line 534
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    .line 536
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->l()V

    return-void
.end method

.method private M()V
    .locals 1

    const/4 v0, 0x0

    .line 543
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(Z)V

    .line 544
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method private N()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    const-string v1, "TrajectoryFragment"

    if-nez v0, :cond_0

    const-string v0, "trajectory null"

    .line 549
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_3

    .line 555
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v2, :cond_3

    .line 556
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v2, :cond_3

    .line 557
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ay/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can\'t start trajectory!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 571
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->b()V

    .line 572
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 573
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(I)V

    .line 574
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/ay/b;->s:I

    return-void

    .line 558
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage enough: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/k/a/a;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; Activity pause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; FunctionState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; DeviceState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; UIState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;
    .locals 2

    .line 477
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "datetaken"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".jpg"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "_display_name"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p7, :cond_0

    .line 485
    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 486
    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ay/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 447
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 448
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 449
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 450
    sget v3, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget v3, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget v3, Lcn/nubia/d/a;->ad:I

    new-instance v4, Lcn/nubia/d/l;

    const/4 v5, 0x0

    aget v2, v2, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v3, Lcn/nubia/d/l;

    aget v1, v1, v5

    invoke-direct {v3, v1, v6}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 455
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 459
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 21

    move-object/from16 v8, p0

    .line 413
    invoke-static/range {p1 .. p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    iget v1, v8, Lcn/nubia/camera/ay/b;->s:I

    if-eqz v1, :cond_0

    .line 415
    invoke-static {v0, v1}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v13, v0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveBitmapToSd: width x height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcn/nubia/camera/ay/b;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrajectoryFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 419
    invoke-static {v9, v10}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v11

    .line 420
    iget-object v0, v8, Lcn/nubia/camera/ay/b;->r:Lcn/nubia/k/a/a;

    sget-object v1, Lcn/nubia/camera/af/a;->h:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v12

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v7

    .line 426
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 427
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-wide v3, v9

    .line 422
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/ay/b;->a(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v17

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    .line 430
    new-instance v1, Lcn/nubia/k/b/b;

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ay/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v3

    iget-object v4, v8, Lcn/nubia/camera/ay/b;->r:Lcn/nubia/k/a/a;

    .line 435
    invoke-direct {v8, v9, v10}, Lcn/nubia/camera/ay/b;->a(J)Landroid/util/SparseArray;

    move-result-object v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-lez v0, :cond_1

    new-instance v5, Lcn/nubia/m/b;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcn/nubia/m/b;-><init>(II)V

    move-object/from16 v20, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object/from16 v20, v0

    :goto_0
    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v9 .. v20}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 442
    iget-object v0, v8, Lcn/nubia/camera/ay/b;->r:Lcn/nubia/k/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    return-void
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 468
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 470
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/b;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ay/b;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcn/nubia/camera/ay/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private b(I)V
    .locals 3

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrajectoryFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string v1, "ui_change_trajectory"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->r()V

    .line 518
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 519
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 520
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ay/b;->d(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ay/b;->f(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 513
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 514
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v2, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 504
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 505
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 506
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ay/b;->c(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, v1}, Lcn/nubia/camera/ay/b;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ay/b;)Landroid/widget/ImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0903a9

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    const v0, 0x7f09034c

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902c8

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->v:Lcom/android/common/ui/RotateLayout;

    const v0, 0x7f0902ca

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->x:Landroid/widget/RelativeLayout;

    const v0, 0x7f090330

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->w:Landroid/widget/TextView;

    const v0, 0x7f090349

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->o:Landroid/widget/RelativeLayout;

    const v0, 0x7f090100

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090079

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f09007b

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->w:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f090396

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/ay/b;->a(Landroid/view/View;)V

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->j()V

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ay/b;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->s()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->r()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->L()V

    return-void
.end method

.method public static i()Lcn/nubia/camera/ay/b;
    .locals 2

    .line 200
    new-instance v0, Lcn/nubia/camera/ay/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ay/b;-><init>(I)V

    return-object v0
.end method

.method static synthetic i(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->q()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-nez v0, :cond_0

    const-string v0, "TrajectoryFragment"

    const-string v1, "initDate failed!"

    .line 164
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ay/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/ay/b$d;-><init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ay/b$c;

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/ay/b$c;-><init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcn/nubia/camera/ay/b$a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/ay/b$a;-><init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(I)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/f;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->t:Lcn/nubia/camera/ay/f;

    return-object p0
.end method

.method private l()V
    .locals 2

    const-string v0, "TrajectoryFragment"

    const-string v1, "reset"

    .line 205
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->r()V

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->o()V

    .line 208
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->J()V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->n()V

    .line 215
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->m()V

    .line 216
    invoke-static {}, Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;->CompositionCancel()V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcn/nubia/camera/ay/b;->q:Z

    .line 218
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(I)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/ay/b;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcn/nubia/camera/ay/b;->q:Z

    return p0
.end method

.method static synthetic m(Lcn/nubia/camera/ay/b;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ay/b;->l:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private m()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    .line 226
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->v:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 256
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method private r()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method private s()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->x:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 401
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 312
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 313
    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 315
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(IZ)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->a:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->c:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 274
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 276
    :cond_2
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ay/f;Lcn/nubia/k/a/a;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcn/nubia/camera/ay/a;

    iget-object v1, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    invoke-direct {v0, p1, p0, v1}, Lcn/nubia/camera/ay/a;-><init>(Lcn/nubia/camera/ay/f;Lcn/nubia/camera/ay/a$a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    .line 184
    :cond_0
    iput-object p2, p0, Lcn/nubia/camera/ay/b;->r:Lcn/nubia/k/a/a;

    .line 185
    iput-object p1, p0, Lcn/nubia/camera/ay/b;->t:Lcn/nubia/camera/ay/f;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->N()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 670
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->b()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 684
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->c(Ljava/lang/String;)V

    .line 685
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->o:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 686
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 248
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->b(Z)V

    .line 249
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->p()V

    .line 250
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->n()V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 692
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Ljava/lang/String;)V

    .line 693
    iget-object p1, p0, Lcn/nubia/camera/ay/b;->o:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 694
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .line 700
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 3

    .line 706
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->f(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/camera/d/d;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 3

    .line 644
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->b:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 646
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TrajectoryFragment"

    const-string v2, "need cancel stop: true. wait..."

    .line 647
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->L()V

    :goto_0
    return v1

    .line 652
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    return v1

    .line 653
    :cond_3
    :goto_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 109
    iget-boolean p3, p0, Lcn/nubia/camera/ay/b;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p3, "TrajectoryFragment"

    const-string v0, "onCreateView"

    .line 112
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c00d3

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "view == null"

    .line 116
    invoke-static {p3, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b;->d(Landroid/view/View;)V

    const p2, 0x7f0900ac

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/ay/b;->u:Landroid/widget/RelativeLayout;

    .line 120
    invoke-virtual {p0, p2}, Lcn/nubia/camera/ay/b;->b(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/nubia/j/a;->a(I)V

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcn/nubia/j/a;->a(I)V

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcn/nubia/j/a;->a(I)V

    .line 124
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v1, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/ay/b;->y:Lcn/nubia/camera/q/c;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcn/nubia/camera/ay/b;->d:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->g()V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->l()V

    .line 307
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 131
    iget-boolean v0, p0, Lcn/nubia/camera/ay/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->y:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 281
    iget-boolean v0, p0, Lcn/nubia/camera/ay/b;->d:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->i:Lcn/nubia/camera/ay/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/ay/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 286
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->L()V

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->k:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 292
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcn/nubia/camera/ay/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->t:Lcn/nubia/camera/ay/f;

    invoke-virtual {v0}, Lcn/nubia/camera/ay/f;->t()V

    :cond_1
    return-void
.end method

.method public p_()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/ay/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TrajectoryFragment"

    const-string v1, "onSavePicture"

    .line 239
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/ay/b;->n:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/b;->a(Landroid/graphics/Bitmap;)V

    .line 241
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->M()V

    .line 242
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->l()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcn/nubia/camera/ay/b;->q:Z

    return-void
.end method

.method public x()Z
    .locals 2

    .line 674
    iget-boolean v0, p0, Lcn/nubia/camera/ay/b;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 675
    iput-boolean v1, p0, Lcn/nubia/camera/ay/b;->p:Z

    .line 676
    invoke-direct {p0}, Lcn/nubia/camera/ay/b;->N()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
