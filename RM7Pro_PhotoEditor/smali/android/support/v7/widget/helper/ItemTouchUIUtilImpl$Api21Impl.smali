.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;
.super Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;-><init>()V

    return-void
.end method

.method private findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 3

    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4

    if-eqz p7, :cond_0

    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;->findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result v3

    add-float/2addr v3, v2

    invoke-static {p3, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {p3, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method
