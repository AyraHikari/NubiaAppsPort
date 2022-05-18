.class public Lcom/android/common/ui/CameraSelectButton;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/CameraSelectButton$c;,
        Lcom/android/common/ui/CameraSelectButton$a;,
        Lcom/android/common/ui/CameraSelectButton$b;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Lcom/android/common/ui/CameraSelectButton$c;

.field private C:Landroid/view/View$OnTouchListener;

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Lcom/android/common/ui/CameraSelectButton$b;

.field private H:I

.field private I:J

.field private a:I

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:[I

.field private e:[I

.field private f:I

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:Z

.field private j:Landroid/widget/Scroller;

.field private k:Lcom/android/common/ui/CameraSelectButton$a;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:[I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/graphics/PorterDuffXfermode;

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0x30000001

    .line 41
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->a:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 54
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->h:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 60
    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->s:[I

    .line 61
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->t:I

    .line 62
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->u:I

    .line 63
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->v:I

    .line 64
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->w:I

    .line 65
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$b;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->x:I

    .line 67
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->y:Landroid/graphics/PorterDuffXfermode;

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    .line 72
    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->C:Landroid/view/View$OnTouchListener;

    .line 74
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->D:I

    .line 75
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->E:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->F:Z

    .line 79
    new-instance v2, Lcom/android/common/ui/CameraSelectButton$b;

    invoke-direct {v2, p0, v1}, Lcom/android/common/ui/CameraSelectButton$b;-><init>(Lcom/android/common/ui/CameraSelectButton;Lcom/android/common/ui/CameraSelectButton$1;)V

    iput-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->G:Lcom/android/common/ui/CameraSelectButton$b;

    const/16 v2, 0x21c

    .line 262
    iput v2, p0, Lcom/android/common/ui/CameraSelectButton;->H:I

    .line 147
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/common/ui/c$b;->c:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->b:I

    .line 148
    sget-object v1, Lcom/android/common/ui/c$g;->r:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 149
    sget v1, Lcom/android/common/ui/c$g;->s:I

    const/16 v2, 0x12c

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->t:I

    .line 151
    sget v1, Lcom/android/common/ui/c$g;->t:I

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->a:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->w:I

    .line 152
    sget v1, Lcom/android/common/ui/c$g;->u:I

    const/16 v2, 0x16

    .line 153
    invoke-static {p1, v2}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result v2

    .line 152
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->v:I

    .line 154
    sget v1, Lcom/android/common/ui/c$g;->v:I

    const/16 v2, 0xe

    .line 155
    invoke-static {p1, v2}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p1

    .line 154
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->u:I

    .line 156
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    .line 158
    iget p2, p0, Lcom/android/common/ui/CameraSelectButton;->w:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/common/ui/CameraSelectButton;->u:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    const/high16 p2, 0x3f000000    # 0.5f

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, p2, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 164
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 165
    iget p2, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->h:I

    .line 166
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->z:Landroid/graphics/Paint;

    .line 167
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->y:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 168
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/common/ui/c$d;->a:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->A:Landroid/graphics/Bitmap;

    .line 171
    invoke-direct {p0}, Lcom/android/common/ui/CameraSelectButton;->getNavigationBarHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/common/ui/c$c;->k:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 172
    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->r:I

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/common/ui/c$c;->i:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->r:I

    :goto_0
    return-void
.end method

.method private a(III)F
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    aget v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    .line 277
    aget v0, v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 278
    invoke-direct {p0, v1, p3}, Lcom/android/common/ui/CameraSelectButton;->b(II)F

    move-result v0

    float-to-int v0, v0

    .line 279
    invoke-direct {p0, p2, p3}, Lcom/android/common/ui/CameraSelectButton;->b(II)F

    move-result p2

    float-to-int p2, p2

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 280
    iget-object p3, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    aget p1, p3, p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method static synthetic a(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/CameraSelectButton$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    return-object p0
.end method

.method private a(II)V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    aget v1, v0, p1

    neg-int v1, v1

    .line 245
    aget p1, v0, p1

    aget v0, v0, p2

    sub-int/2addr p1, v0

    .line 248
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr p1, v1

    .line 250
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz v0, :cond_1

    const-string v0, "CameraSelectButton"

    const-string v2, "scroll anim start "

    .line 252
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    invoke-interface {v0, p2}, Lcom/android/common/ui/CameraSelectButton$a;->a(I)V

    :cond_1
    :goto_0
    move v5, p1

    move v3, v1

    .line 256
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/common/ui/CameraSelectButton;->t:I

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 257
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/android/common/ui/CameraSelectButton$c;->a()V

    :cond_2
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->l:I

    add-int/2addr v1, v3

    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    aget v4, v4, v0

    add-int/2addr v1, v4

    .line 289
    invoke-direct {p0, v0, v1, v3}, Lcom/android/common/ui/CameraSelectButton;->a(III)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    .line 291
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->l:I

    invoke-direct {p0, v1, v2}, Lcom/android/common/ui/CameraSelectButton;->b(II)F

    move-result v1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 294
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/CameraSelectButton;->b:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/CameraSelectButton;->u:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/CameraSelectButton;->u:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 299
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/common/ui/CameraSelectButton;->w:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    :goto_1
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->m:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 302
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 303
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->h:I

    iget v4, p0, Lcom/android/common/ui/CameraSelectButton;->r:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->A:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)Z
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    .line 476
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 477
    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->x:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 478
    invoke-direct {p0, v1}, Lcom/android/common/ui/CameraSelectButton;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 480
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 483
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 485
    :cond_1
    throw v0
.end method

.method static synthetic a(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/common/ui/CameraSelectButton;->a(Landroid/view/SurfaceHolder;)Z

    move-result p0

    return p0
.end method

.method private b(II)F
    .locals 5

    sub-int/2addr p1, p2

    .line 271
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->H:I

    int-to-double v1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float p1, v1

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private b(I)I
    .locals 5

    .line 265
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->H:I

    int-to-double v1, v0

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int p1, v1

    return p1
.end method

.method static synthetic b(Lcom/android/common/ui/CameraSelectButton;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    return p0
.end method

.method private b(III)Z
    .locals 0

    if-lt p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/CameraSelectButton$b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/common/ui/CameraSelectButton;->G:Lcom/android/common/ui/CameraSelectButton$b;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 385
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    if-eqz v0, :cond_4

    .line 387
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 p1, v0, -0x1

    .line 390
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    if-ge p1, v1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-ge v0, p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 392
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 394
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x0

    .line 395
    iput-boolean v1, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/android/common/ui/CameraSelectButton;->a(II)V

    .line 397
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p1, :cond_4

    .line 398
    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    invoke-interface {p1, v0, v1}, Lcom/android/common/ui/CameraSelectButton$a;->a(II)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 400
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p1, :cond_4

    .line 401
    invoke-interface {p1}, Lcom/android/common/ui/CameraSelectButton$a;->a()V

    goto :goto_1

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    .line 403
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p1, :cond_4

    .line 404
    invoke-interface {p1}, Lcom/android/common/ui/CameraSelectButton$a;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method private c(II)V
    .locals 4

    .line 415
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_6

    .line 416
    iget p1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 417
    invoke-direct {p0, p2}, Lcom/android/common/ui/CameraSelectButton;->b(I)I

    move-result p2

    .line 418
    invoke-direct {p0, p2}, Lcom/android/common/ui/CameraSelectButton;->d(I)I

    move-result p2

    .line 421
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    if-ne p2, v0, :cond_0

    .line 422
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    invoke-interface {p1, v0}, Lcom/android/common/ui/CameraSelectButton$a;->c(I)V

    goto :goto_1

    .line 425
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ui/CameraSelectButton;->I:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string p1, "CameraSelectButton"

    const-string p2, "interl too short, return"

    .line 426
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 429
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    if-nez v0, :cond_2

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/CameraSelectButton;->I:J

    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 433
    :cond_3
    iget p2, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    :goto_0
    iput p2, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    if-eq p1, p2, :cond_4

    const/4 v0, 0x0

    .line 435
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/CameraSelectButton;->a(II)V

    .line 437
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p2, :cond_6

    .line 438
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    invoke-interface {p2, p1, v0}, Lcom/android/common/ui/CameraSelectButton$a;->a(II)V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 440
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p1, :cond_6

    .line 441
    invoke-interface {p1}, Lcom/android/common/ui/CameraSelectButton$a;->a()V

    goto :goto_1

    .line 442
    :cond_5
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_6

    .line 443
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    if-eqz p1, :cond_6

    .line 444
    invoke-interface {p1}, Lcom/android/common/ui/CameraSelectButton$a;->b()V

    :cond_6
    :goto_1
    return-void
.end method

.method private d(I)I
    .locals 8

    const/4 v0, -0x1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 458
    :goto_0
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    iget v3, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    aget v2, v2, v3

    add-int/2addr v2, p1

    .line 459
    :goto_1
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length p1, p1

    if-ge v3, p1, :cond_2

    if-le v3, v0, :cond_2

    .line 460
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    aget v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/android/common/ui/CameraSelectButton;->v:I

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v4, v7

    aget p1, p1, v3

    aget v5, v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr p1, v6

    invoke-direct {p0, v2, v4, p1}, Lcom/android/common/ui/CameraSelectButton;->b(III)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    return v0
.end method

.method private e()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    .line 207
    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    .line 208
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    aput v0, v1, v3

    .line 209
    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    aput v3, v0, v3

    const/4 v0, 0x1

    .line 210
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    iget-object v3, p0, Lcom/android/common/ui/CameraSelectButton;->g:Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v2, v0

    .line 212
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    iget-object v4, p0, Lcom/android/common/ui/CameraSelectButton;->d:[I

    aget v2, v4, v2

    aget v4, v4, v0

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    iget v2, p0, Lcom/android/common/ui/CameraSelectButton;->v:I

    add-int/2addr v3, v2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    .line 582
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 583
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 585
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 587
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigationBarHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSelectButton"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->E:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 575
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 576
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 577
    invoke-direct {p0, v0, p1}, Lcom/android/common/ui/CameraSelectButton;->a(II)V

    return-void
.end method

.method public a([Ljava/lang/String;I)V
    .locals 2

    .line 219
    iput p2, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    .line 220
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->c:[Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lcom/android/common/ui/CameraSelectButton;->e()V

    .line 222
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    .line 224
    :try_start_0
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    if-eqz p2, :cond_0

    .line 225
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :try_start_1
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    aget v0, v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 227
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    invoke-virtual {p1}, Lcom/android/common/ui/CameraSelectButton$c;->a()V

    .line 228
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 230
    :cond_0
    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    aget p2, p2, v0

    neg-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->j:Landroid/widget/Scroller;

    iget-object p2, p0, Lcom/android/common/ui/CameraSelectButton;->e:[I

    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->f:I

    aget p2, p2, v0

    neg-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->C:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 345
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->n:I

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->p:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->q:I

    .line 357
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_5

    .line 358
    iget p1, p0, Lcom/android/common/ui/CameraSelectButton;->n:I

    invoke-direct {p0, p1}, Lcom/android/common/ui/CameraSelectButton;->c(I)V

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->s:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v0, v0, v1

    if-lez v0, :cond_3

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->s:[I

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->s:[I

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 365
    :cond_3
    iget p1, p0, Lcom/android/common/ui/CameraSelectButton;->n:I

    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->o:I

    iget v1, p0, Lcom/android/common/ui/CameraSelectButton;->l:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/CameraSelectButton;->c(II)V

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/common/ui/CameraSelectButton;->o:I

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->p:I

    .line 349
    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->n:I

    .line 350
    iput v1, p0, Lcom/android/common/ui/CameraSelectButton;->q:I

    .line 351
    iput-boolean v2, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    :cond_5
    :goto_0
    return v2

    :cond_6
    :goto_1
    return v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->E:Z

    .line 193
    iget v0, p0, Lcom/android/common/ui/CameraSelectButton;->D:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->F:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 410
    iput-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->i:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 130
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 134
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 326
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    shr-int/lit8 p1, p4, 0x1

    .line 327
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->l:I

    sub-int/2addr p5, p3

    shr-int/lit8 p2, p5, 0x1

    .line 328
    iput p2, p0, Lcom/android/common/ui/CameraSelectButton;->m:I

    .line 329
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->H:I

    .line 330
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->s:[I

    invoke-virtual {p0, p1}, Lcom/android/common/ui/CameraSelectButton;->getLocationInWindow([I)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/android/common/ui/CameraSelectButton;->getAlpha()F

    move-result v0

    .line 199
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 200
    iget-object v1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    if-eqz v1, :cond_0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    invoke-virtual {p1}, Lcom/android/common/ui/CameraSelectButton$c;->a()V

    :cond_0
    return-void
.end method

.method public setCameraChangedListener(Lcom/android/common/ui/CameraSelectButton$a;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->k:Lcom/android/common/ui/CameraSelectButton$a;

    return-void
.end method

.method public setUserOntouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->C:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 180
    iput p1, p0, Lcom/android/common/ui/CameraSelectButton;->D:I

    .line 182
    iget-boolean v0, p0, Lcom/android/common/ui/CameraSelectButton;->E:Z

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 513
    new-instance v0, Lcom/android/common/ui/CameraSelectButton$c;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/CameraSelectButton$c;-><init>(Lcom/android/common/ui/CameraSelectButton;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    .line 514
    invoke-virtual {v0}, Lcom/android/common/ui/CameraSelectButton$c;->start()V

    const/4 p1, 0x1

    .line 515
    iput-boolean p1, p0, Lcom/android/common/ui/CameraSelectButton;->F:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 520
    iget-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/android/common/ui/CameraSelectButton$c;->b()V

    const/4 p1, 0x0

    .line 522
    iput-object p1, p0, Lcom/android/common/ui/CameraSelectButton;->B:Lcom/android/common/ui/CameraSelectButton$c;

    :cond_0
    const/4 p1, 0x0

    .line 524
    iput-boolean p1, p0, Lcom/android/common/ui/CameraSelectButton;->F:Z

    return-void
.end method
