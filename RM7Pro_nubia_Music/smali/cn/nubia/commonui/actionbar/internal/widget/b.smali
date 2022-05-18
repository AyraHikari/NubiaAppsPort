.class Lcn/nubia/commonui/actionbar/internal/widget/b;
.super Lcn/nubia/commonui/actionbar/internal/widget/a;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/a;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method
