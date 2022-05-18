.class public Landroid/support/v7/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;
.implements Landroid/support/v4/widget/AutoSizeableTextView;


# instance fields
.field private final mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private final mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    .line 82
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 84
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 175
    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 338
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    .line 345
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 319
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    .line 326
    :goto_0
    return v0

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v0

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 300
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    .line 307
    :goto_0
    return v0

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v0

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 357
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    sget-boolean v2, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_1

    .line 280
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 288
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 127
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroid/support/v7/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 199
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    .line 202
    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 238
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 260
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 215
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_1

    .line 216
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 164
    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 187
    sget-boolean v0, Landroid/support/v7/widget/AppCompatTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSize(IF)V

    goto :goto_0
.end method
