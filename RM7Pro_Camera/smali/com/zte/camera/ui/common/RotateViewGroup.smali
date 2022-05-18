.class public Lcom/zte/camera/ui/common/RotateViewGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x106000d

    .line 27
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setBackgroundResource(I)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/nubia/a/a$j;->N:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    sget p2, Lcom/nubia/a/a$j;->R:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->b:I

    .line 31
    sget p2, Lcom/nubia/a/a$j;->Q:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->c:I

    .line 32
    sget p2, Lcom/nubia/a/a$j;->O:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->d:I

    .line 33
    sget p2, Lcom/nubia/a/a$j;->P:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->e:I

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RotateViewGroup: mTopMargin:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  mStartMargin:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mytest"

    invoke-static {v0, p2}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 52
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 92
    iget v1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->b:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 93
    iget v1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->c:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 94
    iget v1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->e:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 95
    iget v1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->d:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 96
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 41
    invoke-direct {p0}, Lcom/zte/camera/ui/common/RotateViewGroup;->a()V

    .line 42
    invoke-direct {p0}, Lcom/zte/camera/ui/common/RotateViewGroup;->b()V

    .line 43
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateViewGroup;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1, p1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, v0, p2, p1}, Lcom/zte/camera/ui/common/RotateViewGroup;->measureChild(Landroid/view/View;II)V

    .line 79
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 80
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/zte/camera/ui/common/RotateViewGroup;->setMeasuredDimension(II)V

    .line 84
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 85
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateViewGroup;->a:Landroid/view/View;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
