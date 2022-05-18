.class Lcom/android/common/ui/shutterbutton/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J

.field private n:F

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CompassAnimation"

    .line 19
    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/c;->c:Ljava/lang/Boolean;

    .line 22
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/c;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/android/common/ui/shutterbutton/c;->e:F

    .line 27
    iput v1, p0, Lcom/android/common/ui/shutterbutton/c;->f:F

    .line 28
    iput v1, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    .line 29
    iput v1, p0, Lcom/android/common/ui/shutterbutton/c;->h:F

    .line 30
    iput v1, p0, Lcom/android/common/ui/shutterbutton/c;->i:F

    .line 31
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/c;->j:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/c;->k:Z

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/c;->l:J

    .line 34
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/c;->m:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/android/common/ui/shutterbutton/c;->n:F

    .line 39
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/c;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/c;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/common/ui/shutterbutton/c;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcom/android/common/ui/shutterbutton/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/c;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/shutterbutton/c;->o:I

    iget v2, p0, Lcom/android/common/ui/shutterbutton/c;->p:I

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/shutterbutton/a;->a(FII)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/shutterbutton/c;->n:F

    .line 126
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/common/ui/shutterbutton/c$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/c$1;-><init>(Lcom/android/common/ui/shutterbutton/c;Landroid/content/res/Resources;)V

    .line 140
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/c$1;->start()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 43
    iget v0, p0, Lcom/android/common/ui/shutterbutton/c;->f:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iput p1, p0, Lcom/android/common/ui/shutterbutton/c;->f:F

    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 50
    iput p1, p0, Lcom/android/common/ui/shutterbutton/c;->e:F

    .line 51
    iput p1, p0, Lcom/android/common/ui/shutterbutton/c;->i:F

    .line 52
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/c;->k:Z

    if-eqz p2, :cond_4

    .line 54
    iget p1, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    iput p1, p0, Lcom/android/common/ui/shutterbutton/c;->h:F

    .line 55
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/common/ui/shutterbutton/c;->l:J

    .line 57
    iget p1, p0, Lcom/android/common/ui/shutterbutton/c;->i:F

    iget p2, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p2, p1

    const/high16 v0, 0x43340000    # 180.0f

    if-gez p2, :cond_0

    cmpg-float p2, p1, v0

    if-ltz p2, :cond_1

    :cond_0
    const/high16 p2, -0x3ccc0000    # -180.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/c;->j:Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Lcom/android/common/ui/shutterbutton/c;->j:Z

    .line 64
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    const/high16 p2, 0x43b40000    # 360.0f

    .line 65
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, p2, p1

    .line 67
    :cond_3
    iget-wide v0, p0, Lcom/android/common/ui/shutterbutton/c;->l:J

    .line 68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x44340000    # 720.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/c;->m:J

    goto :goto_1

    .line 70
    :cond_4
    iput p1, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/c;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 81
    iget v3, p0, Lcom/android/common/ui/shutterbutton/c;->o:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/common/ui/shutterbutton/c;->p:I

    if-eq v3, v2, :cond_2

    .line 82
    :cond_1
    iput v0, p0, Lcom/android/common/ui/shutterbutton/c;->o:I

    .line 83
    iput v2, p0, Lcom/android/common/ui/shutterbutton/c;->p:I

    .line 84
    invoke-direct {p0}, Lcom/android/common/ui/shutterbutton/c;->a()V

    .line 89
    :cond_2
    iget v3, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    iget v4, p0, Lcom/android/common/ui/shutterbutton/c;->i:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    if-eqz v3, :cond_5

    .line 90
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 91
    iget-wide v8, p0, Lcom/android/common/ui/shutterbutton/c;->m:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    .line 92
    iget-wide v3, p0, Lcom/android/common/ui/shutterbutton/c;->l:J

    sub-long/2addr v6, v3

    long-to-int v3, v6

    .line 93
    iget v4, p0, Lcom/android/common/ui/shutterbutton/c;->h:F

    iget-boolean v6, p0, Lcom/android/common/ui/shutterbutton/c;->j:Z

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    neg-int v3, v3

    :goto_0
    mul-int/lit16 v3, v3, 0x2d0

    div-int/lit16 v3, v3, 0x3e8

    int-to-float v3, v3

    add-float/2addr v4, v3

    add-float/2addr v4, v5

    rem-float/2addr v4, v5

    .line 95
    iput v4, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    move v4, v1

    goto :goto_1

    .line 98
    :cond_4
    iget v3, p0, Lcom/android/common/ui/shutterbutton/c;->i:F

    iput v3, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    .line 105
    :cond_5
    :goto_1
    iget v3, p0, Lcom/android/common/ui/shutterbutton/c;->g:F

    .line 106
    iget v6, p0, Lcom/android/common/ui/shutterbutton/c;->f:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    sub-float/2addr v5, v3

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v6, v5, v3

    if-gez v6, :cond_6

    add-float/2addr v3, v5

    goto :goto_2

    :cond_6
    sub-float v3, v5, v3

    .line 116
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/android/common/ui/shutterbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/common/ui/shutterbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return v4
.end method
