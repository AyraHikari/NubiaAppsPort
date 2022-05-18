.class Lcn/nubia/camera/q/m$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 969
    iget-object v0, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->i(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 973
    iget-object v0, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f80000    # 31.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 975
    iget-object v1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {v1}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/16 v1, 0x1f

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    rsub-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    div-float/2addr v1, p1

    .line 979
    iget-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    int-to-float p1, v0

    add-float/2addr v1, p1

    float-to-int v1, v1

    .line 983
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->t(Lcn/nubia/camera/q/m;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v2, v3

    const/4 v1, 0x1

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    aput v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 984
    iget-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->t(Lcn/nubia/camera/q/m;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 985
    iget-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->t(Lcn/nubia/camera/q/m;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 986
    iget-object p1, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/m$11;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->t(Lcn/nubia/camera/q/m;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
