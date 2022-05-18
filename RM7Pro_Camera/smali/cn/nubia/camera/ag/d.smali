.class public Lcn/nubia/camera/ag/d;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/w/a$a;
.implements Lcn/nubia/camera/w/a$c;
.implements Lcn/nubia/camera/z/e;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ag/d$d;,
        Lcn/nubia/camera/ag/d$b;,
        Lcn/nubia/camera/ag/d$c;,
        Lcn/nubia/camera/ag/d$a;
    }
.end annotation


# instance fields
.field private A:F

.field private B:Landroid/graphics/Point;

.field private C:F

.field private D:F

.field private E:[B

.field private F:Lcn/nubia/camera/ag/c;

.field private G:Landroid/graphics/Matrix;

.field private H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Lcn/nubia/camera/ag/d$d;

.field private L:Z

.field private M:Lcn/nubia/camera/ag/d$b;

.field private N:Lcn/nubia/camera/aj/i;

.field private O:Lcn/nubia/camera/v/b$c;

.field private a:I

.field private b:I

.field private c:I

.field private i:Lcn/nubia/camera/ag/a;

.field private j:Lcn/nubia/camera/v/b;

.field private k:F

.field private l:Lcn/nubia/camera/ag/b;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Lcn/nubia/camera/ag/h;

.field private r:Lcn/nubia/camera/ag/d$a;

.field private s:Landroid/graphics/RectF;

.field private t:Landroid/graphics/Rect;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Landroid/graphics/Rect;

.field private y:Landroid/graphics/Rect;

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 113
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/high16 v0, 0x43340000    # 180.0f

    .line 78
    iput v0, p0, Lcn/nubia/camera/ag/d;->k:F

    .line 86
    new-instance v0, Lcn/nubia/camera/ag/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/ag/d$a;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->r:Lcn/nubia/camera/ag/d$a;

    .line 87
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->s:Landroid/graphics/RectF;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/16 v3, 0x1230

    const/16 v4, 0xda8

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->t:Landroid/graphics/Rect;

    const/16 v0, 0xb4

    .line 89
    iput v0, p0, Lcn/nubia/camera/ag/d;->u:I

    iput v0, p0, Lcn/nubia/camera/ag/d;->v:I

    .line 91
    iput-boolean v2, p0, Lcn/nubia/camera/ag/d;->w:Z

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    const/16 v3, 0x21c

    const/16 v4, 0x2d0

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    .line 97
    iget v0, p0, Lcn/nubia/camera/ag/d;->v:I

    iget v3, p0, Lcn/nubia/camera/ag/d;->u:I

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->E:[B

    .line 106
    iput-boolean v2, p0, Lcn/nubia/camera/ag/d;->L:Z

    .line 109
    new-instance v0, Lcn/nubia/camera/ag/d$b;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/ag/d$b;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->M:Lcn/nubia/camera/ag/d$b;

    .line 110
    new-instance v0, Lcn/nubia/camera/ag/d$c;

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/ag/d$c;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->N:Lcn/nubia/camera/aj/i;

    .line 721
    new-instance v0, Lcn/nubia/camera/ag/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ag/d$1;-><init>(Lcn/nubia/camera/ag/d;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->O:Lcn/nubia/camera/v/b$c;

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/ag/h;)V
    .locals 4

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/high16 p1, 0x43340000    # 180.0f

    .line 78
    iput p1, p0, Lcn/nubia/camera/ag/d;->k:F

    .line 86
    new-instance p1, Lcn/nubia/camera/ag/d$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/ag/d$a;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->r:Lcn/nubia/camera/ag/d$a;

    .line 87
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->s:Landroid/graphics/RectF;

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x1230

    const/16 v3, 0xda8

    invoke-direct {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->t:Landroid/graphics/Rect;

    const/16 p1, 0xb4

    .line 89
    iput p1, p0, Lcn/nubia/camera/ag/d;->u:I

    iput p1, p0, Lcn/nubia/camera/ag/d;->v:I

    .line 91
    iput-boolean v1, p0, Lcn/nubia/camera/ag/d;->w:Z

    .line 92
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 95
    new-instance p1, Landroid/graphics/Point;

    const/16 v2, 0x21c

    const/16 v3, 0x2d0

    invoke-direct {p1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    .line 97
    iget p1, p0, Lcn/nubia/camera/ag/d;->v:I

    iget v2, p0, Lcn/nubia/camera/ag/d;->u:I

    mul-int/2addr p1, v2

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->E:[B

    .line 106
    iput-boolean v1, p0, Lcn/nubia/camera/ag/d;->L:Z

    .line 109
    new-instance p1, Lcn/nubia/camera/ag/d$b;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/ag/d$b;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->M:Lcn/nubia/camera/ag/d$b;

    .line 110
    new-instance p1, Lcn/nubia/camera/ag/d$c;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/ag/d$c;-><init>(Lcn/nubia/camera/ag/d;Lcn/nubia/camera/ag/d$1;)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->N:Lcn/nubia/camera/aj/i;

    .line 721
    new-instance p1, Lcn/nubia/camera/ag/d$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/ag/d$1;-><init>(Lcn/nubia/camera/ag/d;)V

    iput-object p1, p0, Lcn/nubia/camera/ag/d;->O:Lcn/nubia/camera/v/b$c;

    .line 119
    iput-object p2, p0, Lcn/nubia/camera/ag/d;->q:Lcn/nubia/camera/ag/h;

    return-void
.end method

.method private J()Z
    .locals 2

    .line 609
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private K()Z
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    return v0
.end method

.method private L()Landroid/graphics/Matrix;
    .locals 6

    .line 705
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

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

    .line 706
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 707
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 708
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v5, v4

    .line 709
    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 710
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 711
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v3, :cond_2

    rsub-int v3, v0, 0x168

    int-to-float v3, v3

    goto :goto_2

    :cond_2
    int-to-float v3, v0

    .line 712
    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 713
    rem-int/lit16 v0, v0, 0xb4

    const/16 v3, 0x5a

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    .line 714
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3

    .line 716
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_3
    return-object v2
.end method

.method private M()V
    .locals 2

    .line 811
    iget-boolean v0, p0, Lcn/nubia/camera/ag/d;->L:Z

    if-eqz v0, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->N()V

    .line 815
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->I:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 818
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    const-string v0, "ui_change_microspur"

    .line 819
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private N()V
    .locals 3

    .line 823
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->K:Lcn/nubia/camera/ag/d$d;

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/ag/d$d;->a()V

    .line 829
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->K:Lcn/nubia/camera/ag/d$d;

    invoke-virtual {v0}, Lcn/nubia/camera/ag/d$d;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicrospurFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->M:Lcn/nubia/camera/ag/d$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/d$b;->removeMessages(I)V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcn/nubia/camera/ag/d;->K:Lcn/nubia/camera/ag/d$d;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;F)F
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/camera/ag/d;->C:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/ag/d;->G:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/ag/h;)Lcn/nubia/camera/ag/d;
    .locals 2

    .line 785
    new-instance v0, Lcn/nubia/camera/ag/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/ag/d;-><init>(ILcn/nubia/camera/ag/h;)V

    return-object v0
.end method

.method private a(FF)V
    .locals 4

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p2, v2

    sub-float/2addr v1, p2

    .line 262
    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ag/a;->b(FF)V

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 801
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->I:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    const-string v0, "ui_change_microspur"

    .line 805
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/d;->d(Ljava/lang/String;)V

    .line 806
    new-instance v0, Lcn/nubia/camera/ag/d$d;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/ag/d$d;-><init>(Lcn/nubia/camera/ag/d;J)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->K:Lcn/nubia/camera/ag/d$d;

    .line 807
    invoke-virtual {v0}, Lcn/nubia/camera/ag/d$d;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;FF)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->d(FF)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->a(II)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;J)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->a(J)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/ag/d;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->K()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/ag/d;F)F
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/camera/ag/d;->D:F

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/h;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->q:Lcn/nubia/camera/ag/h;

    return-object p0
