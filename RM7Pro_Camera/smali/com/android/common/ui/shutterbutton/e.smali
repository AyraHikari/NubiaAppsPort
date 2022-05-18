.class Lcom/android/common/ui/shutterbutton/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcn/nubia/c/c;

.field private B:Z

.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Ljava/lang/Boolean;

.field private l:Landroid/graphics/Paint;

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:F

.field private w:I

.field private x:I

.field private y:Lcn/nubia/c/c;

.field private z:Lcn/nubia/c/b;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->k:Ljava/lang/Boolean;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->m:F

    .line 33
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->n:F

    .line 68
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    .line 69
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->p:F

    .line 70
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->q:F

    .line 71
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/e;->r:Z

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/android/common/ui/shutterbutton/e;->s:Z

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/android/common/ui/shutterbutton/e;->t:J

    .line 74
    iput-wide v1, p0, Lcom/android/common/ui/shutterbutton/e;->u:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 75
    iput v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    .line 82
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/e;->B:Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/e;->a(Landroid/content/res/Resources;)V

    .line 86
    sget v0, Lcom/android/common/ui/c$c;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->a:F

    .line 87
    sget v0, Lcom/android/common/ui/c$c;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->b:F

    .line 88
    sget v0, Lcom/android/common/ui/c$c;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->c:F

    .line 89
    iget v0, p0, Lcom/android/common/ui/shutterbutton/e;->b:F

    sub-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->d:F

    .line 90
    iget v0, p0, Lcom/android/common/ui/shutterbutton/e;->a:F

    sub-float/2addr v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->e:F

    .line 92
    new-instance p1, Lcn/nubia/c/c;

    const/4 v0, 0x5

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1}, Lcn/nubia/c/c;-><init>(IF)V

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->y:Lcn/nubia/c/c;

    .line 93
    new-instance v0, Lcom/android/common/ui/shutterbutton/e$1;

    invoke-direct {v0, p0}, Lcom/android/common/ui/shutterbutton/e$1;-><init>(Lcom/android/common/ui/shutterbutton/e;)V

    invoke-virtual {p1, v0}, Lcn/nubia/c/c;->a(Lcn/nubia/c/a$a;)V

    .line 100
    new-instance p1, Lcn/nubia/c/c;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcn/nubia/c/c;-><init>(IF)V

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->A:Lcn/nubia/c/c;

    .line 101
    new-instance v0, Lcom/android/common/ui/shutterbutton/e$2;

    invoke-direct {v0, p0}, Lcom/android/common/ui/shutterbutton/e$2;-><init>(Lcom/android/common/ui/shutterbutton/e;)V

    invoke-virtual {p1, v0}, Lcn/nubia/c/c;->a(Lcn/nubia/c/a$a;)V

    .line 109
    new-instance p1, Lcn/nubia/c/b;

    const/16 v0, 0xa

    const/high16 v1, 0x42840000    # 66.0f

    const/high16 v2, -0x3d7c0000    # -66.0f

    const/16 v3, 0x2d

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/c/b;-><init>(IFFI)V

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->z:Lcn/nubia/c/b;

    .line 110
    new-instance v0, Lcom/android/common/ui/shutterbutton/e$3;

    invoke-direct {v0, p0}, Lcom/android/common/ui/shutterbutton/e$3;-><init>(Lcom/android/common/ui/shutterbutton/e;)V

    invoke-virtual {p1, v0}, Lcn/nubia/c/b;->a(Lcn/nubia/c/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/e;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->k:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->w:I

    iget v2, p0, Lcom/android/common/ui/shutterbutton/e;->x:I

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    .line 243
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->f:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->f:Landroid/graphics/Bitmap;

    .line 244
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->g:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->g:Landroid/graphics/Bitmap;

    .line 245
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->i:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->i:Landroid/graphics/Bitmap;

    .line 246
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    .line 247
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->j:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    invoke-static {v0, v1}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->j:Landroid/graphics/Bitmap;

    .line 248
    iget v0, p0, Lcom/android/common/ui/shutterbutton/e;->a:F

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->v:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->a:F

    .line 249
    iget v2, p0, Lcom/android/common/ui/shutterbutton/e;->b:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/common/ui/shutterbutton/e;->b:F

    .line 250
    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->c:F

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/common/ui/shutterbutton/e;->c:F

    sub-float/2addr v2, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 251
    iput v2, p0, Lcom/android/common/ui/shutterbutton/e;->d:F

    sub-float/2addr v0, v3

    div-float/2addr v0, v1

    .line 252
    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->e:F

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/android/common/ui/shutterbutton/e$4;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/e$4;-><init>(Lcom/android/common/ui/shutterbutton/e;Landroid/content/res/Resources;)V

    .line 270
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/e$4;->start()V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/e;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/android/common/ui/shutterbutton/e;->B:Z

    return p0
.end method

.method static synthetic b(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/android/common/ui/shutterbutton/e;)Lcn/nubia/c/b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/e;->z:Lcn/nubia/c/b;

    return-object p0
.end method

.method static synthetic c(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->i:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic c(Lcom/android/common/ui/shutterbutton/e;)Ljava/lang/Boolean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/e;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic d(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic e(Lcom/android/common/ui/shutterbutton/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/e;->j:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->A:Lcn/nubia/c/c;

    invoke-virtual {v0, p1}, Lcn/nubia/c/c;->c(F)V

    return-void
.end method

.method public a(FZ)V
    .locals 0

    .line 119
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/e;->B:Z

    .line 120
    iget-object p2, p0, Lcom/android/common/ui/shutterbutton/e;->y:Lcn/nubia/c/c;

    invoke-virtual {p2, p1}, Lcn/nubia/c/c;->c(F)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 10

    .line 169
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/e;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 174
    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->w:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->x:I

    if-eq v3, v2, :cond_2

    .line 175
    :cond_1
    iput v0, p0, Lcom/android/common/ui/shutterbutton/e;->w:I

    .line 176
    iput v2, p0, Lcom/android/common/ui/shutterbutton/e;->x:I

    .line 177
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/e;->a()V

    .line 183
    :cond_2
    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    iget v4, p0, Lcom/android/common/ui/shutterbutton/e;->q:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v3, :cond_5

    .line 184
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 185
    iget-wide v8, p0, Lcom/android/common/ui/shutterbutton/e;->u:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    .line 186
    iget-wide v3, p0, Lcom/android/common/ui/shutterbutton/e;->t:J

    sub-long/2addr v6, v3

    long-to-int v3, v6

    .line 187
    iget v4, p0, Lcom/android/common/ui/shutterbutton/e;->p:F

    iget-boolean v6, p0, Lcom/android/common/ui/shutterbutton/e;->r:Z

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    neg-int v3, v3

    :goto_0
    mul-int/lit16 v3, v3, 0x1c2

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    add-float/2addr v4, v3

    add-float/2addr v4, v5

    rem-float/2addr v4, v5

    .line 189
    iput v4, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    move v4, v1

    goto :goto_1

    .line 192
    :cond_4
    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->q:F

    iput v3, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    .line 200
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 201
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v0, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/common/ui/shutterbutton/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 203
    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v1, v3, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 206
    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    const/4 v3, 0x0

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v1, v1, v6

    const/high16 v7, 0x42b40000    # 90.0f

    if-lez v1, :cond_7

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    sub-float/2addr v1, v7

    .line 207
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-lez v1, :cond_7

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    const/high16 v8, 0x43340000    # 180.0f

    sub-float/2addr v1, v8

    .line 208
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-lez v1, :cond_7

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    const/high16 v8, 0x43870000    # 270.0f

    sub-float/2addr v1, v8

    .line 209
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-lez v1, :cond_7

    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    sub-float/2addr v1, v5

    .line 210
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_6

    goto :goto_2

    .line 213
    :cond_6
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/e;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 211
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/common/ui/shutterbutton/e;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    :goto_3
    iget v1, p0, Lcom/android/common/ui/shutterbutton/e;->n:F

    const/high16 v5, 0x42340000    # 45.0f

    cmpl-float v6, v1, v5

    if-lez v6, :cond_8

    sub-float/2addr v1, v7

    goto :goto_4

    :cond_8
    const/high16 v6, -0x3dcc0000    # -45.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_9

    add-float/2addr v1, v7

    :cond_9
    :goto_4
    const/high16 v6, -0x40800000    # -1.0f

    div-float/2addr v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    .line 230
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v5, p0, Lcom/android/common/ui/shutterbutton/e;->e:F

    mul-float/2addr v1, v5

    .line 231
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/common/ui/shutterbutton/e;->d:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_a

    .line 233
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 235
    :cond_a
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/e;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/e;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v4
.end method

.method public b(F)V
    .locals 2

    .line 157
    iget v0, p0, Lcom/android/common/ui/shutterbutton/e;->n:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->n:F

    return-void
.end method

.method public b(FZ)V
    .locals 2

    .line 124
    iget v0, p0, Lcom/android/common/ui/shutterbutton/e;->m:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_6

    const v1, 0x43b38000    # 359.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->m:F

    .line 129
    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->q:F

    .line 130
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/e;->s:Z

    if-eqz p2, :cond_5

    .line 132
    iget p1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->p:F

    .line 133
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/ui/shutterbutton/e;->t:J

    .line 135
    iget p1, p0, Lcom/android/common/ui/shutterbutton/e;->q:F

    iget p2, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p2, p1

    const/high16 v0, 0x43340000    # 180.0f

    if-gez p2, :cond_1

    cmpg-float p2, p1, v0

    if-ltz p2, :cond_2

    :cond_1
    const/high16 p2, -0x3ccc0000    # -180.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    .line 138
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/e;->r:Z

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 140
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/e;->r:Z

    .line 142
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    const/high16 p2, 0x43b40000    # 360.0f

    .line 143
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, p2, p1

    .line 145
    :cond_4
    iget-wide v0, p0, Lcom/android/common/ui/shutterbutton/e;->t:J

    .line 146
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x43e10000    # 450.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/e;->u:J

    goto :goto_1

    .line 148
    :cond_5
    iput p1, p0, Lcom/android/common/ui/shutterbutton/e;->o:F

    :cond_6
    :goto_1
    return-void
.end method
