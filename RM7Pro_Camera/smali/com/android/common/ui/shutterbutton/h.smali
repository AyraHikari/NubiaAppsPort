.class Lcom/android/common/ui/shutterbutton/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/Boolean;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Path;

.field private o:Landroid/graphics/RectF;

.field private p:J

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Lcom/android/common/ui/shutterbutton/b;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/h;->h:Ljava/lang/Boolean;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    iput v1, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    .line 53
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/h;->m:Landroid/graphics/Paint;

    .line 54
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/h;->n:Landroid/graphics/Path;

    .line 55
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/h;->o:Landroid/graphics/RectF;

    .line 58
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/h;->r:Z

    .line 63
    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->s:I

    .line 65
    sget-object v0, Lcom/android/common/ui/shutterbutton/b;->b:Lcom/android/common/ui/shutterbutton/b;

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->t:Lcom/android/common/ui/shutterbutton/b;

    .line 68
    sget v0, Lcom/android/common/ui/c$c;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->k:F

    .line 69
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/h;->a(Landroid/content/res/Resources;)V

    .line 70
    sget v0, Lcom/android/common/ui/c$c;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->a:F

    .line 71
    sget v0, Lcom/android/common/ui/c$c;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/common/ui/shutterbutton/h;->b:F

    .line 72
    iget v0, p0, Lcom/android/common/ui/shutterbutton/h;->a:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->c:F

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/h;)Ljava/lang/Boolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/h;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/h;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->h:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 182
    new-instance v0, Lcom/android/common/ui/shutterbutton/h$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/h$1;-><init>(Lcom/android/common/ui/shutterbutton/h;Landroid/content/res/Resources;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/h$1;->start()V

    return-void
.end method

.method static synthetic b(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private b()V
    .locals 3

    .line 172
    iget v0, p0, Lcom/android/common/ui/shutterbutton/h;->k:F

    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->i:I

    iget v2, p0, Lcom/android/common/ui/shutterbutton/h;->j:I

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    .line 173
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/h;->d:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->d:Landroid/graphics/Bitmap;

    .line 174
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->e:Landroid/graphics/Bitmap;

    .line 175
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->f:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->f:Landroid/graphics/Bitmap;

    .line 176
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->g:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->g:Landroid/graphics/Bitmap;

    .line 177
    iget v0, p0, Lcom/android/common/ui/shutterbutton/h;->a:F

    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->l:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->a:F

    .line 178
    iget v0, p0, Lcom/android/common/ui/shutterbutton/h;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->b:F

    return-void
.end method

.method static synthetic c(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic d(Lcom/android/common/ui/shutterbutton/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/h;->r:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/common/ui/shutterbutton/h;->s:I

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_0
    iput p1, p0, Lcom/android/common/ui/shutterbutton/h;->s:I

    .line 84
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/h;->r:Z

    if-nez p2, :cond_1

    const-wide/16 p1, 0x0

    .line 86
    iput-wide p1, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    :goto_0
    return-void
.end method

.method public a(Lcom/android/common/ui/shutterbutton/b;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/h;->t:Lcom/android/common/ui/shutterbutton/b;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 14

    .line 101
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 107
    iget v3, p0, Lcom/android/common/ui/shutterbutton/h;->i:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/common/ui/shutterbutton/h;->j:I

    if-eq v3, v2, :cond_2

    .line 108
    :cond_1
    iput v0, p0, Lcom/android/common/ui/shutterbutton/h;->i:I

    .line 109
    iput v2, p0, Lcom/android/common/ui/shutterbutton/h;->j:I

    .line 110
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/h;->b()V

    .line 113
    :cond_2
    iget-boolean v3, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    if-eqz v3, :cond_4

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 115
    iget-wide v9, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    sub-long v11, v7, v9

    cmp-long v3, v11, v5

    if-ltz v3, :cond_3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    goto :goto_0

    :cond_3
    sub-long v9, v7, v9

    sub-long v9, v5, v9

    sub-long/2addr v7, v9

    .line 118
    iput-wide v7, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    .line 120
    :goto_0
    iput-boolean v4, p0, Lcom/android/common/ui/shutterbutton/h;->q:Z

    .line 124
    :cond_4
    sget-object v3, Lcom/android/common/ui/shutterbutton/b;->a:Lcom/android/common/ui/shutterbutton/b;

    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/h;->t:Lcom/android/common/ui/shutterbutton/b;

    if-ne v3, v7, :cond_5

    .line 125
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/h;->f:Landroid/graphics/Bitmap;

    .line 126
    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/h;->g:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/h;->d:Landroid/graphics/Bitmap;

    .line 129
    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/h;->e:Landroid/graphics/Bitmap;

    .line 133
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 134
    iget-wide v10, p0, Lcom/android/common/ui/shutterbutton/h;->p:J

    sub-long v12, v8, v10

    cmp-long v5, v12, v5

    if-ltz v5, :cond_7

    .line 135
    iget v1, p0, Lcom/android/common/ui/shutterbutton/h;->s:I

    if-nez v1, :cond_6

    .line 136
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 138
    :cond_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    move v1, v4

    goto :goto_3

    :cond_7
    sub-long/2addr v8, v10

    long-to-float v3, v8

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    .line 142
    iget v4, p0, Lcom/android/common/ui/shutterbutton/h;->s:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v4, v1, :cond_8

    sub-float v3, v5, v3

    .line 146
    :cond_8
    iget v4, p0, Lcom/android/common/ui/shutterbutton/h;->c:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    add-float/2addr v4, v5

    .line 147
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 148
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    .line 149
    iget-object v8, p0, Lcom/android/common/ui/shutterbutton/h;->o:Landroid/graphics/RectF;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v8, v0

    sub-float/2addr v8, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v8, v5

    int-to-float v9, v2

    sub-float/2addr v9, v6

    div-float/2addr v9, v5

    .line 152
    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/h;->o:Landroid/graphics/RectF;

    invoke-virtual {v5, v8, v9}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 154
    iget v5, p0, Lcom/android/common/ui/shutterbutton/h;->b:F

    mul-float/2addr v5, v4

    float-to-double v4, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 155
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    sub-double v4, v10, v4

    float-to-double v12, v3

    mul-double/2addr v4, v12

    sub-double/2addr v10, v4

    .line 157
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/h;->n:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 158
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/h;->n:Landroid/graphics/Path;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-double/2addr v10, v8

    double-to-float v4, v10

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/h;->n:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v0, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/common/ui/shutterbutton/h;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/h;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_3
    return v1
.end method
