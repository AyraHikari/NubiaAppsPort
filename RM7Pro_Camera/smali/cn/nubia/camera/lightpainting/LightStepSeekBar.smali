.class public Lcn/nubia/camera/lightpainting/LightStepSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;
    }
.end annotation


# static fields
.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:F

.field private static final f:F

.field private static final g:F

.field private static final h:I


# instance fields
.field protected a:Landroid/animation/ValueAnimator;

.field private i:F

.field private j:F

.field private k:[Ljava/lang/CharSequence;

.field private l:Landroid/graphics/Paint;

.field private m:Landroid/graphics/Paint;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/android/preference/ListPreference;

.field private t:Z

.field private u:Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x22

    .line 23
    invoke-static {v0}, Lcom/android/common/ui/i;->a(I)I

    move-result v0

    sput v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    const/16 v0, 0x4c

    const/16 v1, 0xff

    .line 24
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->c:I

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    sput v1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->d:I

    const/16 v1, 0xa

    .line 28
    invoke-static {v1}, Lcom/android/common/ui/i;->a(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->e:F

    const/16 v1, 0xc

    .line 30
    invoke-static {v1}, Lcom/android/common/ui/i;->a(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->f:F

    const/16 v1, 0x8

    .line 31
    invoke-static {v1}, Lcom/android/common/ui/i;->a(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->g:F

    .line 35
    invoke-static {v0}, Lcom/android/common/ui/i;->a(I)I

    move-result v0

    sput v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 36
    iput p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->i:F

    .line 37
    iput p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->j:F

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/CharSequence;

    const-string p2, "test"

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "+1"

    const/4 v1, 0x1

    aput-object p2, p1, v1

    const-string p2, "+2"

    const/4 v2, 0x2

    aput-object p2, p1, v2

    const/4 p2, 0x3

    const-string v3, "+3"

    aput-object v3, p1, p2

    const/4 p2, 0x4

    const-string v3, "+4"

    aput-object v3, p1, p2

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->k:[Ljava/lang/CharSequence;

    .line 43
    iput v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->n:I

    .line 44
    sget p1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    iput p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    .line 45
    iput v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    .line 47
    iput v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    .line 52
    iput-boolean v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->t:Z

    .line 54
    iput-boolean v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->v:Z

    .line 66
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    .line 67
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->m:Landroid/graphics/Paint;

    .line 71
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->m:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->m:Landroid/graphics/Paint;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 155
    iget v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->q:I

    mul-int/2addr p1, v0

    sget v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    add-int/2addr p1, v0

    return p1
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b(Landroid/graphics/Canvas;)V

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->c(Landroid/graphics/Canvas;)V

    .line 191
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->d(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(I)I
    .locals 4

    .line 163
    iget v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->q:I

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 164
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->k:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 165
    iget v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->q:I

    mul-int/2addr v2, v1

    sub-int v2, p1, v2

    sget v3, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    sget v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    int-to-float v2, v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    int-to-float v3, v1

    iget v4, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->n:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private c(I)I
    .locals 3

    .line 180
    sget v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 182
    :cond_0
    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->n:I

    add-int v2, v0, v1

    if-le p1, v2, :cond_1

    add-int p1, v0, v1

    :cond_1
    :goto_0
    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    sget v0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    int-to-float v2, v0

    iget v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    int-to-float v3, v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->f:F

    iget-object v3, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->k:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 227
    iget v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->i:F

    goto :goto_1

    .line 228
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 229
    iget v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->j:F

    neg-float v2, v2

    .line 231
    :cond_1
    :goto_1
    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    iget v4, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->q:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    sget v4, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->h:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 117
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->v:Z

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->u:Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;

    if-eqz v0, :cond_2

    .line 119
    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    invoke-interface {v0, v1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;->b(I)V

    .line 121
    :cond_2
    iget v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->a(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    goto :goto_0

    .line 124
    :cond_3
    iput-boolean v3, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->v:Z

    .line 127
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->c(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b(I)I

    move-result v0

    .line 129
    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    if-eq v0, v1, :cond_5

    .line 130
    iput v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->s:Lcom/android/preference/ListPreference;

    invoke-virtual {v1, v0}, Lcom/android/preference/ListPreference;->a(I)V

    .line 132
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->t:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->u:Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;

    if-eqz v0, :cond_5

    .line 133
    iget v1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    invoke-interface {v0, v1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;->b(I)V

    .line 141
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->invalidate()V

    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->a(Landroid/graphics/Canvas;)V

    .line 101
    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->e(Landroid/graphics/Canvas;)V

    .line 102
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 91
    sget p1, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->b:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->n:I

    .line 92
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->k:[Ljava/lang/CharSequence;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p4, p1

    iput p4, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->q:I

    sub-int/2addr p5, p3

    shr-int/lit8 p1, p5, 0x1

    .line 93
    iput p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->p:I

    .line 94
    iget p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->r:I

    invoke-direct {p0, p1}, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->a(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->o:I

    return-void
.end method

.method public setValueChanged(Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/LightStepSeekBar;->u:Lcn/nubia/camera/lightpainting/LightStepSeekBar$a;

    return-void
.end method