.end method

.method private b(FF)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    .line 271
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p2, v2

    sub-float/2addr v1, p2

    .line 270
    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/ag/a;->a(FF)V

    return-void
.end method

.method private b(II)V
    .locals 3

    .line 763
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcn/nubia/camera/ag/d;->u:I

    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    .line 764
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    div-int/lit8 v1, v1, 0x2

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcn/nubia/camera/ag/d;->u:I

    div-int/lit8 v2, v1, 0x2

    sub-int v2, p1, v2

    if-le v0, v2, :cond_1

    .line 766
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 768
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcn/nubia/camera/ag/d;->v:I

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 769
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcn/nubia/camera/ag/d;->v:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 770
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcn/nubia/camera/ag/d;->v:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    if-le p1, v0, :cond_3

    .line 771
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcn/nubia/camera/ag/d;->v:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ag/d;FF)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->b(FF)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ag/d;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->b(II)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ag/d;)Landroid/graphics/Matrix;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->G:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private c(FF)V
    .locals 6

    .line 514
    iget v0, p0, Lcn/nubia/camera/ag/d;->a:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_7

    .line 515
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/ag/d;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    goto/16 :goto_4

    .line 520
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 521
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 523
    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v2, v1

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    int-to-float p1, v1

    add-float/2addr p1, v0

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_2

    .line 527
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 531
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/nubia/camera/ag/d;->a:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    .line 536
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/ag/d;->b:I

    sub-int/2addr v3, v4

    if-gt v1, v3, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v2, v4

    .line 541
    :goto_2
    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    add-float v3, v0, v1

    iget v4, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_5

    add-float/2addr v0, v1

    int-to-float p2, v4

    add-float/2addr p2, v0

    goto :goto_3

    .line 544
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_6

    .line 545
    iget-object p2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v2

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 547
    :cond_6
    :goto_3
    iput p1, p0, Lcn/nubia/camera/ag/d;->z:F

    .line 548
    iput p2, p0, Lcn/nubia/camera/ag/d;->A:F

    .line 549
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->a(FF)V

    return-void

    :cond_7
    :goto_4
    const-string p1, "MicrospurFragment"

    const-string p2, "ignore click in top bar or bottom bar"

    .line 516
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ag/d;)Landroid/graphics/Matrix;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->L()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private d(FF)V
    .locals 3

    .line 557
    iget v0, p0, Lcn/nubia/camera/ag/d;->a:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_5

    .line 558
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/ag/d;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    goto :goto_2

    .line 563
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 564
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 566
    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    div-float p1, v0, v1

    goto :goto_0

    .line 569
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/camera/ag/d;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 570
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 572
    :cond_2
    :goto_0
    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    div-float v2, v0, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    div-float p2, v0, v1

    goto :goto_1

    .line 575
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/camera/ag/d;->k:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    cmpg-float v0, v0, p2

    if-gez v0, :cond_4

    .line 576
    iget-object p2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    .line 579
    :cond_4
    :goto_1
    iput p1, p0, Lcn/nubia/camera/ag/d;->C:F

    .line 580
    iput p2, p0, Lcn/nubia/camera/ag/d;->D:F

    float-to-int p1, p1

    float-to-int p2, p2

    .line 581
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->a(II)V

    .line 582
    iget p1, p0, Lcn/nubia/camera/ag/d;->C:F

    iget p2, p0, Lcn/nubia/camera/ag/d;->D:F

    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->b(FF)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "MicrospurFragment"

    const-string p2, "ignore click in top bar or bottom bar"

    .line 559
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0902f8

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f0901b8

    .line 470
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->I:Landroid/widget/ImageView;

    const v0, 0x7f0902f7

    .line 471
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->J:Landroid/widget/RelativeLayout;

    .line 472
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/d;->a(Landroid/view/View;)V

    const v0, 0x7f090079

    .line 473
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/ag/d;)Landroid/graphics/RectF;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->s:Landroid/graphics/RectF;

    return-object p0
