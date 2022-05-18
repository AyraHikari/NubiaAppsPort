.class Lcn/nubia/commonui/actionbar/internal/widget/a;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# instance fields
.field final a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-boolean v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/a;->a:Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
