.class public Lcom/zte/camera/ui/common/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/ui/common/b;


# static fields
.field private static final a:Ljava/lang/String; = "RotateLayout"


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
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    .line 23
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/RotateLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 43
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 113
    rem-int/lit16 p1, p1, 0x168

    .line 114
    iget p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    if-ne p2, p1, :cond_0

    return-void

    .line 115
    :cond_0
    iput p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    .line 117
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateLayout;->requestLayout()V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lcom/zte/camera/ui/common/RotateLayout;->a()V

    .line 36
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/RotateLayout;->invalidate()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 29
    invoke-direct {p0}, Lcom/zte/camera/ui/common/RotateLayout;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 52
    iget p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    const/16 p3, 0x5a

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x10e

    if-eq p2, p3, :cond_1

    .line 58
    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, v0, v0, p5, p4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1, p1}, Lcom/zte/camera/ui/common/RotateLayout;->setMeasuredDimension(II)V

    return-void

    .line 73
    :cond_0
    iget v1, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 81
    invoke-virtual {p0, v0, p1, p2}, Lcom/zte/camera/ui/common/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 82
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 83
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0, v0, p2, p1}, Lcom/zte/camera/ui/common/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 77
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 78
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 88
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zte/camera/ui/common/RotateLayout;->setMeasuredDimension(II)V

    .line 90
    iget v0, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    const/4 v1, 0x0

    if-eq v0, v3, :cond_4

    const/16 v3, 0xb4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 104
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 108
    :goto_1
    iget-object p1, p0, Lcom/zte/camera/ui/common/RotateLayout;->c:Landroid/view/View;

    iget p2, p0, Lcom/zte/camera/ui/common/RotateLayout;->b:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