.end method

.method private e(FF)Z
    .locals 4

    .line 617
    iget v0, p0, Lcn/nubia/camera/ag/d;->z:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p0, Lcn/nubia/camera/ag/d;->A:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    float-to-double v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic f(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->t:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/ag/d;)Landroid/graphics/Rect;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/ag/d;)F
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/camera/ag/d;->C:F

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/ag/d;)F
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/camera/ag/d;->D:F

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->j:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/ag/d;)Landroid/graphics/Point;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->B:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/ag/d;)I
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/camera/ag/d;->u:I

    return p0
.end method

.method static synthetic m(Lcn/nubia/camera/ag/d;)I
    .locals 0

    .line 63
    iget p0, p0, Lcn/nubia/camera/ag/d;->v:I

    return p0
.end method

.method static synthetic n(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/a;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    return-object p0
.end method

.method private o()Z
    .locals 3

    .line 459
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x7f0f01f5

    .line 462
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_camera_microspur_magnifier"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 464
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic p(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcn/nubia/camera/ag/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ag/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    .line 479
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->s()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    .line 481
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/ag/d;->k:F

    .line 482
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->b(Z)V

    .line 483
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->a(F)V

    .line 484
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->q()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 488
    iget v0, p0, Lcn/nubia/camera/ag/d;->C:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/camera/ag/d;->D:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/camera/ag/d;->C:F

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/camera/ag/d;->D:F

    .line 492
    :cond_0
    iget v0, p0, Lcn/nubia/camera/ag/d;->C:F

    float-to-int v0, v0

    iget v2, p0, Lcn/nubia/camera/ag/d;->D:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/ag/d;->a(II)V

    .line 493
    iget v0, p0, Lcn/nubia/camera/ag/d;->C:F

    iget v2, p0, Lcn/nubia/camera/ag/d;->D:F

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/ag/d;->b(FF)V

    .line 494
    iget v0, p0, Lcn/nubia/camera/ag/d;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/ag/d;->z:F

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/nubia/camera/ag/d;->a:I

    if-lt v0, v1, :cond_1

    .line 497
    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/ag/d;->A:F

    goto :goto_0

    :cond_1
    int-to-float v0, v1

    .line 499
    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/ag/d;->A:F

    .line 502
    :cond_2
    :goto_0
    iget v0, p0, Lcn/nubia/camera/ag/d;->z:F

    iget v1, p0, Lcn/nubia/camera/ag/d;->A:F

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/ag/d;->a(FF)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcn/nubia/camera/ag/b;->a()V

    .line 592
    iput-object v1, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    .line 594
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0}, Lcn/nubia/camera/ag/a;->a()V

    .line 596
    iput-object v1, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    .line 598
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->j:Lcn/nubia/camera/v/b;

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 600
    iput-object v1, p0, Lcn/nubia/camera/ag/d;->j:Lcn/nubia/camera/v/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()Lcom/android/common/c/e;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcn/nubia/camera/ag/d;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->M()V

    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/ag/d;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->H:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/ag/d;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcn/nubia/camera/ag/d;->L:Z

    return p0
.end method

.method static synthetic v(Lcn/nubia/camera/ag/d;)Lcn/nubia/camera/ag/d$b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/ag/d;->M:Lcn/nubia/camera/ag/d$b;

    return-object p0
.end method


# virtual methods
.method public E()V
    .locals 0

    .line 796
    invoke-super {p0}, Lcn/nubia/camera/q/a;->E()V

    .line 797
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->r()V

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 791
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 1

    .line 393
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 394
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 396
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getActivity()Landroid/app/Activity;

    move-result-object p3

    check-cast p3, Lcn/nubia/camera/a/a;

    invoke-virtual {p3}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcn/nubia/camera/ag/d;->x:Landroid/graphics/Rect;

    .line 398
    iget-object p2, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 399
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/ag/d;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 400
    iput p1, p0, Lcn/nubia/camera/ag/d;->C:F

    .line 401
    iput p1, p0, Lcn/nubia/camera/ag/d;->D:F

    .line 402
    iput p1, p0, Lcn/nubia/camera/ag/d;->z:F

    .line 403
    iput p1, p0, Lcn/nubia/camera/ag/d;->A:F

    .line 404
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->q()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 0

    .line 641
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->n()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 229
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->d(Z)V

    if-eqz p2, :cond_2

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->l()V

    :cond_2
    const p1, 0x7f0f03bd

    .line 234
    invoke-virtual {p0, p1}, Lcn/nubia/camera/ag/d;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f0224

    invoke-virtual {p0, v1}, Lcn/nubia/camera/ag/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_capture_focus_up_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 235
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->K()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->b()V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 367
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 373
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/ag/d;->d(FF)V

    .line 374
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/ag/d;->c(FF)V

    :cond_1
    :goto_0
    return v1
.end method

.method public b()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->F:Lcn/nubia/camera/ag/c;

    invoke-virtual {v0}, Lcn/nubia/camera/ag/c;->a()V

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_0

    .line 277
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_9

    const/4 v1, 0x2

    if-eq v4, v1, :cond_2

    goto/16 :goto_4

    .line 304
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/camera/ag/d;->w:Z

    if-eqz v1, :cond_c

    .line 305
    iget p1, p0, Lcn/nubia/camera/ag/d;->o:F

    sub-float/2addr v0, p1

    .line 306
    iget p1, p0, Lcn/nubia/camera/ag/d;->p:F

    sub-float/2addr v3, p1

    .line 308
    iget p1, p0, Lcn/nubia/camera/ag/d;->z:F

    add-float v1, p1, v0

    iget v4, p0, Lcn/nubia/camera/ag/d;->k:F

    iget v6, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v7, v6

    add-float/2addr v7, v4

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_3

    int-to-float v0, v6

    add-float/2addr v4, v0

    sub-float/2addr v4, p1

    .line 309
    iput v4, p0, Lcn/nubia/camera/ag/d;->m:F

    goto :goto_0

    .line 311
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcn/nubia/camera/ag/d;->z:F

    add-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->z:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/ag/d;->m:F

    goto :goto_0

    .line 315
    :cond_4
    iput v0, p0, Lcn/nubia/camera/ag/d;->m:F

    .line 319
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcn/nubia/camera/ag/d;->a:I

    if-lt p1, v0, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    int-to-float p1, v0

    .line 324
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v1

    iget v4, p0, Lcn/nubia/camera/ag/d;->b:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_6

    goto :goto_2

    :cond_6
    int-to-float v2, v4

    .line 329
    :goto_2
    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    add-float v1, v0, v3

    iget v4, p0, Lcn/nubia/camera/ag/d;->k:F

    add-float v6, p1, v4

    iget v7, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v8, v7

    add-float/2addr v6, v8

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_7

    add-float/2addr p1, v4

    int-to-float v1, v7

    add-float/2addr p1, v1

    sub-float/2addr p1, v0

    .line 330
    iput p1, p0, Lcn/nubia/camera/ag/d;->n:F

    goto :goto_3

    .line 332
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v2

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_8

    .line 333
    iget-object p1, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v2

    iget v0, p0, Lcn/nubia/camera/ag/d;->k:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->c:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/ag/d;->n:F

    goto :goto_3

    .line 336
    :cond_8
    iput v3, p0, Lcn/nubia/camera/ag/d;->n:F

    .line 339
    :goto_3
    iget p1, p0, Lcn/nubia/camera/ag/d;->z:F

    iget v0, p0, Lcn/nubia/camera/ag/d;->m:F

    add-float/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    iget v1, p0, Lcn/nubia/camera/ag/d;->n:F

    add-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/ag/d;->a(FF)V

    return v5

    .line 344
    :cond_9
    iget-boolean v0, p0, Lcn/nubia/camera/ag/d;->w:Z

    if-eqz v0, :cond_a

    .line 345
    iget p1, p0, Lcn/nubia/camera/ag/d;->z:F

    iget v0, p0, Lcn/nubia/camera/ag/d;->m:F

    add-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/ag/d;->z:F

    .line 346
    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    iget v3, p0, Lcn/nubia/camera/ag/d;->n:F

    add-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/camera/ag/d;->A:F

    .line 347
    iput v2, p0, Lcn/nubia/camera/ag/d;->m:F

    .line 348
    iput v2, p0, Lcn/nubia/camera/ag/d;->n:F

    .line 349
    iput-boolean v1, p0, Lcn/nubia/camera/ag/d;->w:Z

    .line 350
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/ag/d;->a(FF)V

    return v5

    .line 354
    :cond_a
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->K()Z

    move-result v0

    if-nez v0, :cond_c

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->r:Lcn/nubia/camera/ag/d$a;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/d$a;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->r:Lcn/nubia/camera/ag/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/d$a;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 294
    :cond_b
    invoke-direct {p0, v0, v3}, Lcn/nubia/camera/ag/d;->e(FF)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 295
    iput-boolean v5, p0, Lcn/nubia/camera/ag/d;->w:Z

    .line 296
    iput v0, p0, Lcn/nubia/camera/ag/d;->o:F

    .line 297
    iput v3, p0, Lcn/nubia/camera/ag/d;->p:F

    .line 298
    iput v2, p0, Lcn/nubia/camera/ag/d;->m:F

    .line 299
    iput v2, p0, Lcn/nubia/camera/ag/d;->n:F

    return v5

    .line 361
    :cond_c
    :goto_4
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 280
    :cond_d
    :goto_5
    iget-boolean p1, p0, Lcn/nubia/camera/ag/d;->w:Z

    if-eqz p1, :cond_e

    .line 281
    iget p1, p0, Lcn/nubia/camera/ag/d;->z:F

    iget v0, p0, Lcn/nubia/camera/ag/d;->m:F

    add-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/ag/d;->z:F

    .line 282
    iget v0, p0, Lcn/nubia/camera/ag/d;->A:F

    iget v3, p0, Lcn/nubia/camera/ag/d;->n:F

    add-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/camera/ag/d;->A:F

    .line 283
    iput v2, p0, Lcn/nubia/camera/ag/d;->m:F

    .line 284
    iput v2, p0, Lcn/nubia/camera/ag/d;->n:F

    .line 285
    iput-boolean v1, p0, Lcn/nubia/camera/ag/d;->w:Z

    .line 286
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/ag/d;->a(FF)V

    :cond_e
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, v0

    int-to-float p1, p1

    .line 387
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/ag/d;->d(FF)V

    .line 388
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/ag/d;->c(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g_()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 623
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 630
    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->b(Z)V

    :cond_0
    return-void
.end method

.method m()V
    .locals 2

    .line 434
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->b(Z)V

    goto :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method n()V
    .locals 4

    .line 445
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f03bd

    .line 448
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f027d

    invoke-virtual {p0, v2}, Lcn/nubia/camera/ag/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_peaking_focus_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->a(Z)V

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/b;->a(Z)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->i:Lcn/nubia/camera/ag/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/a;->a(Z)V

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/b;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 125
    iget-boolean v0, p0, Lcn/nubia/camera/ag/d;->d:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const p3, 0x7f0c0069

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/camera/ag/d;->d(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701e5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/ag/d;->a:I

    .line 132
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070059

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/ag/d;->b:I

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070147

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/ag/d;->c:I

    .line 134
    new-instance p2, Landroid/graphics/Rect;

    iget p3, p0, Lcn/nubia/camera/ag/d;->a:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/ag/d;->b:I

    sub-int/2addr v2, v3

    invoke-direct {p2, v0, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcn/nubia/camera/ag/d;->y:Landroid/graphics/Rect;

    .line 135
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 136
    new-instance p3, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p3, v0, v0, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcn/nubia/camera/ag/d;->t:Landroid/graphics/Rect;

    .line 137
    new-instance p2, Lcn/nubia/camera/ag/c;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/ag/d;->q:Lcn/nubia/camera/ag/h;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Lcn/nubia/camera/ag/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ag/h;Lcn/nubia/camera/z/b;)V

    iput-object p2, p0, Lcn/nubia/camera/ag/d;->F:Lcn/nubia/camera/ag/c;

    .line 138
    iget-object p3, p0, Lcn/nubia/camera/ag/d;->N:Lcn/nubia/camera/aj/i;

    invoke-virtual {p2, p3}, Lcn/nubia/camera/ag/c;->a(Lcn/nubia/camera/aj/i;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcn/nubia/camera/ag/d;->d:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->r()V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/preference/c;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/ag/d;->r:Lcn/nubia/camera/ag/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ag/d$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 144
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 145
    iget-boolean v0, p0, Lcn/nubia/camera/ag/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->M()V

    .line 150
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->p()V

    .line 151
    new-instance v0, Lcn/nubia/camera/ag/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ag/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    .line 152
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->s()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ag/d;->l:Lcn/nubia/camera/ag/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->n()V

    .line 156
    new-instance v0, Lcn/nubia/camera/v/b;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/d;->j:Lcn/nubia/camera/v/b;

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/ag/d;->O:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->s()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ag/d;->j:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/preference/c;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 410
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->D()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_camera_member_key"

    .line 411
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcn/nubia/camera/ag/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_0

    .line 413
    invoke-direct {p0}, Lcn/nubia/camera/ag/d;->r()V

    :cond_0
    return-void
.end method
