.class public Lcn/nubia/camera/clone/ui/ScaleLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:F

.field private u:Landroid/graphics/PointF;

.field private v:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->a:I

    .line 24
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->b:I

    .line 25
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->c:I

    .line 28
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    .line 29
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->e:I

    .line 32
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    .line 33
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->h:F

    .line 38
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->i:I

    .line 39
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->j:I

    .line 42
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    .line 43
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    .line 46
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    .line 47
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    .line 50
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->o:F

    .line 51
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->p:F

    .line 53
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->q:F

    .line 54
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->r:F

    .line 55
    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->s:I

    .line 58
    iput p2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->t:F

    .line 60
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->u:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->b()V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private b()V
    .locals 6

    .line 80
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    .line 81
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->e:I

    .line 82
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    mul-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    mul-int/lit8 v3, v0, 0x3

    .line 83
    iput v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    int-to-float v4, v3

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 84
    iput v4, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->h:F

    sub-int/2addr v2, v1

    .line 85
    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v1, v2, 0x0

    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->b:I

    sub-int/2addr v3, v0

    .line 86
    div-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v0, v3, 0x0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->c:I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mFScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaleLayout"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 4

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    .line 302
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v0, p1

    .line 303
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    .line 118
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 119
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 120
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private d()V
    .locals 6

    .line 128
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    .line 129
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    iget v4, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget v4, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    iget v5, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutPoint mX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScaleLayout"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->b:I

    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->c:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v1

    iget v4, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->c:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 153
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 155
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 182
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    .line 183
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    .line 184
    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    .line 185
    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    if-le v2, v3, :cond_0

    .line 186
    iput v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    goto :goto_0

    .line 187
    :cond_0
    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    if-ge v2, v3, :cond_1

    .line 188
    iput v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    .line 190
    :cond_1
    :goto_0
    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->h:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    .line 191
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->c()V

    .line 193
    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    .line 194
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->h()V

    .line 195
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    .line 196
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->i()V

    .line 197
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->d()V

    return-void
.end method

.method private g()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->h()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->i()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->d()V

    return-void
.end method

.method private h()V
    .locals 5

    .line 276
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->i:I

    if-le v0, v1, :cond_0

    .line 277
    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    goto :goto_0

    .line 278
    :cond_0
    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    sub-int v4, v2, v3

    add-int/2addr v4, v1

    if-ge v0, v4, :cond_1

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 279
    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 5

    .line 285
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->j:I

    if-le v0, v1, :cond_0

    .line 286
    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    goto :goto_0

    .line 287
    :cond_0
    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->e:I

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    sub-int v4, v2, v3

    add-int/2addr v4, v1

    if-ge v0, v4, :cond_1

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 288
    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 103
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    .line 104
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->e:I

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    .line 105
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->c()V

    .line 106
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->i:I

    .line 107
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    iget v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->j:I

    .line 108
    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    .line 109
    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    .line 110
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->d()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 7

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-string v1, "ScaleLayout"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 226
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->q:F

    .line 227
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->r:F

    .line 228
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->t:F

    .line 229
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->c(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->u:Landroid/graphics/PointF;

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_POINTER_1_DOWN mSecondX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->q:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mSecondY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->r:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mSpacing = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->t:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_7

    .line 237
    invoke-direct {p0, p1}, Lcn/nubia/camera/clone/ui/ScaleLayout;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 238
    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->t:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    iput v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->a:I

    .line 239
    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->t:F

    .line 244
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->o:F

    sub-float/2addr v0, v1

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v3, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->p:F

    sub-float/2addr v1, v3

    .line 246
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->q:F

    sub-float/2addr v3, v5

    .line 247
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->r:F

    sub-float/2addr v5, v6

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->o:F

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->p:F

    .line 250
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->q:F

    .line 251
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->r:F

    mul-float/2addr v3, v0

    const/4 p1, 0x0

    cmpg-float v2, v3, p1

    if-ltz v2, :cond_4

    mul-float/2addr v5, v1

    cmpg-float p1, v5, p1

    if-gez p1, :cond_2

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    return-void

    .line 262
    :cond_3
    iget p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    .line 263
    iget p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    .line 264
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->g()V

    goto :goto_1

    .line 254
    :cond_4
    :goto_0
    iget p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->a:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_5

    return-void

    .line 256
    :cond_5
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->f()V

    goto :goto_1

    .line 219
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->o:F

    .line 220
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->p:F

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFirstX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->o:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; mFirstY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->p:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public getOffsetScaleX()F
    .locals 2

    .line 311
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getOffsetScaleY()F
    .locals 2

    .line 326
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getOffsetX()I
    .locals 2

    .line 319
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->i:I

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->k:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOffsetY()I
    .locals 2

    .line 334
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->j:I

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->l:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->getOffsetScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScale()F
    .locals 2

    .line 205
    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0900ef

    .line 94
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->v:Landroid/widget/RelativeLayout;

    .line 95
    invoke-direct {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->e()V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/camera/clone/ui/ScaleLayout;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 141
    iget p1, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->f:I

    const/high16 p2, 0x40000000    # 2.0f

    .line 142
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcn/nubia/camera/clone/ui/ScaleLayout;->g:I

    .line 143
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
