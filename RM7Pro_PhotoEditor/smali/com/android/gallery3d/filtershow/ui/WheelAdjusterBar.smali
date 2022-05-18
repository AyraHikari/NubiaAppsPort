.class public Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;
    }
.end annotation


# static fields
.field private static final x:F

.field private static final y:F


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:Landroid/graphics/PointF;

.field private q:Landroid/graphics/PointF;

.field private r:F

.field private s:F

.field private t:Landroid/media/SoundPool;

.field private u:I

.field private v:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;

.field private w:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->b:I

    const/high16 p2, 0x41500000    # 13.0f

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->c:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->j:F

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->n:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->o:I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->t:Landroid/media/SoundPool;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->u:I

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->v:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;

    const/16 p2, 0xd

    new-array p2, p2, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    aput-object v2, p2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    const/4 v2, 0x1

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    const/4 v2, 0x2

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x3

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    aput-object v0, p2, v1

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x5

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    const/4 v2, 0x6

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    const/4 v2, 0x7

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    const/16 v2, 0x8

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    const/16 v2, 0x9

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    const/16 v2, 0xa

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_b

    const/16 v2, 0xb

    aput-object v0, p2, v2

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/16 v1, 0xc

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_4
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xed
        0xed
        0xed
    .end array-data

    :array_6
    .array-data 4
        0xff
        0xef
        0xef
        0xef
    .end array-data

    :array_7
    .array-data 4
        0xff
        0xd9
        0xd9
        0xd9
    .end array-data

    :array_8
    .array-data 4
        0xe9
        0xbd
        0xbd
        0xbd
    .end array-data

    :array_9
    .array-data 4
        0xb5
        0xbd
        0xbd
        0xbd
    .end array-data

    :array_a
    .array-data 4
        0x9c
        0x8e
        0x8e
        0x8e
    .end array-data

    :array_b
    .array-data 4
        0x89
        0x8e
        0x8e
        0x8e
    .end array-data

    :array_c
    .array-data 4
        0x5b
        0x8e
        0x8e
        0x8e
    .end array-data
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    :goto_0
    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :goto_1
    int-to-float p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l(FF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->h:F

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->q:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    :goto_0
    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :goto_1
    int-to-float p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l(FF)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i:F

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->j()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method private d(Landroid/graphics/Canvas;II)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->n:I

    div-int/lit8 v1, p3, 0x18

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    div-int/lit8 v1, p2, 0x3

    const/4 v9, 0x2

    div-int/lit8 v2, p2, 0x2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    const/16 v4, -0x2d

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f(Landroid/graphics/Paint;)F

    move-result v4

    float-to-int v10, v4

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    iget v5, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->n:I

    add-int/2addr v5, v4

    div-int/lit8 v11, p3, 0x2

    add-int/2addr v5, v3

    add-int v12, v5, v4

    div-int/2addr v2, v9

    add-int/2addr v2, v12

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    div-int/2addr v4, v9

    sub-int v13, v2, v4

    add-int v14, v13, v1

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v2, v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v15, 0x3

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    if-lez v3, :cond_0

    sub-float v2, v16, v1

    :goto_0
    move/from16 v18, v2

    goto/16 :goto_2

    :cond_0
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    neg-float v2, v1

    sub-float v1, v16, v2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v3, v1, v8

    aget v3, v3, v8

    aget-object v4, v1, v8

    aget v4, v4, v17

    aget-object v5, v1, v8

    aget v5, v5, v9

    aget-object v1, v1, v8

    aget v1, v1, v15

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    rem-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v12, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    sub-int/2addr v1, v2

    div-int/lit8 v2, v10, 0x2

    add-int/2addr v2, v11

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v12

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v2, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v13

    :goto_1
    int-to-float v5, v11

    int-to-float v4, v14

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v1, v16

    move/from16 v18, v1

    :goto_2
    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    sub-float/2addr v2, v1

    float-to-int v2, v2

    move/from16 v19, v1

    move v6, v2

    move/from16 v5, v17

    move/from16 v20, v5

    :goto_3
    const/16 v4, 0xc

    if-ge v5, v4, :cond_5

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    if-lt v6, v1, :cond_5

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    if-gt v6, v1, :cond_5

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v2, v1, v20

    aget v2, v2, v8

    aget-object v3, v1, v20

    aget v3, v3, v17

    aget-object v4, v1, v20

    aget v4, v4, v9

    aget-object v1, v1, v20

    aget v1, v1, v15

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v12, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    sub-int/2addr v1, v2

    int-to-float v2, v11

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v3, v3, v19

    sub-float v3, v2, v3

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v1, v1

    int-to-float v3, v3

    iget-object v15, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v1, v3, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v1, v1, v19

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v12

    int-to-float v15, v1

    int-to-float v4, v14

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v3

    move v3, v15

    move/from16 v22, v5

    move v5, v15

    move v15, v6

    move-object/from16 v6, v21

    goto :goto_4

    :cond_3
    move/from16 v22, v5

    move v15, v6

    int-to-float v1, v11

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v2, v2, v19

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v13

    int-to-float v5, v1

    int-to-float v4, v14

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    :goto_4
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v19, v19, v16

    add-int/lit8 v6, v15, -0x1

    add-int/lit8 v1, v20, 0x1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_4

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_4
    move/from16 v20, v1

    add-int/lit8 v5, v22, 0x1

    const/4 v15, 0x3

    goto/16 :goto_3

    :cond_5
    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    add-float v1, v1, v18

    float-to-int v1, v1

    move v15, v1

    move/from16 v6, v17

    move/from16 v19, v6

    :goto_5
    if-ge v6, v4, :cond_8

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    if-lt v15, v1, :cond_8

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    if-gt v15, v1, :cond_8

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v2, v1, v19

    aget v2, v2, v8

    aget-object v3, v1, v19

    aget v3, v3, v17

    aget-object v5, v1, v19

    aget v5, v5, v9

    aget-object v1, v1, v19

    const/16 v20, 0x3

    aget v1, v1, v20

    invoke-static {v2, v3, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v12, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    sub-int/2addr v1, v2

    int-to-float v2, v11

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v3, v3, v18

    add-float/2addr v3, v2

    div-int/lit8 v5, v10, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    int-to-float v1, v1

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v1, v1, v18

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v12

    int-to-float v5, v1

    int-to-float v4, v14

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v21, v3

    move v3, v5

    const/16 v22, 0xc

    move/from16 v23, v6

    move-object/from16 v6, v21

    goto :goto_6

    :cond_6
    move/from16 v22, v4

    move/from16 v23, v6

    int-to-float v1, v11

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->s:F

    mul-float v2, v2, v18

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v13

    int-to-float v5, v1

    int-to-float v4, v14

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v5

    :goto_6
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v18, v18, v16

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v1, v19, 0x1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_7

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_7
    move/from16 v19, v1

    add-int/lit8 v6, v23, 0x1

    move/from16 v4, v22

    goto/16 :goto_5

    :cond_8
    return-void
.end method

.method private e(Landroid/graphics/Canvas;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->o:I

    div-int/lit8 v1, p2, 0x18

    int-to-float v1, v1

    iput v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    div-int/lit8 v1, p3, 0x4

    const/4 v9, 0x2

    div-int/lit8 v2, p3, 0x2

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f(Landroid/graphics/Paint;)F

    move-result v3

    float-to-int v3, v3

    iget v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a:I

    iget v5, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->o:I

    add-int/2addr v5, v4

    add-int/2addr v5, v3

    add-int/lit8 v10, v5, 0xa

    add-int v11, v10, v4

    div-int/2addr v2, v9

    add-int/2addr v2, v11

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int v12, v2, v1

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->b:I

    add-int v13, v2, v1

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v2, v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v14, 0x3

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    if-lez v3, :cond_0

    sub-float v2, v15, v1

    :goto_0
    move/from16 v17, v2

    goto/16 :goto_2

    :cond_0
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    neg-float v2, v1

    sub-float v1, v15, v2

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v3, v1, v8

    aget v3, v3, v8

    aget-object v4, v1, v8

    aget v4, v4, v16

    aget-object v5, v1, v8

    aget v5, v5, v9

    aget-object v1, v1, v8

    aget v1, v1, v14

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    rem-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    div-int/2addr v1, v9

    sub-int v1, v2, v1

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v4, v10

    iget-object v5, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v2

    int-to-float v3, v11

    goto :goto_1

    :cond_2
    div-int/lit8 v1, p2, 0x2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v13

    :goto_1
    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v15

    move/from16 v17, v1

    :goto_2
    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    sub-float/2addr v2, v1

    float-to-int v2, v2

    move/from16 v18, v1

    move v6, v2

    move/from16 v5, v16

    move/from16 v19, v5

    :goto_3
    const/16 v4, 0xd

    if-ge v5, v4, :cond_5

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    if-lt v6, v1, :cond_5

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    if-gt v6, v1, :cond_5

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v2, v1, v19

    aget v2, v2, v8

    aget-object v3, v1, v19

    aget v3, v3, v16

    aget-object v4, v1, v19

    aget v4, v4, v9

    aget-object v1, v1, v19

    aget v1, v1, v14

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v3, v3, v18

    sub-float v3, v2, v3

    div-int/2addr v1, v9

    int-to-float v1, v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v4, v10

    iget-object v14, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v4, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v1, v1, v18

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v11

    int-to-float v14, v12

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move v2, v4

    move/from16 v21, v5

    move v5, v14

    move v14, v6

    move-object/from16 v6, v20

    goto :goto_4

    :cond_3
    move/from16 v21, v5

    move v14, v6

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v2, v2, v18

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v13

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    :goto_4
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v18, v18, v15

    add-int/lit8 v6, v14, -0x1

    add-int/lit8 v1, v19, 0x1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_4

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_4
    move/from16 v19, v1

    add-int/lit8 v5, v21, 0x1

    const/4 v14, 0x3

    goto/16 :goto_3

    :cond_5
    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    add-float v1, v1, v17

    float-to-int v1, v1

    move v14, v1

    move/from16 v6, v16

    move/from16 v18, v6

    :goto_5
    if-ge v6, v4, :cond_8

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    if-lt v14, v1, :cond_8

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    if-gt v14, v1, :cond_8

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    aget-object v2, v1, v18

    aget v2, v2, v8

    aget-object v3, v1, v18

    aget v3, v3, v16

    aget-object v5, v1, v18

    aget v5, v5, v9

    aget-object v1, v1, v18

    const/16 v19, 0x3

    aget v1, v1, v19

    invoke-static {v2, v3, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v3, v3, v17

    add-float/2addr v3, v2

    div-int/2addr v1, v9

    int-to-float v1, v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v5, v10

    iget-object v4, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v1, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v1, v1, v17

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v11

    int-to-float v5, v12

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move v2, v4

    const/16 v21, 0xd

    move/from16 v22, v6

    move-object/from16 v6, v20

    goto :goto_6

    :cond_6
    move/from16 v21, v4

    move/from16 v22, v6

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->r:F

    mul-float v2, v2, v17

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v13

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    :goto_6
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v17, v17, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v1, v18, 0x1

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->w:[[I

    array-length v3, v2

    if-lt v1, v3, :cond_7

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :cond_7
    move/from16 v18, v1

    add-int/lit8 v6, v22, 0x1

    move/from16 v4, v21

    goto/16 :goto_5

    :cond_8
    div-int/lit8 v1, p2, 0x2

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget v3, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->y:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v4, v1

    int-to-float v3, v11

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static f(Landroid/graphics/Paint;)F
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float p0, p0

    return p0
.end method

.method private static g(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private h(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d:Landroid/content/Context;

    const/16 p1, -0x2d

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    const/16 p1, 0x2d

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->c:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->l:Landroid/graphics/Paint;

    sget v1, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->x:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v0, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->t:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d:Landroid/content/Context;

    const/high16 v2, 0x7f0d0000

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->u:I

    return-void
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->v:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;->a(F)V

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->j:F

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->v:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->j:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;->b(F)V

    iput v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->j:F

    :cond_0
    return-void
.end method

.method private l(FF)V
    .locals 7

    float-to-int p2, p2

    float-to-int p1, p1

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    neg-int p2, p2

    :cond_0
    move v4, p2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->t:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->u:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    return v0
.end method

.method public m(F)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    int-to-float p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->d(Landroid/graphics/Canvas;II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e(Landroid/graphics/Canvas;II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnWheelAdjusterBarChangeListener(Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->v:Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar$a;

    return-void
.end method

.method public setValue(F)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->e:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    :goto_0
    int-to-float p1, v0

    iput p1, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->g:F

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->f:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/ui/WheelAdjusterBar;->k()V

    return-void
.end method
