.class public Lcn/nubia/camera/prisma/c;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prisma/a;
.implements Lcn/nubia/camera/z/e;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field a:Lcn/nubia/camera/an/a$a;

.field private b:Lcn/nubia/camera/prisma/h;

.field private c:Lcn/nubia/camera/q/c;

.field private i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lcn/nubia/camera/prisma/i;

.field private n:I

.field private o:Ljava/lang/Integer;

.field private p:Lcn/nubia/camera/prisma/g;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private s:Lcn/nubia/camera/k/o;

.field private t:Lcn/nubia/camera/k/u;

.field private u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

.field private v:Lcn/nubia/i/o;

.field private w:Lcn/nubia/i/b;

.field private x:Lcn/nubia/camera/zoom/arc/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->c:Lcn/nubia/camera/q/c;

    .line 92
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcn/nubia/camera/prisma/c;->l:I

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    .line 99
    iput v1, p0, Lcn/nubia/camera/prisma/c;->n:I

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prisma/c;->o:Ljava/lang/Integer;

    .line 133
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 211
    new-instance v1, Lcn/nubia/camera/prisma/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prisma/c$1;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v1, p0, Lcn/nubia/camera/prisma/c;->a:Lcn/nubia/camera/an/a$a;

    .line 298
    new-instance v1, Lcn/nubia/camera/prisma/c$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prisma/c$4;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v1, p0, Lcn/nubia/camera/prisma/c;->s:Lcn/nubia/camera/k/o;

    .line 674
    new-instance v1, Lcn/nubia/camera/prisma/c$10;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prisma/c$10;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v1, p0, Lcn/nubia/camera/prisma/c;->t:Lcn/nubia/camera/k/u;

    .line 840
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    .line 856
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->x:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->c:Lcn/nubia/camera/q/c;

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lcn/nubia/camera/prisma/c;->l:I

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    .line 99
    iput v0, p0, Lcn/nubia/camera/prisma/c;->n:I

    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->o:Ljava/lang/Integer;

    .line 133
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    .line 134
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 211
    new-instance v0, Lcn/nubia/camera/prisma/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$1;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->a:Lcn/nubia/camera/an/a$a;

    .line 298
    new-instance v0, Lcn/nubia/camera/prisma/c$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$4;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->s:Lcn/nubia/camera/k/o;

    .line 674
    new-instance v0, Lcn/nubia/camera/prisma/c$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$10;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->t:Lcn/nubia/camera/k/u;

    .line 840
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    .line 856
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->x:Lcn/nubia/camera/zoom/arc/a$a;

    return-void
.end method

.method private J()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-eqz v0, :cond_0

    .line 850
    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->w:Lcn/nubia/i/b;

    invoke-virtual {v0, v1}, Lcn/nubia/i/o;->b(Lcn/nubia/i/b;)V

    .line 851
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    invoke-virtual {v0}, Lcn/nubia/i/o;->c()V

    const/4 v0, 0x0

    .line 852
    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 858
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    new-instance v0, Lcn/nubia/camera/prisma/c$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$3;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->x:Lcn/nubia/camera/zoom/arc/a$a;

    .line 880
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->x:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .line 885
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->x:Lcn/nubia/camera/zoom/arc/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 658
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 659
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".jpg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 662
    invoke-static {p2}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "latitude"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 669
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    return-object v0
.end method

