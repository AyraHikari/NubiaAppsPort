.class final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_OPACITY_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field private static final CAPTION_TRANSLATE_Y_ANIMATION_DURATION:I = 0xd9

.field static final COUNTER_INDEX:I = 0x2

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private captionToShow:I

.field private final captionTranslationYPx:F

.field private captionViewsAdded:I

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private errorViewTextColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private helperTextViewTextColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 122
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 123
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object p0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 304
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 303
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 306
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 2

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 313
    :goto_0
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xa7

    .line 314
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 320
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    neg-float p0, p0

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    aput v2, v1, p0

    .line 321
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xd9

    .line 322
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 323
    sget-object p1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 343
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object p0

    .line 341
    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCaptionStateError(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 497
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 499
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 511
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 513
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 270
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 278
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return-void
.end method

.method private setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 535
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p0, 0x8

    .line 415
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 191
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 192
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 9

    if-eqz p3, :cond_0

    .line 204
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    iput-object v7, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 206
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-boolean v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 216
    iget-boolean v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 224
    invoke-static {v7, v8}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v3

    .line 226
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v5

    .line 228
    new-instance v6, Lcom/google/android/material/textfield/IndicatorViewController$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 256
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    return-void
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .locals 6

    .line 366
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 368
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 371
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 372
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 377
    new-instance v0, Landroid/widget/Space;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 378
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 379
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 386
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 388
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 389
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 393
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    return-void
.end method

.method adjustIndicatorPadding()V
    .locals 3

    .line 350
    invoke-direct {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 354
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    const/4 v2, 0x0

    .line 352
    invoke-static {v0, v1, v2, p0, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 329
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 1

    .line 489
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result p0

    return p0
.end method

.method errorShouldBeShown()Z
    .locals 1

    .line 493
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result p0

    return p0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getHelperTextViewColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getHelperTextViewCurrentTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method helperTextIsDisplayed()Z
    .locals 1

    .line 503
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result p0

    return p0
.end method

.method helperTextShouldBeShown()Z
    .locals 1

    .line 507
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result p0

    return p0
.end method

.method hideError()V
    .locals 4

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 168
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 170
    iget-boolean v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 171
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 174
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 177
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 178
    invoke-direct {p0, v3, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 177
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method hideHelperText()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 144
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 147
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 148
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 147
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method isCaptionView(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method isErrorEnabled()Z
    .locals 0

    .line 450
    iget-boolean p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return p0
.end method

.method isHelperTextEnabled()Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return p0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 403
    iget p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    .line 404
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionViewsAdded:I

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 405
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 409
    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 410
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method setErrorEnabled(Z)V
    .locals 3

    .line 421
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 429
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 430
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 431
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 435
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 436
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 438
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 441
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 444
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 446
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return-void
.end method

.method setErrorTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 557
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    .line 558
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method setErrorViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 550
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    .line 551
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 552
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 580
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    .line 581
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 582
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 3

    .line 459
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 467
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 468
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 469
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 475
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 476
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 477
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    .line 480
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 482
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 483
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 485
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return-void
.end method

.method setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 573
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    .line 574
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 575
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 527
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    .line 528
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 529
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 153
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 154
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 158
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 160
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 161
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 160
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 129
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 130
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 134
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 136
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 137
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 136
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method
