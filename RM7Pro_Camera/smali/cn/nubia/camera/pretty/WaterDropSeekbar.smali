.class public Lcn/nubia/camera/pretty/WaterDropSeekbar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/WaterDropSeekbar$a;,
        Lcn/nubia/camera/pretty/WaterDropSeekbar$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Lcn/nubia/camera/pretty/WaterDropSeekbar$b;

.field private u:Lcn/nubia/camera/pretty/WaterDropSeekbar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    .line 25
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->b:Landroid/graphics/Rect;

    const/16 p2, 0x33

    const/4 v0, 0x0

    .line 28
    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->c:I

    const/16 p2, 0x4c

    const/16 v0, 0xff

    .line 29
    invoke-static {p2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->d:I

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->e:I

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->f:I

    const/4 p2, 0x5

    .line 48
    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    const/16 p2, 0xa

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    const/16 p2, 0x32

    .line 52
    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    const/16 p2, 0x64

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->u:Lcn/nubia/camera/pretty/WaterDropSeekbar$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar$a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 282
    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    .line 285
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private a()V
    .locals 2

    .line 192
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    div-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 2

    const v0, 0x7f0700b5

    .line 201
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->n:F

    const v0, 0x7f0700fa

    .line 203
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    const v0, 0x7f07013e

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->h:F

    const v0, 0x7f07008a

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->k:F

    const v0, 0x7f0700a5

    .line 207
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->l:F

    const v0, 0x7f070136

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->j:F

    const v0, 0x7f070096

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->m:F

    .line 213
    iget p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->h:F

    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->j:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->i:F

    .line 215
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->s:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 225
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v1, v2

    .line 228
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 229
    iget v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    goto :goto_0

    .line 231
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 232
    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    .line 233
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v3, v4

    .line 237
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 238
    iget-object v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->f:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->k:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getStartString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getStartString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 243
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->i:F

    iget v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->l:F

    add-float/2addr v0, v4

    iget-object v4, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 244
    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getStartString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 246
    iget-object v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 247
    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getEndString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 3

    .line 254
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, p2

    goto :goto_0

    .line 257
    :cond_0
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    add-float/2addr v0, p2

    .line 259
    :goto_0
    iget-object p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->i:F

    .line 262
    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->m:F

    iget-object v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    iget-object v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 265
    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    if-eqz v1, :cond_1

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    if-eq v1, v2, :cond_1

    .line 266
    invoke-direct {p0, v1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->n:F

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .line 196
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    div-int/2addr v0, v1

    .line 197
    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    return-void
.end method

.method private getEndString()Ljava/lang/String;
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->u:Lcn/nubia/camera/pretty/WaterDropSeekbar$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar$a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getStartString()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->u:Lcn/nubia/camera/pretty/WaterDropSeekbar$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->s:Ljava/lang/String;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/pretty/WaterDropSeekbar$a;II)V
    .locals 0

    mul-int/2addr p3, p2

    .line 74
    iput p3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    .line 75
    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->p:I

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->u:Lcn/nubia/camera/pretty/WaterDropSeekbar$a;

    .line 77
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->j:F

    sub-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->getWidth()I

    move-result v2

    .line 113
    iget v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    int-to-float v4, v3

    iget v5, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v0, v5

    mul-float/2addr v4, v0

    int-to-float v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v5, v2

    sub-float/2addr v0, v5

    div-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    if-gez v0, :cond_2

    .line 115
    iput v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    goto :goto_0

    :cond_2
    if-le v0, v3, :cond_3

    .line 117
    iput v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    .line 119
    :cond_3
    :goto_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_4

    .line 120
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    .line 123
    :cond_4
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    .line 124
    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->b()V

    .line 125
    iget-object v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->t:Lcn/nubia/camera/pretty/WaterDropSeekbar$b;

    if-eqz v1, :cond_5

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    if-eq v0, v2, :cond_5

    .line 126
    invoke-interface {v1, v2}, Lcn/nubia/camera/pretty/WaterDropSeekbar$b;->a(I)V

    .line 129
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 132
    :cond_6
    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a()V

    .line 133
    iget-object p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->t:Lcn/nubia/camera/pretty/WaterDropSeekbar$b;

    if-eqz p1, :cond_7

    .line 134
    invoke-interface {p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar$b;->a()V

    .line 142
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->invalidate()V

    return v1
.end method

.method public getCurrentProgress()I
    .locals 1

    .line 94
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 155
    iget v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->j:F

    sub-float v3, v5, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float v5, v0, v1

    .line 162
    iget v6, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->i:F

    .line 163
    iget-object v7, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->q:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->r:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 167
    iget-object v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    sub-float/2addr v2, v3

    goto :goto_0

    .line 172
    :cond_0
    iget v1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->g:F

    add-float v2, v1, v0

    :goto_0
    move v4, v1

    move v6, v2

    .line 175
    iget v7, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->i:F

    .line 176
    iget-object v8, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Landroid/graphics/Canvas;)V

    .line 182
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 187
    iget p2, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->h:F

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 188
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcn/nubia/camera/pretty/WaterDropSeekbar$b;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->t:Lcn/nubia/camera/pretty/WaterDropSeekbar$b;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcn/nubia/camera/pretty/WaterDropSeekbar;->o:I

    .line 86
    invoke-direct {p0}, Lcn/nubia/camera/pretty/WaterDropSeekbar;->a()V

    return-void
.end method
