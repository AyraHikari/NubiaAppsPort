.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperApi14.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/DrawableWrapper;
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;,
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 66
    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 55
    invoke-direct {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateLocalState(Landroid/content/res/Resources;)V

    .line 56
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    return-void
.end method

.method private updateTint([I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->isCompatTintEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v2, v2, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 294
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v3, v3, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 296
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 298
    iget-boolean v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentColor:I

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v4, :cond_0

    .line 299
    :cond_2
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 300
    iput v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentColor:I

    .line 301
    iput-object v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;

    .line 302
    iput-boolean v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    move v0, v1

    .line 303
    goto :goto_0

    .line 306
    :cond_3
    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mColorFilterSet:Z

    .line 307
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->clearColorFilter()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 114
    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 208
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->invalidateSelf()V

    .line 247
    return-void
.end method

.method protected isCompatTintEnabled()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 143
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 140
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 92
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 216
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    .line 217
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 223
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mMutated:Z

    .line 225
    :cond_2
    return-object p0

    .line 221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperStateBase;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 255
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 131
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 109
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 136
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 121
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 126
    return-void
.end method

.method public setState([I)Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 149
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 272
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 273
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    .line 279
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->updateTint([I)Z

    .line 285
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 329
    :cond_0
    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 334
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setVisible(ZZ)Z

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setState([I)Z

    .line 336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setLevel(I)Z

    .line 337
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->setBounds(Landroid/graphics/Rect;)V

    .line 338
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 343
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->invalidateSelf()V

    .line 344
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
