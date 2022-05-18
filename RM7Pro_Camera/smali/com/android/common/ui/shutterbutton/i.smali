.class Lcom/android/common/ui/shutterbutton/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Ljava/lang/Boolean;

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Landroid/view/animation/DecelerateInterpolator;

.field private m:Landroid/view/animation/AccelerateInterpolator;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/RectF;

.field private q:F

.field private r:Lcom/android/common/ui/shutterbutton/b;

.field private s:Landroid/content/res/Resources;

.field private t:F

.field private u:I

.field private v:I

.field private w:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/common/ui/shutterbutton/b;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->e:F

    .line 32
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->f:F

    .line 33
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->g:F

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/i;->h:J

    .line 35
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/i;->i:J

    .line 36
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/i;->j:J

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->k:I

    .line 42
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->l:Landroid/view/animation/DecelerateInterpolator;

    .line 43
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->m:Landroid/view/animation/AccelerateInterpolator;

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    .line 45
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->p:Landroid/graphics/RectF;

    .line 48
    sget-object v1, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->d:Ljava/lang/Boolean;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->t:F

    .line 64
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/i;->s:Landroid/content/res/Resources;

    .line 65
    sget v0, Lcom/android/common/ui/c$c;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->q:F

    .line 66
    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    .line 67
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/android/common/ui/c$b;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/android/common/ui/shutterbutton/i;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/i;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 110
    iget v0, p0, Lcom/android/common/ui/shutterbutton/i;->q:F

    iget v1, p0, Lcom/android/common/ui/shutterbutton/i;->u:I

    iget v2, p0, Lcom/android/common/ui/shutterbutton/i;->v:I

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->t:F

    .line 111
    iget v1, p0, Lcom/android/common/ui/shutterbutton/i;->q:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/common/ui/shutterbutton/i;->q:F

    .line 112
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->a:Landroid/graphics/Bitmap;

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/i;->t:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/i;->t:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/common/ui/shutterbutton/i$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/i$1;-><init>(Lcom/android/common/ui/shutterbutton/i;Landroid/content/res/Resources;)V

    .line 129
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/i$1;->start()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 187
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->p:Landroid/graphics/RectF;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 188
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/i;->p:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/common/ui/shutterbutton/i;->f:F

    iget v4, p0, Lcom/android/common/ui/shutterbutton/i;->e:F

    sub-float/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 189
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 191
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->o:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 192
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    iget v0, p0, Lcom/android/common/ui/shutterbutton/i;->f:F

    const/high16 v4, 0x42b40000    # 90.0f

    add-float/2addr v0, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 197
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    sget-object v6, Lcom/android/common/ui/shutterbutton/b;->c:Lcom/android/common/ui/shutterbutton/b;

    if-ne v5, v6, :cond_0

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->w:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p3, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 202
    iget v0, p0, Lcom/android/common/ui/shutterbutton/i;->e:F

    add-float/2addr v0, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 203
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/i;Landroid/content/res/Resources;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/i;->b(Landroid/content/res/Resources;)V

    return-void
.end method

