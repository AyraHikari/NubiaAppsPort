.class public Lcom/zte/camera/ui/common/VlogCountDownButton;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/VlogCountDownButton$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Lcom/zte/camera/ui/common/VlogCountDownButton$a;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private final k:I

.field private l:J

.field private m:I

.field private n:Z

.field private o:J

.field private p:J

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Landroid/view/animation/LinearInterpolator;

.field private v:Landroid/graphics/Rect;

.field private w:Landroid/graphics/RectF;

.field private x:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    const/16 v0, 0x3e8

    .line 34
    iput v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->k:I

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->l:J

    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->n:Z

    .line 38
    iput-wide v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->o:J

    .line 39
    iput-wide v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->p:J

    .line 40
    iput v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    .line 41
    iput v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->r:I

    .line 42
    iput v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    .line 43
    iput v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->t:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->v:Landroid/graphics/Rect;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->w:Landroid/graphics/RectF;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/nubia/a/a$j;->ac:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lcom/nubia/a/a$j;->ae:I

    const/16 v0, 0xb

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->d:I

    .line 84
    sget p2, Lcom/nubia/a/a$j;->ag:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->e:I

    .line 85
    sget p2, Lcom/nubia/a/a$j;->ak:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->f:I

    .line 86
    sget p2, Lcom/nubia/a/a$j;->ai:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->g:F

    .line 87
    sget p2, Lcom/nubia/a/a$j;->af:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->h:F

    .line 88
    sget p2, Lcom/nubia/a/a$j;->aj:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->i:F

    .line 89
    sget p2, Lcom/nubia/a/a$j;->ah:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->j:I

    .line 90
    sget p2, Lcom/nubia/a/a$j;->ad:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->t:I

    .line 91
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->u:Landroid/view/animation/LinearInterpolator;

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogCountDownButton;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->m:I

    return p1
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogCountDownButton;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->l:J

    return-wide v0
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogCountDownButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/zte/camera/ui/common/VlogCountDownButton;)Lcom/zte/camera/ui/common/VlogCountDownButton$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->b:Lcom/zte/camera/ui/common/VlogCountDownButton$a;

    return-object p0
.end method

.method private getScaleAnimTimeProgress()F
    .locals 3

    .line 168
    iget v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->m:I

    int-to-float v0, v0

    iget-wide v1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->l:J

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    iget v1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->t:I

    int-to-float v1, v1

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 6

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->c:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->postInvalidate()V

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    .line 175
    iput-wide v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->l:J

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->x:Landroid/os/CountDownTimer;

    .line 177
    new-instance p1, Lcom/zte/camera/ui/common/VlogCountDownButton$1;

    iget-wide v2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->l:J

    const-wide/16 v4, 0xa

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/camera/ui/common/VlogCountDownButton$1;-><init>(Lcom/zte/camera/ui/common/VlogCountDownButton;JJ)V

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->x:Landroid/os/CountDownTimer;

    .line 197
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(IZ)V
    .locals 2

    if-ltz p1, :cond_0

    .line 53
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    .line 54
    :goto_0
    iget p2, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    if-ne p1, p2, :cond_1

    return-void

    .line 57
    :cond_1
    iput p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    .line 58
    iget p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    iput p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->r:I

    .line 59
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->o:J

    .line 60
    iget v0, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    iget v1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_3

    add-int/lit16 v0, v0, -0x168

    :cond_3
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 65
    :goto_2
    iput-boolean v1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->n:Z

    .line 66
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v0, v0, 0x10e

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->p:J

    .line 68
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 105
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->getScaleAnimTimeProgress()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    move v1, v2

    .line 112
    :cond_0
    iget-object v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->u:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result v1

    .line 113
    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->g:F

    iget v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->h:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 115
    iget v4, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->i:F

    int-to-float v5, v3

    sub-float v6, v5, v4

    mul-float/2addr v1, v6

    add-float/2addr v4, v1

    float-to-int v1, v4

    sub-int/2addr v1, v2

    .line 116
    iget-object v4, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->w:Landroid/graphics/RectF;

    sub-int v6, v3, v1

    int-to-float v6, v6

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v4, v6, v6, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->j:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v1

    mul-double/2addr v8, v6

    div-double/2addr v2, v8

    const-wide v6, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v6

    double-to-float v1, v2

    .line 120
    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->m:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v6, v1, v4

    sub-float v7, v2, v6

    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    if-gez v9, :cond_1

    move v13, v8

    goto :goto_0

    :cond_1
    move v13, v7

    .line 127
    :goto_0
    iget-object v7, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    iget v9, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->e:I

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v11, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->w:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    add-float v12, v1, v7

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    sub-float/2addr v3, v2

    sub-float/2addr v3, v6

    cmpg-float v6, v3, v8

    if-gez v6, :cond_2

    move v12, v8

    goto :goto_1

    :cond_2
    move v12, v3

    .line 135
    :goto_1
    iget-object v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    iget v6, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->d:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v10, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->w:Landroid/graphics/RectF;

    add-float/2addr v2, v7

    add-float v11, v2, v1

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 139
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 146
    iget-object v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->v:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 147
    iget-object v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->v:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 148
    iget-object v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->v:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 149
    iget-object v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->c:Ljava/lang/String;

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v5, v1

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v5, v2

    iget-object v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->a:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v1, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    :cond_3
    iget v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setRotation(F)V

    .line 153
    iget v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    if-eq v1, v2, :cond_7

    .line 154
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 155
    iget-wide v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->p:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_6

    .line 156
    iget-wide v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->o:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 157
    iget v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->r:I

    iget-boolean v3, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->n:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    neg-int v1, v1

    :goto_2
    mul-int/lit16 v1, v1, 0x10e

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v2, v1

    if-ltz v2, :cond_5

    .line 158
    rem-int/lit16 v2, v2, 0x168

    goto :goto_3

    :cond_5
    rem-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x168

    .line 159
    :goto_3
    iput v2, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->invalidate()V

    goto :goto_4

    .line 162
    :cond_6
    iget v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->s:I

    iput v1, v0, Lcom/zte/camera/ui/common/VlogCountDownButton;->q:I

    :cond_7
    :goto_4
    return-void
.end method

.method public setCountDownListener(Lcom/zte/camera/ui/common/VlogCountDownButton$a;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCountDownButton;->b:Lcom/zte/camera/ui/common/VlogCountDownButton$a;

    return-void
.end method
