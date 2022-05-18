.class public Lcom/android/gallery3d/filtershow/words/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final l:I


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Canvas;

.field private i:Landroid/graphics/RectF;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/words/d;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/gallery3d/filtershow/words/d;->a:F

    iput p3, p0, Lcom/android/gallery3d/filtershow/words/d;->b:F

    iput p4, p0, Lcom/android/gallery3d/filtershow/words/d;->c:F

    iput p5, p0, Lcom/android/gallery3d/filtershow/words/d;->d:F

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/gallery3d/filtershow/words/d;->h:Landroid/graphics/Canvas;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/d;->i:Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/gallery3d/filtershow/words/d;->a:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p0, Lcom/android/gallery3d/filtershow/words/d;->b:F

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lcom/android/gallery3d/filtershow/words/d;->c:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->right:F

    iget p2, p0, Lcom/android/gallery3d/filtershow/words/d;->d:F

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private a(FFFII[F)I
    .locals 7

    iget v1, p0, Lcom/android/gallery3d/filtershow/words/d;->e:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    add-float/2addr v1, v2

    int-to-float v2, p4

    mul-float/2addr v1, v2

    div-float v2, p3, v2

    float-to-int v3, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    div-int v3, p5, p4

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    div-float v3, p1, v2

    div-float v1, p2, v1

    cmpl-float v3, v3, v1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    aput v1, p6, v5

    aget v1, p6, v5

    mul-float/2addr v2, v1

    goto :goto_0

    :cond_1
    div-float v1, p1, p3

    aput v1, p6, v5

    aget v1, p6, v5

    move v2, p1

    :goto_0
    sub-float v1, p1, v2

    float-to-double v1, v1

    const-wide/16 v5, 0x0

    cmpl-double v1, v1, v5

    if-lez v1, :cond_2

    return p4

    :cond_2
    add-int/2addr v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/words/d;->a(FFFII[F)I

    move-result v0

    return v0

    :cond_3
    :goto_1
    add-int/lit8 v1, p4, -0x1

    if-ge v1, v4, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    move v0, p4

    :goto_2
    sub-int/2addr v0, v4

    return v0
.end method

.method private c(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public b(I)V
    .locals 22

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v9, v8, [F

    const/4 v10, 0x1

    new-array v11, v10, [F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v0, v11, v12

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v12, v8, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    const/4 v13, 0x0

    move v0, v12

    move v3, v13

    :goto_0
    if-ge v0, v8, :cond_0

    aget v1, v9, v0

    add-float/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    move v4, v10

    move v0, v12

    :goto_1
    const/16 v15, 0xa

    if-ge v0, v8, :cond_2

    aget-char v1, v14, v0

    if-ne v1, v15, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v1, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    iget v2, v7, Lcom/android/gallery3d/filtershow/words/d;->d:F

    move-object/from16 v0, p0

    move v5, v8

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/words/d;->a(FFFII[F)I

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/words/d;->l:I

    int-to-float v1, v1

    aget v2, v11, v12

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    iget-object v1, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v12, v8, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move v0, v12

    move v1, v0

    move v2, v13

    :goto_2
    if-ge v0, v8, :cond_6

    aget v3, v9, v0

    add-float/2addr v2, v3

    iget v3, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    cmpl-float v4, v2, v3

    if-gtz v4, :cond_3

    add-int/lit8 v4, v8, -0x1

    if-eq v0, v4, :cond_3

    aget-char v4, v14, v0

    if-ne v15, v4, :cond_5

    :cond_3
    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    add-int/lit8 v2, v8, -0x1

    if-ne v0, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    aget v2, v9, v0

    add-int/2addr v1, v10

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    int-to-float v0, v1

    iget-object v2, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    invoke-direct {v7, v2}, Lcom/android/gallery3d/filtershow/words/d;->c(Landroid/graphics/Paint;)F

    move-result v2

    aget v3, v11, v12

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    aget v3, v11, v12

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    move v2, v12

    move v3, v13

    move v4, v3

    :goto_3
    if-ge v2, v8, :cond_d

    aget v5, v9, v2

    add-float/2addr v4, v5

    iget v5, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    cmpl-float v6, v4, v5

    if-gtz v6, :cond_7

    add-int/lit8 v6, v8, -0x1

    if-eq v2, v6, :cond_7

    aget-char v6, v14, v2

    if-ne v15, v6, :cond_c

    :cond_7
    cmpl-float v6, v4, v5

    if-gtz v6, :cond_8

    aget-char v6, v14, v2

    if-ne v15, v6, :cond_a

    :cond_8
    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    add-int/lit8 v5, v8, -0x1

    if-ne v2, v5, :cond_9

    aget v4, v9, v2

    goto :goto_4

    :cond_9
    aget v5, v9, v2

    sub-float/2addr v4, v5

    :cond_a
    :goto_4
    cmpg-float v5, v3, v4

    if-gez v5, :cond_b

    move v3, v4

    :cond_b
    aget v4, v9, v2

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    iget v2, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    div-float v4, v2, v3

    iget v5, v7, Lcom/android/gallery3d/filtershow/words/d;->d:F

    div-float v6, v5, v0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_e

    aget v2, v11, v12

    div-float/2addr v5, v0

    mul-float/2addr v2, v5

    aput v2, v11, v12

    goto :goto_5

    :cond_e
    aget v0, v11, v12

    sget v4, Lcom/android/gallery3d/filtershow/words/d;->l:I

    int-to-float v4, v4

    aget v5, v11, v12

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    aput v0, v11, v12

    :goto_5
    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/words/d;->l:I

    int-to-float v2, v2

    aget v3, v11, v12

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    invoke-direct {v7, v0}, Lcom/android/gallery3d/filtershow/words/d;->c(Landroid/graphics/Paint;)F

    move-result v0

    iput v0, v7, Lcom/android/gallery3d/filtershow/words/d;->e:F

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    iget-object v2, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v12, v8, v9}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    aget v0, v11, v12

    mul-float/2addr v0, v13

    aget v2, v11, v12

    mul-float/2addr v2, v13

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/android/gallery3d/filtershow/words/d;->j:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Lcom/android/gallery3d/filtershow/words/d;->k:Ljava/util/ArrayList;

    move v3, v12

    move v4, v3

    move v5, v13

    move v6, v5

    move v13, v4

    :goto_6
    if-ge v3, v8, :cond_19

    aget v16, v9, v3

    add-float v5, v5, v16

    iget v12, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    cmpl-float v17, v5, v12

    if-gtz v17, :cond_10

    add-int/lit8 v10, v8, -0x1

    if-eq v3, v10, :cond_10

    aget-char v10, v14, v3

    if-ne v15, v10, :cond_f

    goto :goto_7

    :cond_f
    move/from16 v19, v0

    move/from16 v21, v2

    move v0, v5

    move-object/from16 v18, v11

    move v2, v15

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_10
    :goto_7
    add-int/lit8 v10, v8, -0x1

    const-string v15, ""

    move-object/from16 v18, v11

    const-string v11, "\n"

    if-ne v3, v10, :cond_13

    cmpl-float v12, v5, v12

    if-lez v12, :cond_12

    iget-object v12, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v12, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v19, v0

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->k:Ljava/util/ArrayList;

    aget v20, v9, v3

    move/from16 v21, v2

    sub-float v2, v5, v20

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v0, v9, v3

    sub-float v0, v5, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_11

    aget v0, v9, v3

    sub-float v6, v5, v0

    :cond_11
    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    move/from16 v19, v0

    move/from16 v21, v2

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    move/from16 v19, v0

    move/from16 v21, v2

    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v0, v11, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v7, Lcom/android/gallery3d/filtershow/words/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    cmpl-float v2, v5, v0

    if-gtz v2, :cond_14

    aget-char v2, v14, v3

    const/16 v11, 0xa

    if-ne v11, v2, :cond_16

    :cond_14
    cmpl-float v0, v5, v0

    if-lez v0, :cond_15

    if-ne v3, v10, :cond_15

    aget v5, v9, v3

    goto :goto_9

    :cond_15
    aget v0, v9, v3

    sub-float/2addr v5, v0

    :cond_16
    :goto_9
    aget-char v0, v14, v13

    const/16 v2, 0xa

    if-ne v0, v2, :cond_17

    aget v0, v9, v13

    sub-float/2addr v5, v0

    :cond_17
    iget-object v0, v7, Lcom/android/gallery3d/filtershow/words/d;->k:Ljava/util/ArrayList;

    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpg-float v0, v6, v5

    if-gez v0, :cond_18

    move v6, v5

    :cond_18
    aget v0, v9, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    move v13, v3

    :goto_a
    add-int/lit8 v3, v3, 0x1

    move v15, v2

    move v10, v5

    move-object/from16 v11, v18

    move/from16 v2, v21

    const/4 v12, 0x0

    move v5, v0

    move/from16 v0, v19

    goto/16 :goto_6

    :cond_19
    move/from16 v19, v0

    move/from16 v21, v2

    move-object/from16 v18, v11

    const/high16 v0, 0x40000000    # 2.0f

    if-ge v1, v4, :cond_1a

    iget v1, v7, Lcom/android/gallery3d/filtershow/words/d;->d:F

    int-to-float v2, v4

    iget v3, v7, Lcom/android/gallery3d/filtershow/words/d;->e:F

    add-float v3, v3, v21

    add-float v3, v3, v19

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    const/4 v2, 0x0

    aget v3, v18, v2

    mul-float/2addr v3, v1

    aput v3, v18, v2

    iget-object v3, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    sget v4, Lcom/android/gallery3d/filtershow/words/d;->l:I

    int-to-float v4, v4

    aget v5, v18, v2

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    mul-float/2addr v6, v1

    sub-float/2addr v3, v6

    div-float/2addr v3, v0

    move v4, v3

    move v3, v1

    const/4 v1, 0x0

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    iget v1, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    sub-float/2addr v1, v6

    div-float v3, v1, v0

    iget v1, v7, Lcom/android/gallery3d/filtershow/words/d;->d:F

    int-to-float v4, v4

    iget v5, v7, Lcom/android/gallery3d/filtershow/words/d;->e:F

    add-float v5, v5, v21

    add-float v5, v5, v19

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    div-float/2addr v1, v0

    move v4, v3

    const/4 v3, 0x0

    :goto_b
    move v12, v2

    :goto_c
    iget-object v2, v7, Lcom/android/gallery3d/filtershow/words/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_1e

    if-nez p1, :cond_1c

    const/4 v2, 0x0

    cmpl-float v5, v3, v2

    iget v2, v7, Lcom/android/gallery3d/filtershow/words/d;->a:F

    if-eqz v5, :cond_1b

    iget v5, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    iget-object v6, v7, Lcom/android/gallery3d/filtershow/words/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    goto :goto_d

    :cond_1b
    iget v5, v7, Lcom/android/gallery3d/filtershow/words/d;->c:F

    iget-object v6, v7, Lcom/android/gallery3d/filtershow/words/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    :goto_d
    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v2, v5

    goto :goto_e

    :cond_1c
    iget v2, v7, Lcom/android/gallery3d/filtershow/words/d;->a:F

    add-float/2addr v2, v4

    :goto_e
    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    const v8, 0x3f4ccccd    # 0.8f

    if-nez v6, :cond_1d

    iget v6, v7, Lcom/android/gallery3d/filtershow/words/d;->b:F

    add-float/2addr v6, v1

    int-to-float v9, v12

    iget v10, v7, Lcom/android/gallery3d/filtershow/words/d;->e:F

    add-float v11, v10, v21

    add-float v11, v11, v19

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    mul-float/2addr v10, v8

    goto :goto_f

    :cond_1d
    iget v6, v7, Lcom/android/gallery3d/filtershow/words/d;->b:F

    add-float/2addr v6, v1

    int-to-float v9, v12

    iget v10, v7, Lcom/android/gallery3d/filtershow/words/d;->e:F

    add-float v11, v10, v21

    add-float v11, v11, v19

    mul-float/2addr v9, v11

    mul-float/2addr v9, v3

    add-float/2addr v6, v9

    mul-float/2addr v10, v8

    mul-float/2addr v10, v3

    :goto_f
    add-float/2addr v6, v10

    iget-object v8, v7, Lcom/android/gallery3d/filtershow/words/d;->h:Landroid/graphics/Canvas;

    iget-object v9, v7, Lcom/android/gallery3d/filtershow/words/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v7, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v2, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_1e
    return-void
.end method

.method public d(Landroid/graphics/Paint;)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    sget v0, Lcom/android/gallery3d/filtershow/words/d;->l:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/words/d;->f:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/words/d;->c(Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/words/d;->e:F

    return-void
.end method