.method private b()V
    .locals 16

    move-object/from16 v0, p0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 145
    iget-wide v3, v0, Lcom/android/common/ui/shutterbutton/i;->j:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 146
    iput-wide v1, v0, Lcom/android/common/ui/shutterbutton/i;->j:J

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const-wide/16 v3, 0x0

    .line 150
    iput-wide v1, v0, Lcom/android/common/ui/shutterbutton/i;->h:J

    .line 151
    iput-wide v1, v0, Lcom/android/common/ui/shutterbutton/i;->i:J

    .line 154
    :cond_0
    iget v7, v0, Lcom/android/common/ui/shutterbutton/i;->k:I

    const-wide/16 v8, 0xbe

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x43960000    # 300.0f

    const/4 v12, 0x1

    const/high16 v13, 0x44480000    # 800.0f

    if-nez v7, :cond_2

    .line 155
    iget-wide v14, v0, Lcom/android/common/ui/shutterbutton/i;->h:J

    sub-long v5, v1, v14

    long-to-float v5, v5

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1

    .line 156
    iput v12, v0, Lcom/android/common/ui/shutterbutton/i;->k:I

    .line 157
    iput-wide v1, v0, Lcom/android/common/ui/shutterbutton/i;->i:J

    goto :goto_0

    :cond_1
    sub-long/2addr v1, v14

    long-to-float v1, v1

    div-float/2addr v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    .line 160
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 161
    iget-object v2, v0, Lcom/android/common/ui/shutterbutton/i;->l:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->g:F

    .line 164
    :goto_0
    iget v1, v0, Lcom/android/common/ui/shutterbutton/i;->f:F

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->f:F

    .line 165
    iget v2, v0, Lcom/android/common/ui/shutterbutton/i;->g:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->e:F

    goto :goto_2

    :cond_2
    if-ne v7, v12, :cond_4

    .line 167
    iget-wide v5, v0, Lcom/android/common/ui/shutterbutton/i;->i:J

    sub-long v14, v1, v5

    long-to-float v7, v14

    cmpl-float v7, v7, v13

    if-lez v7, :cond_3

    const/4 v5, 0x0

    .line 168
    iput v5, v0, Lcom/android/common/ui/shutterbutton/i;->k:I

    .line 169
    iput-wide v1, v0, Lcom/android/common/ui/shutterbutton/i;->h:J

    goto :goto_1

    :cond_3
    sub-long/2addr v1, v5

    long-to-float v1, v1

    sub-float v1, v13, v1

    div-float/2addr v1, v13

    const/4 v2, 0x0

    .line 172
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 173
    iget-object v2, v0, Lcom/android/common/ui/shutterbutton/i;->m:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v2, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v11

    add-float/2addr v1, v10

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->g:F

    .line 176
    :goto_1
    iget v1, v0, Lcom/android/common/ui/shutterbutton/i;->e:F

    mul-long/2addr v3, v8

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-float v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->e:F

    .line 177
    iget v2, v0, Lcom/android/common/ui/shutterbutton/i;->g:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/common/ui/shutterbutton/i;->f:F

    :cond_4
    :goto_2
    return-void
.end method

.method private b(Landroid/content/res/Resources;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    sget-object v1, Lcom/android/common/ui/shutterbutton/b;->c:Lcom/android/common/ui/shutterbutton/b;

    if-ne v0, v1, :cond_0

    .line 134
    sget v0, Lcom/android/common/ui/c$d;->t:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    .line 135
    sget v0, Lcom/android/common/ui/c$d;->r:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    :cond_0
    sget v0, Lcom/android/common/ui/c$d;->s:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->b:Landroid/graphics/Bitmap;

    .line 139
    sget v0, Lcom/android/common/ui/c$d;->q:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/i;->c:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/common/ui/shutterbutton/b;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    if-eq v0, p1, :cond_0

    .line 73
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/i;->r:Lcom/android/common/ui/shutterbutton/b;

    .line 74
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/i;->s:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/i;->b(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/i;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    iget v3, p0, Lcom/android/common/ui/shutterbutton/i;->u:I

    if-ne v3, v0, :cond_2

    iget v3, p0, Lcom/android/common/ui/shutterbutton/i;->v:I

    if-eq v3, v2, :cond_3

    .line 92
    :cond_2
    iput v0, p0, Lcom/android/common/ui/shutterbutton/i;->u:I

    .line 93
    iput v2, p0, Lcom/android/common/ui/shutterbutton/i;->v:I

    .line 94
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/i;->a()V

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/i;->b()V

    .line 99
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 100
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-direct {p0, p1, v0, v2}, Lcom/android/common/ui/shutterbutton/i;->a(Landroid/graphics/Canvas;II)V

    :cond_4
    :goto_0
    return v1
.end method
