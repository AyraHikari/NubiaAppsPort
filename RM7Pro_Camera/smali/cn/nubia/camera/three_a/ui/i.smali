.class public Lcn/nubia/camera/three_a/ui/i;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/three_a/ui/i$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcn/nubia/camera/three_a/ui/i$a;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 31
    iput-boolean p2, p0, Lcn/nubia/camera/three_a/ui/i;->a:Z

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcn/nubia/camera/three_a/ui/i;->e:Z

    .line 210
    new-instance p2, Lcn/nubia/camera/three_a/ui/i$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/three_a/ui/i$1;-><init>(Lcn/nubia/camera/three_a/ui/i;)V

    iput-object p2, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/i;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/i;)Lcn/nubia/camera/three_a/ui/i$a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/i;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/camera/three_a/ui/i;->e:Z

    return p1
.end method

.method private f()Z
    .locals 7

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    .line 74
    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v4

    .line 77
    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v5

    sget-object v6, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v6}, Lcn/nubia/camera/d/b;->a()I

    move-result v6

    if-lt v5, v6, :cond_2

    sget-object v5, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v5, :cond_2

    .line 79
    invoke-static {v3}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    if-eq v3, v0, :cond_2

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v4, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v2

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->e:Z

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p0}, Lcn/nubia/camera/three_a/ui/i$a;->b(Lcn/nubia/camera/three_a/ui/i;)V

    :cond_0
    const-string v0, "VerticalSeekBar"

    const-string v1, "finish Ev"

    .line 167
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "VerticalSeekBar"

    const-string v1, "Ev start"

    .line 171
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->e:Z

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p0}, Lcn/nubia/camera/three_a/ui/i$a;->a(Lcn/nubia/camera/three_a/ui/i;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getProgress()I

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcn/nubia/camera/three_a/ui/i;->setProgress(I)V

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->e()V

    .line 188
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, v1}, Lcn/nubia/camera/three_a/ui/i$a;->a(F)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcn/nubia/camera/three_a/ui/i;->onSizeChanged(IIII)V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 106
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 97
    iget-boolean p1, p0, Lcn/nubia/camera/three_a/ui/i;->a:Z

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/three_a/ui/i;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->a:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 113
    iget-boolean v0, p0, Lcn/nubia/camera/three_a/ui/i;->a:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/i;->f()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->a()V

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 123
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->c()V

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getMax()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v0, v2

    const/16 v2, 0x64

    if-gt v0, v2, :cond_7

    if-gez v0, :cond_8

    .line 128
    :cond_7
    invoke-static {v0, v1, v2}, Lcn/nubia/camera/three_a/a;->a(III)I

    move-result v0

    .line 130
    :cond_8
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/i;->setProgress(I)V

    .line 132
    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0800fe

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 133
    invoke-virtual {p0, v2}, Lcn/nubia/camera/three_a/ui/i;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v4, v1, v1}, Lcn/nubia/camera/three_a/ui/i;->onSizeChanged(IIII)V

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    if-eqz v1, :cond_9

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    .line 138
    invoke-interface {v1, v0}, Lcn/nubia/camera/three_a/ui/i$a;->a(F)V

    .line 140
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 141
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->a()V

    :cond_a
    :goto_0
    return v3
.end method

.method public setDragProgress(I)V
    .locals 2

    .line 199
    invoke-virtual {p0, p1}, Lcn/nubia/camera/three_a/ui/i;->setProgress(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcn/nubia/camera/three_a/ui/i;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/i;->e()V

    .line 203
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 204
    invoke-interface {v0, p1}, Lcn/nubia/camera/three_a/ui/i$a;->a(F)V

    :cond_0
    return-void
.end method

.method public setOnVerticalSeekBarChangedListener(Lcn/nubia/camera/three_a/ui/i$a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/i;->c:Lcn/nubia/camera/three_a/ui/i$a;

    return-void
.end method
