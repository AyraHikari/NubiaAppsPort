.class public Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;
.super Lcn/nubia/weather/ui/view/DragSortItemView;
.source "DragSortItemViewCheckable.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 33
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 35
    :cond_0
    return v1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    .prologue
    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/DragSortItemViewCheckable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 50
    :cond_0
    return-void
.end method
