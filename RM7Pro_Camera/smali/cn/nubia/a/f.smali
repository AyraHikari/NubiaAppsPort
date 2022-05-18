.class public Lcn/nubia/a/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/a/f$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Landroid/view/View$OnClickListener;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcn/nubia/a/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 15
    iput p1, p0, Lcn/nubia/a/f;->c:I

    .line 18
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->e:I

    .line 19
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->f:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcn/nubia/a/f;->g:I

    .line 21
    iput p1, p0, Lcn/nubia/a/f;->h:I

    .line 22
    iput p1, p0, Lcn/nubia/a/f;->i:I

    .line 23
    iput p1, p0, Lcn/nubia/a/f;->j:I

    .line 24
    iput p1, p0, Lcn/nubia/a/f;->k:I

    .line 27
    iput p1, p0, Lcn/nubia/a/f;->n:I

    .line 29
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/a/h$a;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/a/f;->o:I

    .line 30
    iput p1, p0, Lcn/nubia/a/f;->p:I

    .line 32
    iput p1, p0, Lcn/nubia/a/f;->a:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/a/f;->q:Lcn/nubia/a/f$a;

    .line 119
    new-instance v0, Lcn/nubia/a/f$1;

    invoke-direct {v0, p0}, Lcn/nubia/a/f$1;-><init>(Lcn/nubia/a/f;)V

    iput-object v0, p0, Lcn/nubia/a/f;->b:Landroid/view/View$OnClickListener;

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/a/f;->setWillNotDraw(Z)V

    .line 39
    invoke-virtual {p0, p2}, Lcn/nubia/a/f;->a([Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/a/f;)Lcn/nubia/a/f$a;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/a/f;->q:Lcn/nubia/a/f$a;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    array-length v1, v0

    const/16 v2, 0xc

    if-gt v1, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    iput v1, p0, Lcn/nubia/a/f;->c:I

    .line 148
    iget v2, p0, Lcn/nubia/a/f;->l:I

    iget v3, p0, Lcn/nubia/a/f;->e:I

    mul-int/2addr v3, v1

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/a/f;->i:I

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcn/nubia/a/f;->g:I

    .line 149
    array-length v0, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcn/nubia/a/f;->f:I

    iget v2, p0, Lcn/nubia/a/f;->p:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 150
    iget v1, p0, Lcn/nubia/a/f;->m:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcn/nubia/a/f;->h:I

    .line 151
    iput v1, p0, Lcn/nubia/a/f;->j:I

    add-int/2addr v1, v0

    .line 152
    iput v1, p0, Lcn/nubia/a/f;->k:I

    .line 153
    iget v0, p0, Lcn/nubia/a/f;->l:I

    iput v0, p0, Lcn/nubia/a/f;->n:I

    return-void
.end method

.method private b()Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcn/nubia/a/f;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a([Landroid/view/View;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcn/nubia/a/f;->removeAllViews()V

    .line 44
    iput-object p1, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    .line 47
    array-length v0, p1

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->o:I

    .line 49
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->i:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->i:I

    .line 50
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->p:I

    goto :goto_0

    .line 51
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    array-length p1, p1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->d:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->o:I

    .line 53
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->i:I

    .line 54
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->p:I

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->o:I

    .line 57
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->i:I

    .line 58
    invoke-virtual {p0}, Lcn/nubia/a/f;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/a/h$a;->k:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/a/f;->p:I

    :goto_0
    const/4 p1, 0x0

    .line 61
    :goto_1
    iget-object v0, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 62
    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/a/f;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcn/nubia/a/f;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcn/nubia/a/f;->j:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcn/nubia/a/f;->k:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    sub-int p1, p4, p2

    .line 79
    iput p1, p0, Lcn/nubia/a/f;->l:I

    sub-int/2addr p5, p3

    .line 80
    iput p5, p0, Lcn/nubia/a/f;->m:I

    .line 81
    iget p1, p0, Lcn/nubia/a/f;->e:I

    sub-int/2addr p4, p1

    iput p4, p0, Lcn/nubia/a/f;->a:I

    .line 82
    invoke-direct {p0}, Lcn/nubia/a/f;->a()V

    const/4 p1, 0x0

    .line 83
    :goto_0
    iget-object p2, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 84
    aget-object p2, p2, p1

    .line 85
    iget p3, p0, Lcn/nubia/a/f;->c:I

    rem-int p4, p1, p3

    iget p5, p0, Lcn/nubia/a/f;->e:I

    mul-int/2addr p4, p5

    iget v0, p0, Lcn/nubia/a/f;->g:I

    add-int/2addr p4, v0

    rem-int v0, p1, p3

    iget v1, p0, Lcn/nubia/a/f;->i:I

    mul-int/2addr v0, v1

    add-int/2addr p4, v0

    .line 86
    div-int p3, p1, p3

    iget v0, p0, Lcn/nubia/a/f;->f:I

    iget v1, p0, Lcn/nubia/a/f;->p:I

    add-int/2addr v1, v0

    mul-int/2addr p3, v1

    iget v1, p0, Lcn/nubia/a/f;->h:I

    add-int/2addr p3, v1

    add-int/2addr p5, p4

    add-int/2addr v0, p3

    .line 90
    invoke-direct {p0}, Lcn/nubia/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget v1, p0, Lcn/nubia/a/f;->l:I

    sub-int p5, v1, p5

    sub-int/2addr v1, p4

    invoke-virtual {p2, p5, p3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {p2, p4, p3, p5, v0}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 101
    invoke-direct {p0}, Lcn/nubia/a/f;->a()V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/a/f;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcn/nubia/a/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 106
    iget v3, p0, Lcn/nubia/a/f;->e:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v5, p0, Lcn/nubia/a/f;->f:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 107
    iget-object v2, p0, Lcn/nubia/a/f;->d:[Landroid/view/View;

    array-length v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/a/f;->setMeasuredDimension(II)V

    return-void
.end method

.method public setClickItemListener(Lcn/nubia/a/f$a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/a/f;->q:Lcn/nubia/a/f$a;

    return-void
.end method
