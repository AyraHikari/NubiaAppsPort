.class public Lcom/android/common/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/d/b$a;,
        Lcom/android/common/d/b$b;
    }
.end annotation


# static fields
.field private static final E:[F

.field private static final F:[F


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Landroid/view/animation/Interpolator;

.field private G:[F

.field private H:I

.field private I:I

.field private J:Lcom/android/common/d/b$a;

.field private K:Lcom/android/common/b/l;

.field private final a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/d/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:Ljava/nio/FloatBuffer;

.field private h:Lcom/android/common/a/a/l;

.field private i:Lcom/android/common/a/a/u;

.field private j:Lcom/android/common/b/l;

.field private k:Lcom/android/common/b/l;

.field private l:Lcom/android/common/b/l;

.field private m:Lcom/android/common/b/l;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:I

.field private u:Landroid/graphics/Rect;

.field private v:Z

.field private w:Z

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 99
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/common/d/b;->E:[F

    new-array v0, v0, [F

    .line 100
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/common/d/b;->F:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3fb13b14
        0x404ec4ec
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PreviewBlurAnim"

    const/4 v1, 0x3

    .line 40
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/d/b;->a:Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 43
    iput-object v1, p0, Lcom/android/common/d/b;->d:[F

    new-array v2, v0, [F

    .line 44
    iput-object v2, p0, Lcom/android/common/d/b;->e:[F

    new-array v0, v0, [F

    .line 45
    iput-object v0, p0, Lcom/android/common/d/b;->f:[F

    const/16 v0, 0xa

    .line 53
    iput v0, p0, Lcom/android/common/d/b;->n:I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/common/d/b;->o:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/common/d/b;->p:Z

    const-wide/16 v2, -0x1

    .line 57
    iput-wide v2, p0, Lcom/android/common/d/b;->q:J

    .line 58
    iput-wide v2, p0, Lcom/android/common/d/b;->r:J

    .line 79
    iput-boolean v0, p0, Lcom/android/common/d/b;->v:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/common/d/b;->w:Z

    .line 85
    iput-wide v2, p0, Lcom/android/common/d/b;->x:J

    .line 86
    iput-wide v2, p0, Lcom/android/common/d/b;->y:J

    .line 91
    iput v0, p0, Lcom/android/common/d/b;->z:I

    .line 93
    iput-boolean v0, p0, Lcom/android/common/d/b;->A:Z

    .line 94
    iput v0, p0, Lcom/android/common/d/b;->B:I

    .line 101
    sget-object v2, Lcom/android/common/d/b;->F:[F

    iput-object v2, p0, Lcom/android/common/d/b;->G:[F

    .line 123
    iput v0, p0, Lcom/android/common/d/b;->H:I

    .line 124
    iput v0, p0, Lcom/android/common/d/b;->I:I

    .line 136
    iput-object p1, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    .line 137
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 138
    iget-object p1, p0, Lcom/android/common/d/b;->f:[F

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 p1, 0x14

    new-array p1, p1, [F

    .line 140
    fill-array-data p1, :array_0

    const/16 v1, 0x50

    .line 148
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 149
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/d/b;->g:Ljava/nio/FloatBuffer;

    .line 150
    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/common/d/b;->C:Landroid/view/animation/Interpolator;

    .line 153
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/common/d/b;->D:Landroid/view/animation/Interpolator;

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/android/common/b/g;Lcom/android/common/b/l;Lcom/android/common/b/l;)Lcom/android/common/b/l;
    .locals 14

    move-object v0, p0

    .line 597
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    move-object v12, p1

    move-object/from16 v13, p3

    .line 598
    invoke-virtual {p1, v13}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 599
    iget-object v1, v0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    iget-object v2, v0, Lcom/android/common/d/b;->e:[F

    iget-object v3, v0, Lcom/android/common/d/b;->d:[F

    iget-object v4, v0, Lcom/android/common/d/b;->g:Ljava/nio/FloatBuffer;

    .line 600
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/l;->b()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/l;->c()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v9, p2

    move-object v11, p1

    .line 599
    invoke-virtual/range {v1 .. v11}, Lcom/android/common/a/a/l;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 602
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 603
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    .line 605
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 606
    invoke-virtual/range {p1 .. p2}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 607
    iget-object v1, v0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    iget-object v2, v0, Lcom/android/common/d/b;->e:[F

    iget-object v3, v0, Lcom/android/common/d/b;->d:[F

    iget-object v4, v0, Lcom/android/common/d/b;->g:Ljava/nio/FloatBuffer;

    .line 608
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/l;->b()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/l;->c()I

    move-result v8

    move-object/from16 v9, p3

    .line 607
    invoke-virtual/range {v1 .. v11}, Lcom/android/common/a/a/u;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    .line 610
    invoke-virtual {p1}, Lcom/android/common/b/g;->a()V

    .line 611
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    return-object p2
.end method

.method private a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;
    .locals 1

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Lcom/android/common/b/l;->b()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 722
    invoke-virtual {p1}, Lcom/android/common/b/l;->c()I

    move-result v0

    if-ne v0, p3, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 727
    invoke-virtual {p1, p2, p3}, Lcom/android/common/b/l;->c(II)V

    return-object p1

    .line 731
    :cond_1
    new-instance p1, Lcom/android/common/b/l;

    invoke-direct {p1, p2, p3}, Lcom/android/common/b/l;-><init>(II)V

    return-object p1
.end method

.method private a(II)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    .line 743
    iget-object v0, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    return-void
.end method

.method private a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V
    .locals 7

    .line 617
    invoke-virtual {p4}, Lcom/android/common/b/g;->f()V

    .line 618
    invoke-virtual {p4, p5}, Lcom/android/common/b/g;->a(F)V

    .line 619
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-virtual {p1, p3, p5}, Lcom/android/common/b/a;->b(II)V

    const/4 p3, 0x0

    .line 620
    invoke-virtual {p1, p3}, Lcom/android/common/b/a;->b(Z)V

    .line 621
    iget-object v2, p0, Lcom/android/common/d/b;->d:[F

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 622
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p4

    move-object v1, p1

    .line 621
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 623
    invoke-virtual {p4}, Lcom/android/common/b/g;->g()V

    const/4 p2, 0x1

    .line 625
    invoke-virtual {p1, p2}, Lcom/android/common/b/a;->b(Z)V

    return-void
.end method

.method private a(Lcom/android/common/b/g;Landroid/graphics/Rect;JJJ)V
    .locals 2

    .line 769
    iget v0, p0, Lcom/android/common/d/b;->I:I

    if-lez v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-long p5, p3, p5

    long-to-float p5, p5

    long-to-float p6, p7

    div-float/2addr p5, p6

    sub-float/2addr v1, p5

    int-to-float p5, v0

    mul-float/2addr v1, p5

    float-to-int p5, v1

    .line 770
    iput p5, p0, Lcom/android/common/d/b;->H:I

    .line 771
    iget-boolean p5, p0, Lcom/android/common/d/b;->a:Z

    if-eqz p5, :cond_0

    .line 772
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "drawMaskDisappearAnim: mStartBlurMaskAlpha "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget p6, p0, Lcom/android/common/d/b;->I:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " mCurrentRealtimeAlpha "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget p6, p0, Lcom/android/common/d/b;->H:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, " ratio: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-wide p6, p0, Lcom/android/common/d/b;->q:J

    sub-long/2addr p3, p6

    long-to-float p3, p3

    const/high16 p4, 0x43960000    # 300.0f

    div-float/2addr p3, p4

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PreviewBlurAnim"

    invoke-static {p4, p3}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget p3, p0, Lcom/android/common/d/b;->H:I

    if-lez p3, :cond_1

    const/4 p4, 0x0

    .line 775
    invoke-static {p3, p4, p4, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/android/common/b/l;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 736
    invoke-virtual {p1}, Lcom/android/common/b/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/android/common/b/l;->j()V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V
    .locals 9

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 570
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-virtual {p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 571
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/d/b;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 572
    invoke-virtual {p1}, Lcom/android/common/c/f;->e()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/common/b/g;->b(FFF)V

    .line 574
    invoke-virtual {p1}, Lcom/android/common/c/f;->c()Lcom/android/common/b/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v0

    move-object v2, v0

    iget-object v3, p0, Lcom/android/common/d/b;->f:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v6

    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/common/c/f;->w()Z

    move-result v8

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIIIZ)V

    .line 575
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 576
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 578
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    iget-object v3, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Lcom/android/common/b/l;Lcom/android/common/b/l;)Lcom/android/common/b/l;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    .line 582
    invoke-direct/range {v2 .. v7}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    if-eqz p5, :cond_3

    mul-int/lit16 p1, p4, 0x99

    .line 587
    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/common/d/b;->H:I

    const/16 p5, 0x99

    if-ge p1, p5, :cond_2

    goto :goto_1

    :cond_2
    move p1, p5

    .line 588
    :goto_1
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;I)V

    .line 591
    :cond_3
    iget-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    if-eqz p1, :cond_4

    .line 592
    invoke-virtual {p1, v0, p4}, Lcom/android/common/d/b$a;->a(Lcom/android/common/b/l;I)V

    :cond_4
    return-void
.end method

.method private b(II)V
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    .line 748
    iget-object v0, p0, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    .line 749
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    .line 750
    iget-object v0, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;II)Lcom/android/common/b/l;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    return-void
.end method

.method private c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/common/a/a/l;

    iget-object v1, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/a/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/android/common/a/a/u;

    iget-object v1, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/a/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    iget-object v1, p0, Lcom/android/common/d/b;->G:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v1, v1, v6

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/common/a/a/l;->a(FFF)V

    .line 239
    iget-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    iget-object v1, p0, Lcom/android/common/d/b;->G:[F

    aget v2, v1, v2

    aget v3, v1, v4

    aget v1, v1, v6

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/common/a/a/u;->a(FFF)V

    .line 247
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/common/d/b;->s:I

    .line 248
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/common/d/b;->t:I

    .line 249
    invoke-virtual {p1}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/d/b;->u:Landroid/graphics/Rect;

    .line 253
    iget-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object p1, p1, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->b()I

    move-result p1

    iget v0, p0, Lcom/android/common/d/b;->n:I

    div-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v0, v0, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    iget v1, p0, Lcom/android/common/d/b;->n:I

    div-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/common/d/b;->b(II)V

    .line 255
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 256
    iget-object p1, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    invoke-virtual {p2, p1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 257
    iget-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v1, p1, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    iget-object v2, p0, Lcom/android/common/d/b;->d:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    .line 258
    invoke-virtual {p1}, Lcom/android/common/b/l;->b()I

    move-result v5

    iget-object p1, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->c()I

    move-result v6

    move-object v0, p2

    .line 257
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 259
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 260
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 667
    invoke-interface {v1}, Lcom/android/common/d/b$b;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 675
    invoke-interface {v1}, Lcom/android/common/d/b$b;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 683
    invoke-interface {v1}, Lcom/android/common/d/b$b;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 691
    invoke-interface {v1}, Lcom/android/common/d/b$b;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 699
    invoke-interface {v1}, Lcom/android/common/d/b$b;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/android/common/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/d/b$b;

    if-eqz v1, :cond_0

    .line 707
    invoke-interface {v1}, Lcom/android/common/d/b$b;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    invoke-direct {p0, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;)V

    .line 755
    iget-object v0, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    invoke-direct {p0, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;)V

    .line 756
    iget-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    invoke-direct {p0, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;)V

    .line 757
    iget-object v0, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    invoke-direct {p0, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;)V

    .line 758
    iget-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-direct {p0, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/l;)V

    const/4 v0, 0x0

    .line 760
    iput-object v0, p0, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    .line 761
    iput-object v0, p0, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    .line 762
    iput-object v0, p0, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    .line 763
    iput-object v0, p0, Lcom/android/common/d/b;->m:Lcom/android/common/b/l;

    .line 764
    iput-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/b/g;Landroid/graphics/Rect;I)V
    .locals 8

    .line 781
    iget-boolean v0, p0, Lcom/android/common/d/b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 782
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "mask blurAlpha: 0X%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewBlurAnim"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/android/common/b/g;->f()V

    .line 785
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/common/b/g;->a(IIIII)V

    .line 786
    invoke-virtual {p1}, Lcom/android/common/b/g;->g()V

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 2

    .line 302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->getId()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    const-string p1, "PreviewBlurAnim"

    const-string p2, "Error! Can\'t call startBlur() out of renderThread"

    .line 303
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    iget-boolean p1, p0, Lcom/android/common/d/b;->v:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/common/d/b;->w:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcom/android/common/d/b;->I:I

    .line 312
    iput p1, p0, Lcom/android/common/d/b;->H:I

    const/4 p2, 0x1

    .line 313
    iput-boolean p2, p0, Lcom/android/common/d/b;->w:Z

    .line 314
    iput-boolean p1, p0, Lcom/android/common/d/b;->v:Z

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/d/b;->y:J

    const-wide/16 p1, -0x1

    .line 316
    iput-wide p1, p0, Lcom/android/common/d/b;->x:J

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;I)V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/android/common/d/b;->v:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/android/common/d/b;->F:[F

    iput-object v0, p0, Lcom/android/common/d/b;->G:[F

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/common/d/b;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/android/common/d/b;->o:Z

    .line 289
    iput-boolean p1, p0, Lcom/android/common/d/b;->p:Z

    .line 291
    iput p1, p0, Lcom/android/common/d/b;->I:I

    .line 292
    iput p1, p0, Lcom/android/common/d/b;->H:I

    .line 293
    iput p3, p0, Lcom/android/common/d/b;->z:I

    const/4 p2, 0x1

    .line 294
    iput-boolean p2, p0, Lcom/android/common/d/b;->v:Z

    .line 295
    iput-boolean p1, p0, Lcom/android/common/d/b;->w:Z

    const-wide/16 p1, -0x1

    .line 296
    iput-wide p1, p0, Lcom/android/common/d/b;->y:J

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/d/b;->x:J

    .line 298
    invoke-direct {p0}, Lcom/android/common/d/b;->g()V

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;II)V
    .locals 4

    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string p1, "PreviewBlurAnim"

    const-string p2, "Error! Can\'t call startBlur() out of renderThread"

    .line 208
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 212
    sget-object p4, Lcom/android/common/d/b;->E:[F

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/android/common/d/b;->F:[F

    :goto_0
    iput-object p4, p0, Lcom/android/common/d/b;->G:[F

    .line 213
    iget-boolean p4, p0, Lcom/android/common/d/b;->o:Z

    if-eqz p4, :cond_2

    return-void

    :cond_2
    const/4 p4, 0x0

    if-ne p3, v0, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    move p3, p4

    .line 217
    :goto_1
    iput-boolean p3, p0, Lcom/android/common/d/b;->A:Z

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/common/d/b;->c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V

    .line 220
    iget p1, p0, Lcom/android/common/d/b;->H:I

    iput p1, p0, Lcom/android/common/d/b;->I:I

    .line 221
    iput p4, p0, Lcom/android/common/d/b;->B:I

    .line 222
    iput-boolean v0, p0, Lcom/android/common/d/b;->o:Z

    .line 223
    iput-boolean p4, p0, Lcom/android/common/d/b;->p:Z

    const-wide/16 p1, -0x1

    .line 224
    iput-wide p1, p0, Lcom/android/common/d/b;->r:J

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/d/b;->q:J

    .line 226
    invoke-direct {p0}, Lcom/android/common/d/b;->d()V

    return-void
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V
    .locals 9

    .line 179
    iget-boolean v0, p1, Lcom/android/common/c/f;->a:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyCurrentTexture skipDarkRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    .line 183
    invoke-virtual {v0, p2}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    .line 185
    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/b/l;->c(II)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 189
    iget-object p3, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    if-nez p3, :cond_3

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {p2}, Lcom/android/common/b/g;->f()V

    .line 197
    iget-object p1, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-virtual {p2, p1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 198
    iget-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v2, p1, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    iget-object v3, p0, Lcom/android/common/d/b;->d:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->b()I

    move-result v6

    iget-object p1, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-virtual {p1}, Lcom/android/common/b/l;->c()I

    move-result v7

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 199
    invoke-virtual {p2}, Lcom/android/common/b/g;->a()V

    .line 200
    invoke-virtual {p2}, Lcom/android/common/b/g;->g()V

    .line 202
    new-instance p1, Lcom/android/common/d/b$a;

    iget-object p2, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    iget-object p3, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget p3, p3, Lcom/android/common/d/b$a;->b:I

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/android/common/d/b$a;-><init>(Lcom/android/common/d/b;Lcom/android/common/b/l;II)V

    iput-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    goto :goto_2

    :cond_4
    :goto_1
    const p3, 0x84c0

    .line 190
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 191
    iget-object p3, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-virtual {p2, p3}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    .line 192
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 194
    new-instance p1, Lcom/android/common/d/b$a;

    iget-object p2, p0, Lcom/android/common/d/b;->K:Lcom/android/common/b/l;

    invoke-direct {p1, p0, p2, v0, v0}, Lcom/android/common/d/b$a;-><init>(Lcom/android/common/d/b;Lcom/android/common/b/l;II)V

    iput-object p1, p0, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    :goto_2
    return-void
.end method

.method public a(Lcom/android/common/c/f;Z)V
    .locals 4

    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->getId()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-string p1, "PreviewBlurAnim"

    const-string p2, "Error! Can\'t call startBlur() out of renderThread"

    .line 265
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :cond_0
    iget-boolean p1, p0, Lcom/android/common/d/b;->o:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/common/d/b;->p:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget p1, p0, Lcom/android/common/d/b;->H:I

    iput p1, p0, Lcom/android/common/d/b;->I:I

    .line 274
    iput-boolean p2, p0, Lcom/android/common/d/b;->A:Z

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/d/b;->r:J

    const-wide/16 p1, -0x1

    .line 276
    iput-wide p1, p0, Lcom/android/common/d/b;->q:J

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/android/common/d/b;->p:Z

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lcom/android/common/d/b;->o:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/common/d/b;->A:Z

    return v0
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)I
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 344
    iget-boolean v0, v9, Lcom/android/common/d/b;->o:Z

    const/4 v6, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lcom/android/common/d/b;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lcom/android/common/d/b;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, v9, Lcom/android/common/d/b;->w:Z

    if-nez v0, :cond_1

    .line 346
    iget-boolean v0, v9, Lcom/android/common/d/b;->A:Z

    if-eqz v0, :cond_0

    .line 347
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "draw realtime blur"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v9, Lcom/android/common/d/b;->n:I

    div-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, v9, Lcom/android/common/d/b;->n:I

    div-int/2addr v0, v2

    invoke-direct {v9, v1, v0}, Lcom/android/common/d/b;->a(II)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    :cond_0
    return v6

    .line 355
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v8

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 358
    iget-boolean v0, v9, Lcom/android/common/d/b;->o:Z

    const-wide/16 v4, 0x0

    const/4 v14, 0x1

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_6

    .line 359
    iget-boolean v0, v9, Lcom/android/common/d/b;->A:Z

    if-nez v0, :cond_4

    .line 360
    iget-wide v12, v9, Lcom/android/common/d/b;->q:J

    cmp-long v0, v12, v1

    if-lez v0, :cond_3

    sub-long v0, v10, v12

    const-wide/16 v18, 0x12c

    cmp-long v0, v0, v18

    if-gtz v0, :cond_3

    sub-long v0, v10, v12

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 363
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v0, v0, Lcom/android/common/d/b$a;->b:I

    add-int/2addr v0, v14

    iput v0, v9, Lcom/android/common/d/b;->B:I

    .line 364
    iget-object v1, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v1, v1, Lcom/android/common/d/b$a;->c:I

    if-gt v0, v1, :cond_2

    .line 365
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur use old texture"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 366
    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    .line 369
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    iget v2, v9, Lcom/android/common/d/b;->B:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/d/b$a;->a(Lcom/android/common/b/l;I)V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    iget-object v1, v9, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    invoke-direct {v9, v7, v0, v1}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Lcom/android/common/b/l;Lcom/android/common/b/l;)Lcom/android/common/b/l;

    move-result-object v6

    .line 372
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur use new texture"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 373
    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    .line 376
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v1, v9, Lcom/android/common/d/b;->B:I

    invoke-virtual {v0, v6, v1}, Lcom/android/common/d/b$a;->a(Lcom/android/common/b/l;I)V

    .line 379
    :goto_0
    iget-wide v5, v9, Lcom/android/common/d/b;->q:J

    const-wide/16 v12, 0x12c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    move-wide v3, v10

    move-wide v7, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;JJJ)V

    const/4 v0, 0x2

    return v0

    .line 383
    :cond_3
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur wait"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 384
    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/common/d/b;->e()V

    const/4 v0, 0x3

    return v0

    .line 391
    :cond_4
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v0, v0, Lcom/android/common/d/b$a;->b:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_5

    .line 392
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "realtime growing"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 393
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v0, v0, Lcom/android/common/d/b$a;->b:I

    add-int/lit8 v4, v0, 0x1

    iput v4, v9, Lcom/android/common/d/b;->B:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    .line 394
    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    .line 395
    iget-object v0, v9, Lcom/android/common/d/b;->l:Lcom/android/common/b/l;

    iput-object v0, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    const/4 v0, 0x2

    return v0

    .line 398
    :cond_5
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "realtime stable"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    const/16 v4, 0xa

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    .line 399
    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    const/4 v0, 0x3

    return v0

    .line 403
    :cond_6
    iget-boolean v0, v9, Lcom/android/common/d/b;->p:Z

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    .line 404
    iget-boolean v0, v9, Lcom/android/common/d/b;->A:Z

    if-eqz v0, :cond_7

    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v0, v0, Lcom/android/common/d/b$a;->b:I

    const/16 v13, 0xa

    if-lt v0, v13, :cond_7

    .line 405
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v4, "blur disppear realtime"

    invoke-virtual {v3, v0, v4}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    const/16 v4, 0xa

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v10, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    .line 406
    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    .line 407
    iput-boolean v6, v9, Lcom/android/common/d/b;->p:Z

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/android/common/d/b;->f()V

    .line 409
    iput-wide v10, v9, Lcom/android/common/d/b;->r:J

    .line 410
    iput-wide v10, v9, Lcom/android/common/d/b;->q:J

    return v14

    :cond_7
    move-wide v0, v1

    .line 414
    iget-object v2, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v2, v2, Lcom/android/common/d/b$a;->b:I

    const/4 v13, 0x4

    const/16 v15, 0xa

    if-ge v2, v15, :cond_a

    .line 415
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v0, v0, Lcom/android/common/d/b$a;->b:I

    add-int/2addr v0, v14

    iput v0, v9, Lcom/android/common/d/b;->B:I

    .line 417
    iget-boolean v0, v9, Lcom/android/common/d/b;->A:Z

    if-eqz v0, :cond_8

    .line 418
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur disappear real waiting"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 419
    iget v4, v9, Lcom/android/common/d/b;->B:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    goto :goto_1

    .line 421
    :cond_8
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur disappear waiting"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 422
    iget-object v0, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    iget-object v1, v9, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    invoke-direct {v9, v7, v0, v1}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Lcom/android/common/b/l;Lcom/android/common/b/l;)Lcom/android/common/b/l;

    move-result-object v10

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 423
    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    .line 426
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v1, v9, Lcom/android/common/d/b;->B:I

    invoke-virtual {v0, v10, v1}, Lcom/android/common/d/b$a;->a(Lcom/android/common/b/l;I)V

    .line 429
    iget v0, v9, Lcom/android/common/d/b;->H:I

    if-lez v0, :cond_9

    .line 430
    invoke-static {v0, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v9, v7, v8, v0}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;I)V

    .line 433
    :cond_9
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/common/d/b;->r:J

    return v13

    .line 436
    :cond_a
    iget-wide v14, v9, Lcom/android/common/d/b;->r:J

    cmp-long v16, v14, v0

    if-lez v16, :cond_b

    sub-long v16, v10, v14

    const-wide/16 v18, 0xc8

    cmp-long v16, v16, v18

    if-gtz v16, :cond_b

    sub-long v14, v10, v14

    cmp-long v4, v14, v4

    if-ltz v4, :cond_b

    .line 439
    iget-boolean v0, v9, Lcom/android/common/d/b;->a:Z

    const-string v1, "blur disappear"

    invoke-virtual {v3, v0, v1}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 440
    iget-object v0, v9, Lcom/android/common/d/b;->D:Landroid/view/animation/Interpolator;

    iget-wide v1, v9, Lcom/android/common/d/b;->r:J

    sub-long v1, v10, v1

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v5, v12, v0

    .line 443
    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    move-object/from16 v0, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/common/d/b;->a(Lcom/android/common/b/a;Landroid/graphics/Rect;Lcom/android/common/c/f;Lcom/android/common/b/g;F)V

    .line 446
    iget-wide v5, v9, Lcom/android/common/d/b;->r:J

    const-wide/16 v14, 0xc8

    move-object/from16 v1, p2

    move-wide v3, v10

    move-wide v7, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Landroid/graphics/Rect;JJJ)V

    return v13

    .line 449
    :cond_b
    iget-boolean v4, v9, Lcom/android/common/d/b;->a:Z

    const-string v5, "blur disappear ok"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 450
    iput-boolean v6, v9, Lcom/android/common/d/b;->p:Z

    .line 451
    invoke-direct/range {p0 .. p0}, Lcom/android/common/d/b;->f()V

    .line 452
    iput-wide v0, v9, Lcom/android/common/d/b;->r:J

    .line 453
    iput-wide v0, v9, Lcom/android/common/d/b;->q:J

    const/4 v0, 0x1

    return v0

    :cond_c
    move-wide v0, v1

    .line 458
    iget-boolean v13, v9, Lcom/android/common/d/b;->v:Z

    const-wide/16 v18, 0xfa

    if-eqz v13, :cond_15

    .line 459
    iget-boolean v6, v3, Lcom/android/common/c/f;->a:Z

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "currentTime - mSwitchEnterTime: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v9, Lcom/android/common/d/b;->x:J

    sub-long v14, v10, v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v6, v13}, Lcom/android/common/c/f;->a(ZLjava/lang/String;)V

    .line 460
    iget-wide v13, v9, Lcom/android/common/d/b;->x:J

    cmp-long v0, v13, v0

    if-lez v0, :cond_14

    sub-long v0, v10, v13

    const-wide/16 v20, 0x1c2

    cmp-long v0, v0, v20

    if-gtz v0, :cond_14

    sub-long v0, v10, v13

    cmp-long v0, v0, v4

    if-ltz v0, :cond_14

    .line 463
    iget-object v0, v9, Lcom/android/common/d/b;->C:Landroid/view/animation/Interpolator;

    sub-long v3, v10, v13

    long-to-float v1, v3

    const/high16 v3, 0x43e10000    # 450.0f

    div-float/2addr v1, v3

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 465
    iget-object v1, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v1, v1, Lcom/android/common/d/b$a;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lcom/android/common/d/b;->B:I

    .line 467
    iget-object v3, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v3, v3, Lcom/android/common/d/b$a;->c:I

    if-gt v1, v3, :cond_d

    .line 469
    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    goto :goto_2

    .line 471
    :cond_d
    iget-object v1, v9, Lcom/android/common/d/b;->k:Lcom/android/common/b/l;

    iget-object v3, v9, Lcom/android/common/d/b;->j:Lcom/android/common/b/l;

    invoke-direct {v9, v7, v1, v3}, Lcom/android/common/d/b;->a(Lcom/android/common/b/g;Lcom/android/common/b/l;Lcom/android/common/b/l;)Lcom/android/common/b/l;

    move-result-object v1

    .line 473
    :goto_2
    iget-object v3, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget v4, v9, Lcom/android/common/d/b;->B:I

    invoke-virtual {v3, v1, v4}, Lcom/android/common/d/b$a;->a(Lcom/android/common/b/l;I)V

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v3, v0

    .line 477
    iget-wide v4, v9, Lcom/android/common/d/b;->x:J

    sub-long v13, v10, v4

    cmp-long v6, v13, v18

    if-gez v6, :cond_e

    const/high16 v6, -0x41000000    # -0.5f

    .line 478
    iget-object v13, v9, Lcom/android/common/d/b;->D:Landroid/view/animation/Interpolator;

    sub-long/2addr v10, v4

    long-to-float v4, v10

    const/high16 v14, 0x437a0000    # 250.0f

    div-float/2addr v4, v14

    invoke-interface {v13, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v12

    goto :goto_3

    :cond_e
    const/high16 v14, 0x437a0000    # 250.0f

    .line 480
    iget-object v6, v9, Lcom/android/common/d/b;->D:Landroid/view/animation/Interpolator;

    sub-long/2addr v10, v4

    sub-long v10, v10, v18

    long-to-float v4, v10

    div-float/2addr v4, v14

    invoke-interface {v6, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v5

    .line 482
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 483
    invoke-virtual {v7, v4}, Lcom/android/common/b/g;->a(F)V

    float-to-double v4, v0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v10

    .line 484
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v0, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v4, v0}, Lcom/android/common/b/g;->a(FFF)V

    .line 485
    iget v0, v9, Lcom/android/common/d/b;->z:I

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v10, 0x42b40000    # 90.0f

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    goto :goto_4

    :cond_f
    neg-float v0, v3

    .line 505
    invoke-virtual {v7, v0, v12, v4, v4}, Lcom/android/common/b/g;->a(FFFF)V

    sub-float/2addr v3, v10

    cmpl-float v0, v3, v6

    if-lez v0, :cond_13

    .line 507
    invoke-virtual {v7, v12, v5, v12}, Lcom/android/common/b/g;->b(FFF)V

    goto :goto_4

    .line 499
    :cond_10
    invoke-virtual {v7, v3, v12, v4, v4}, Lcom/android/common/b/g;->a(FFFF)V

    sub-float/2addr v3, v10

    cmpl-float v0, v3, v6

    if-lez v0, :cond_13

    .line 501
    invoke-virtual {v7, v12, v5, v12}, Lcom/android/common/b/g;->b(FFF)V

    goto :goto_4

    :cond_11
    neg-float v0, v3

    .line 493
    invoke-virtual {v7, v0, v4, v12, v4}, Lcom/android/common/b/g;->a(FFFF)V

    sub-float/2addr v3, v10

    cmpl-float v0, v3, v6

    if-lez v0, :cond_13

    .line 495
    invoke-virtual {v7, v5, v12, v12}, Lcom/android/common/b/g;->b(FFF)V

    goto :goto_4

    .line 487
    :cond_12
    invoke-virtual {v7, v3, v4, v12, v4}, Lcom/android/common/b/g;->a(FFFF)V

    sub-float/2addr v3, v10

    cmpl-float v0, v3, v6

    if-lez v0, :cond_13

    .line 489
    invoke-virtual {v7, v5, v12, v12}, Lcom/android/common/b/g;->b(FFF)V

    .line 512
    :cond_13
    :goto_4
    iget-object v2, v9, Lcom/android/common/d/b;->d:[F

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 513
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 514
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p2

    .line 512
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    const/4 v0, 0x6

    return v0

    .line 519
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 521
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v1, v0, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    iget-object v2, v9, Lcom/android/common/d/b;->d:[F

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 522
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 523
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p2

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/android/common/d/b;->h()V

    const/4 v0, 0x7

    return v0

    .line 529
    :cond_15
    iget-boolean v2, v9, Lcom/android/common/d/b;->w:Z

    if-eqz v2, :cond_17

    .line 530
    iget-wide v2, v9, Lcom/android/common/d/b;->y:J

    cmp-long v13, v2, v0

    if-lez v13, :cond_16

    sub-long v13, v10, v2

    cmp-long v13, v13, v18

    if-gtz v13, :cond_16

    sub-long v13, v10, v2

    cmp-long v4, v13, v4

    if-ltz v4, :cond_16

    .line 533
    iget-object v0, v9, Lcom/android/common/d/b;->D:Landroid/view/animation/Interpolator;

    sub-long/2addr v10, v2

    long-to-float v1, v10

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float/2addr v12, v0

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 543
    invoke-virtual {v7, v12}, Lcom/android/common/b/g;->a(F)V

    .line 544
    iget-object v0, v9, Lcom/android/common/d/b;->J:Lcom/android/common/d/b$a;

    iget-object v1, v0, Lcom/android/common/d/b$a;->a:Lcom/android/common/b/l;

    iget-object v2, v9, Lcom/android/common/d/b;->d:[F

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    .line 545
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 546
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p2

    .line 544
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    const/16 v0, 0x8

    return v0

    .line 551
    :cond_16
    iput-boolean v6, v9, Lcom/android/common/d/b;->w:Z

    .line 552
    iput-wide v0, v9, Lcom/android/common/d/b;->x:J

    .line 553
    iput-wide v0, v9, Lcom/android/common/d/b;->y:J

    .line 554
    invoke-direct/range {p0 .. p0}, Lcom/android/common/d/b;->i()V

    const/4 v0, 0x5

    return v0

    :cond_17
    return v6
.end method

.method public b()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 629
    iput-wide v0, p0, Lcom/android/common/d/b;->x:J

    .line 630
    iput-wide v0, p0, Lcom/android/common/d/b;->y:J

    const/4 v2, 0x0

    .line 631
    iput-boolean v2, p0, Lcom/android/common/d/b;->w:Z

    .line 632
    iput-boolean v2, p0, Lcom/android/common/d/b;->v:Z

    .line 633
    iput-boolean v2, p0, Lcom/android/common/d/b;->o:Z

    .line 634
    iput-boolean v2, p0, Lcom/android/common/d/b;->p:Z

    .line 635
    iput-wide v0, p0, Lcom/android/common/d/b;->r:J

    .line 636
    iput-wide v0, p0, Lcom/android/common/d/b;->q:J

    .line 638
    iget-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/android/common/a/a/l;->b()V

    .line 640
    iput-object v1, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/android/common/a/a/u;->b()V

    .line 644
    iput-object v1, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    .line 646
    :cond_1
    invoke-direct {p0}, Lcom/android/common/d/b;->j()V

    return-void
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;Z)V
    .locals 8

    .line 330
    iget-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/android/common/a/a/l;

    iget-object v1, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/a/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/d/b;->h:Lcom/android/common/a/a/l;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    if-nez v0, :cond_1

    .line 335
    new-instance v0, Lcom/android/common/a/a/u;

    iget-object v1, p0, Lcom/android/common/d/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/a/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/d/b;->i:Lcom/android/common/a/a/u;

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/android/common/c/f;->r()Landroid/graphics/Rect;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/common/d/b;->n:I

    div-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/common/d/b;->n:I

    div-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/common/d/b;->a(II)V

    const/16 v6, 0xa

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    .line 340
    invoke-direct/range {v2 .. v7}, Lcom/android/common/d/b;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Landroid/graphics/Rect;IZ)V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 650
    iput-boolean v0, p0, Lcom/android/common/d/b;->o:Z

    .line 651
    iput-boolean v0, p0, Lcom/android/common/d/b;->p:Z

    const-wide/16 v1, -0x1

    .line 652
    iput-wide v1, p0, Lcom/android/common/d/b;->q:J

    .line 653
    iput-wide v1, p0, Lcom/android/common/d/b;->r:J

    .line 655
    iput-boolean v0, p0, Lcom/android/common/d/b;->w:Z

    .line 656
    iput-boolean v0, p0, Lcom/android/common/d/b;->v:Z

    .line 657
    iput-wide v1, p0, Lcom/android/common/d/b;->x:J

    .line 658
    iput-wide v1, p0, Lcom/android/common/d/b;->y:J

    .line 660
    iput v0, p0, Lcom/android/common/d/b;->H:I

    .line 661
    iput v0, p0, Lcom/android/common/d/b;->I:I

    return-void
.end method
