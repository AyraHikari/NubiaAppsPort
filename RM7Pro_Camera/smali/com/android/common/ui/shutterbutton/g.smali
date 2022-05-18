.class Lcom/android/common/ui/shutterbutton/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Rect;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Bitmap;

.field f:Ljava/lang/Boolean;

.field private g:F

.field private h:I

.field private i:I

.field private j:F

.field private k:I

.field private l:Landroid/graphics/Path;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:F

.field private w:I

.field private x:I

.field private y:Lcom/android/common/ui/shutterbutton/b;

.field private z:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/common/ui/shutterbutton/b;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43870000    # 270.0f

    .line 32
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->g:F

    const/high16 v0, -0x1b000000

    .line 34
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->h:I

    const v0, -0x1a041b1a

    .line 35
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->i:I

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->k:I

    .line 40
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->n:Landroid/graphics/RectF;

    .line 43
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    .line 44
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->p:I

    .line 45
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->q:I

    .line 46
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/g;->r:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/g;->s:Z

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/android/common/ui/shutterbutton/g;->t:J

    .line 49
    iput-wide v1, p0, Lcom/android/common/ui/shutterbutton/g;->u:J

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->f:Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    .line 59
    sget-object v0, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->y:Lcom/android/common/ui/shutterbutton/b;

    .line 63
    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/g;->y:Lcom/android/common/ui/shutterbutton/b;

    .line 64
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/android/common/ui/c$b;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/g;->z:Landroid/graphics/PorterDuffColorFilter;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/g;->a(Landroid/content/res/Resources;)V

    .line 66
    sget p2, Lcom/android/common/ui/c$c;->e:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->j:F

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/g;)Lcom/android/common/ui/shutterbutton/b;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/g;->y:Lcom/android/common/ui/shutterbutton/b;

    return-object p0
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 163
    new-instance v0, Lcom/android/common/ui/shutterbutton/g$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/g$1;-><init>(Lcom/android/common/ui/shutterbutton/g;Landroid/content/res/Resources;)V

    .line 189
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/g$1;->start()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 193
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 199
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->n:Landroid/graphics/RectF;

    add-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->n:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 201
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 202
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 203
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 205
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 206
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 210
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 211
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->y:Lcom/android/common/ui/shutterbutton/b;

    sget-object v2, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    if-eq v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/g;->z:Landroid/graphics/PorterDuffColorFilter;

    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 212
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/shutterbutton/g;->w:I

    iget v2, p0, Lcom/android/common/ui/shutterbutton/g;->x:I

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    .line 155
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->b:Landroid/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->c:Landroid/graphics/Bitmap;

    .line 157
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    .line 159
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->j:F

    iget v1, p0, Lcom/android/common/ui/shutterbutton/g;->v:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->j:F

    return-void
.end method


# virtual methods
.method public a(IZI)V
    .locals 2

    .line 73
    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->k:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 75
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->k:I

    .line 77
    :cond_0
    iget p1, p0, Lcom/android/common/ui/shutterbutton/g;->k:I

    mul-int/lit16 p1, p1, 0x168

    div-int/2addr p1, v0

    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->q:I

    .line 78
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/g;->s:Z

    .line 79
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    sub-int v1, p1, v0

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    .line 81
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->p:I

    .line 82
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/ui/shutterbutton/g;->t:J

    if-ltz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_0
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/g;->r:Z

    if-lez p3, :cond_2

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->g:F

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43870000    # 270.0f

    .line 89
    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->g:F

    .line 91
    :goto_1
    iget-wide p1, p0, Lcom/android/common/ui/shutterbutton/g;->t:J

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-float p3, p3

    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->g:F

    div-float/2addr p3, v0

    float-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/common/ui/shutterbutton/g;->u:J

    goto :goto_2

    .line 94
    :cond_3
    iput p1, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    :goto_2
    return-void
.end method

.method public a()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    const/16 v1, 0x168

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 8

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 112
    iget v3, p0, Lcom/android/common/ui/shutterbutton/g;->w:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/common/ui/shutterbutton/g;->x:I

    if-eq v3, v2, :cond_2

    .line 113
    :cond_1
    iput v0, p0, Lcom/android/common/ui/shutterbutton/g;->w:I

    .line 114
    iput v2, p0, Lcom/android/common/ui/shutterbutton/g;->x:I

    .line 115
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/g;->c()V

    .line 120
    :cond_2
    iget v3, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->q:I

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    .line 121
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 122
    iget-wide v6, p0, Lcom/android/common/ui/shutterbutton/g;->u:J

    cmp-long v6, v3, v6

    if-gez v6, :cond_4

    .line 123
    iget-wide v6, p0, Lcom/android/common/ui/shutterbutton/g;->t:J

    sub-long/2addr v3, v6

    long-to-int v3, v3

    .line 124
    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->p:I

    iget v6, p0, Lcom/android/common/ui/shutterbutton/g;->g:F

    iget-boolean v7, p0, Lcom/android/common/ui/shutterbutton/g;->r:Z

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    mul-float/2addr v6, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v6, v3

    float-to-int v3, v6

    add-int/2addr v4, v3

    .line 126
    iput v4, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    move v3, v1

    goto :goto_1

    .line 129
    :cond_4
    iget v3, p0, Lcom/android/common/ui/shutterbutton/g;->q:I

    iput v3, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    :cond_5
    move v3, v5

    .line 135
    :goto_1
    iget-object v4, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 136
    iget-object v4, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object v4, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/g;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/common/ui/shutterbutton/g;->y:Lcom/android/common/ui/shutterbutton/b;

    sget-object v6, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    if-ne v4, v6, :cond_6

    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->i:I

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->h:I

    :goto_2
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->j:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/common/ui/shutterbutton/g;->o:I

    mul-int/lit8 v4, v4, 0x64

    div-int/lit16 v4, v4, 0x168

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v4, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 144
    div-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/g;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/g;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-direct {p0, p1, v0, v2}, Lcom/android/common/ui/shutterbutton/g;->a(Landroid/graphics/Canvas;II)V

    return v3
.end method

.method public b()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/common/ui/shutterbutton/g;->k:I

    return v0
.end method
