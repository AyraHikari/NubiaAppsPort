.class public Lcom/zte/camera/ui/common/RotateLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# static fields
.field private static final a:Ljava/lang/String; = "RotateLinearLayout"


# instance fields
.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 91
    rem-int/lit16 p1, p1, 0x168

    .line 92
    iget p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    if-ne p2, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iput p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    .line 95
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateLinearLayout;->requestLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 30
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 39
    iget p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    const/16 p3, 0x5a

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p2, p3, :cond_1

    .line 45
    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, v0, v0, p5, p4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 53
    iget v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/camera/ui/common/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 62
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 63
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/zte/camera/ui/common/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 57
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 58
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 66
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/camera/ui/common/RotateLinearLayout;->setMeasuredDimension(II)V

    .line 68
    iget v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 83
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 79
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 75
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 71
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    :goto_1
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->c:Landroid/view/View;

    iget p2, p0, Lcom/zte/camera/ui/common/RotateLinearLayout;->b:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
