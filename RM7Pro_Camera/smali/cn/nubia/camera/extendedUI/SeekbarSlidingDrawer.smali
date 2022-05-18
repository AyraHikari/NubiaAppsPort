.class public Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;
.super Lcom/android/common/ui/f;
.source "SourceFile"


# instance fields
.field private a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    .line 31
    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x7f0c009e

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g:I

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/TextView;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(IIIIILandroid/widget/SeekBar$OnSeekBarChangeListener;Z)V
    .locals 4

    .line 36
    iput p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->e:I

    .line 37
    iput p2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->f:I

    .line 38
    iput p5, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g:I

    .line 39
    iput p4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    .line 40
    iput-object p6, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 42
    iget-object p4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->c:Landroid/widget/TextView;

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    new-array v2, p5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    iget-object p4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->b:Landroid/widget/TextView;

    if-eqz p4, :cond_1

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    new-array v2, p5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    iget-object p4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d:Landroid/widget/TextView;

    if-eqz p4, :cond_2

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g:I

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p5, p6

    invoke-virtual {v0, v1, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_2
    iget-object p4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    if-eqz p4, :cond_3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    div-float/2addr p3, p1

    .line 52
    invoke-virtual {p4}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p4, p1}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->setProgress(I)V

    .line 54
    :cond_3
    invoke-virtual {p0, p7, p6}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(ZZ)V

    return-void
.end method

.method protected b()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/android/common/ui/f;->b()V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/android/common/ui/f;->c()V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandleImage()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandleImage()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 77
    invoke-super {p0}, Lcom/android/common/ui/f;->onFinishInflate()V

    const v0, 0x7f0902ad

    .line 79
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    const v0, 0x7f0902ae

    .line 80
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->c:Landroid/widget/TextView;

    const v0, 0x7f0902af

    .line 81
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->b:Landroid/widget/TextView;

    const v0, 0x7f090277

    .line 82
    invoke-virtual {p0, v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d:Landroid/widget/TextView;

    .line 83
    iget v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    new-instance v1, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;-><init>(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 7

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->e:I

    sub-int v1, p1, v0

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->f:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    invoke-virtual {v0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->setProgress(I)V

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandlePosition()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getHandleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