.method private a(J)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 614
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 615
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 616
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 617
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 618
    iget-object v3, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    invoke-virtual {v3}, Lcn/nubia/camera/prisma/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v3

    sget-wide v5, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v3, v5

    long-to-int v3, v3

    .line 619
    sget v4, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 620
    sget v4, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 621
    sget v4, Lcn/nubia/d/a;->ad:I

    new-instance v5, Lcn/nubia/d/l;

    const/4 v6, 0x0

    .line 639
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    .line 621
    aget v2, v2, v6

    const v8, 0x3c23d70a    # 0.01f

    invoke-direct {v5, v2, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    sget v2, Lcn/nubia/d/a;->H:I

    new-instance v4, Lcn/nubia/d/l;

    aget v1, v1, v6

    invoke-direct {v4, v1, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 623
    sget v1, Lcn/nubia/d/a;->G:I

    new-instance v2, Lcn/nubia/d/l;

    int-to-float v3, v3

    invoke-direct {v2, v3, v8}, Lcn/nubia/d/l;-><init>(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 625
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {v1, v2, p1, p2, v0}, Lcn/nubia/camera/ba/a;->a(DDLandroid/util/SparseArray;)V

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    .line 630
    invoke-virtual {p1}, Lcn/nubia/camera/prisma/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->O()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 631
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->o:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 633
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 634
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 636
    :cond_2
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_3
    sget p1, Lcn/nubia/d/a;->ac:I

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 641
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/c;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->o:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 18

    if-eqz p1, :cond_2

    .line 585
    invoke-static/range {p1 .. p2}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_0
    sget-object v0, Lcn/nubia/camera/prisma/c;->j:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 593
    invoke-static {v8, v9}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v13

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    .line 595
    new-instance v14, Lcn/nubia/k/b/b;

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v3

    move-object/from16 v15, p0

    .line 600
    invoke-direct {v15, v8, v9}, Lcn/nubia/camera/prisma/c;->a(J)Landroid/util/SparseArray;

    move-result-object v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 603
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v13

    invoke-direct/range {v5 .. v12}, Lcn/nubia/camera/prisma/c;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-lez v0, :cond_1

    new-instance v5, Lcn/nubia/m/b;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcn/nubia/m/b;-><init>(II)V

    move-object v11, v5

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v11, v0

    :goto_1
    move-object v0, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v13

    invoke-direct/range {v0 .. v11}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    goto :goto_2

    :cond_2
    move-object/from16 v15, p0

    const-string v0, "PrismaFragment"

    const-string v1, "bitmap == null"

    .line 609
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
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

    .line 646
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 650
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 652
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/c;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/c;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 503
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->k:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/prisma/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Z)V
    .locals 2

    .line 714
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 715
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 717
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(ILcn/nubia/camera/af/a;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/i;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->e(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->f(Landroid/view/View;)V

    const v0, 0x7f090263

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f090265

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 140
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prisma/c;->a(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/b;->a(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method static synthetic e(Lcn/nubia/camera/prisma/c;)I
    .locals 0

    .line 86
    iget p0, p0, Lcn/nubia/camera/prisma/c;->n:I

    return p0
.end method

.method public static e()Lcn/nubia/camera/prisma/c;
    .locals 2

    .line 112
    new-instance v0, Lcn/nubia/camera/prisma/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/prisma/c;-><init>(I)V

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 4

    .line 334
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f090267

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    .line 339
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 341
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/prisma/c$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$5;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    .line 364
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/prisma/c$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$6;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setItemClickListener(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;)V

    .line 373
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/prisma/c$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$7;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setGotoPrismaPageListener(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;)V

    .line 379
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->m()Ljava/util/ArrayList;

    move-result-object p1

    .line 380
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->u()Lcom/android/preference/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/util/ArrayList;Landroid/content/Context;Lcom/android/preference/c;Z)V

    .line 382
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aO()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->n()V

    .line 386
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901c0

    .line 788
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 789
    instance-of v0, p1, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 790
    check-cast p1, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    .line 794
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V

    .line 795
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)V

    .line 796
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    new-instance v0, Lcn/nubia/camera/prisma/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$2;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setDrawerListener(Lcom/android/common/ui/f$a;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/g;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private m()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    .line 393
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 394
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f03003f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v4, v4, [I

    move v5, v3

    .line 400
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 401
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 403
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 407
    new-instance v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    aget-object v6, v0, v3

    aget v7, v4, v3

    aget v8, v2, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system/etc/imagestyle/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method static synthetic n(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 5

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-nez v0, :cond_0

    return-void

    .line 420
    :cond_0
    new-instance v0, Lcn/nubia/camera/prisma/c$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/prisma/c$8;-><init>(Lcn/nubia/camera/prisma/c;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->w:Lcn/nubia/i/b;

    .line 467
    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    invoke-virtual {v1, v0}, Lcn/nubia/i/o;->a(Lcn/nubia/i/b;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/i/l;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcn/nubia/i/l;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/prisma/c$9;

    invoke-direct {v2, p0}, Lcn/nubia/camera/prisma/c$9;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/i/o;->a(Ljava/lang/String;Lcn/nubia/i/a;)V

    return-void
.end method

.method private o()V
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/prisma/c;->j:Ljava/lang/String;

    return-void
.end method

.method private p()V
    .locals 4

    const-string v0, "ui_change_prisma"

    .line 692
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->d(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->f(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v3, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 697
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->b(Z)V

    .line 698
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v3, :cond_0

    .line 699
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const v3, 0x7f0f02e4

    invoke-virtual {p0, v3}, Lcn/nubia/camera/prisma/c;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->r:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 708
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->b(Z)V

    .line 710
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 5

    .line 769
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01fd

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prisma/c;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_online_camera_prisma_key"

    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "online"

    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "/system/etc/imagestyle/"

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->aO()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/"

    .line 771
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 772
    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/i/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_dlc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 782
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prisma/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 779
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 3

    .line 843
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    new-instance v0, Lcn/nubia/i/o;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09026c

    invoke-direct {v0, v1, v2}, Lcn/nubia/i/o;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 251
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(IZ)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/prisma/i;->a(IZ)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 545
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/h;->u()V

    const-string v0, "ui_change_prisma"

    .line 546
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->c(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->e(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->b(Z)V

    .line 555
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 556
    iget v0, p0, Lcn/nubia/camera/prisma/c;->l:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/prisma/c;->a(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public a(Lcn/nubia/camera/prisma/h;Lcn/nubia/k/a/a;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 821
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_3

    .line 822
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_3

    .line 823
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 830
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->f()Z

    move-result p1

    return p1

    .line 833
    :cond_2
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 5

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    const-string v1, "PrismaFragment"

    if-nez v0, :cond_0

    const-string v0, "mPrismaProcessor is null..just return.."

    .line 278
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Device id not idle.."

    .line 282
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    iget-object v2, p0, Lcn/nubia/camera/prisma/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mPrismaExecutor is working.."

    .line 286
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    new-instance v1, Lcn/nubia/camera/g/h;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;Z)V

    iget-object v2, p0, Lcn/nubia/camera/prisma/c;->s:Lcn/nubia/camera/k/o;

    iget-object v3, p0, Lcn/nubia/camera/prisma/c;->t:Lcn/nubia/camera/k/u;

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/prisma/h;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prisma/c;->l:I

    .line 293
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 294
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->p()V

    :cond_3
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 509
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->q()V

    const-string v0, "ui_change_prisma"

    .line 510
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->c(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->e(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    if-eqz p1, :cond_1

    .line 524
    iget v0, p0, Lcn/nubia/camera/prisma/c;->l:I

    invoke-static {p1, v0}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 525
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->d(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-direct {p0, p1, v2}, Lcn/nubia/camera/prisma/c;->a(Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "ui_change_prisma"

    .line 533
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->d(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->f(Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->q()V

    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/prisma/i;->b(Landroid/graphics/Bitmap;)V

    .line 539
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/h;->t()V

    .line 540
    iget-object p1, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->b(Z)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->b:Lcn/nubia/camera/prisma/h;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/h;->u()V

    const-string v0, "ui_change_prisma"

    .line 562
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->c(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->e(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 568
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->b(Z)V

    .line 571
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 892
    invoke-super {p0}, Lcn/nubia/camera/q/a;->f()V

    .line 893
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0}, Lcn/nubia/i/o;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 900
    invoke-super {p0}, Lcn/nubia/camera/q/a;->g()V

    .line 901
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0}, Lcn/nubia/i/o;->a()V

    :cond_0
    return-void
.end method

.method public g_()V
    .locals 3

    .line 723
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-eqz v0, :cond_0

    .line 743
    new-instance v1, Lcn/nubia/camera/prisma/c$11;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prisma/c$11;-><init>(Lcn/nubia/camera/prisma/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/i/o;->a(Lcn/nubia/i/o$a;)V

    .line 756
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    invoke-virtual {v0}, Lcn/nubia/i/o;->d()Z

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->e(Landroid/view/View;)V

    return-void
.end method

.method public j()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 762
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/i/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->v:Lcn/nubia/i/o;

    invoke-virtual {v0}, Lcn/nubia/i/o;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 734
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 119
    iget-boolean p3, p0, Lcn/nubia/camera/prisma/c;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c008d

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->s()V

    .line 124
    invoke-direct {p0, p1}, Lcn/nubia/camera/prisma/c;->d(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->o()V

    .line 126
    new-instance p2, Lcn/nubia/camera/prisma/i;

    invoke-direct {p2, p1}, Lcn/nubia/camera/prisma/i;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    .line 127
    invoke-virtual {p2, p0}, Lcn/nubia/camera/prisma/i;->a(Lcn/nubia/camera/prisma/a;)V

    .line 128
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, p3, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/prisma/c;->c:Lcn/nubia/camera/q/c;

    .line 129
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->K()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    .line 194
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 201
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 202
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/i;->a(Lcn/nubia/camera/prisma/a;)V

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->c:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->J()V

    .line 208
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->L()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 179
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->q()V

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    .line 184
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->a:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->b(Lcn/nubia/camera/an/a$a;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcn/nubia/camera/prisma/g;->a()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 146
    iget-boolean v0, p0, Lcn/nubia/camera/prisma/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget v0, p0, Lcn/nubia/camera/prisma/c;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 150
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/prisma/c;->n:I

    .line 152
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/prisma/c;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->k:Ljava/lang/String;

    .line 153
    new-instance v0, Lcn/nubia/camera/prisma/g;

    invoke-direct {v0}, Lcn/nubia/camera/prisma/g;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prisma/c;->p:Lcn/nubia/camera/prisma/g;

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/g;->b(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a()V

    .line 160
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->m:Lcn/nubia/camera/prisma/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/i;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ui_change_prisma"

    .line 161
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->c(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/c;->e(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->i:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/c;->b(Z)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/prisma/c;->u:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->setVisibility(I)V

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/c;->a:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;)V

    return-void
.end method
