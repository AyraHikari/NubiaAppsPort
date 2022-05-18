.class public Lcom/android/common/ui/f;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Lcom/android/common/ui/f$a;

.field private k:Z

.field private l:Landroid/animation/AnimatorSet;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/common/ui/f;->i:Z

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/android/common/ui/f;->k:Z

    .line 325
    iput-boolean v0, p0, Lcom/android/common/ui/f;->n:Z

    .line 55
    sget-object v0, Lcom/android/common/ui/c$g;->az:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/android/common/ui/c$g;->aA:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/ui/f;->a:Landroid/graphics/drawable/Drawable;

    .line 57
    sget p2, Lcom/android/common/ui/c$g;->aB:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/common/ui/f;->b:I

    .line 58
    sget p2, Lcom/android/common/ui/c$g;->aC:I

    invoke-virtual {p0}, Lcom/android/common/ui/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/common/ui/c$c;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/common/ui/f;->c:I

    .line 59
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean p3, p0, Lcom/android/common/ui/f;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/f;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/android/common/ui/f;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/android/common/ui/f;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/common/ui/f;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/android/common/ui/f;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/android/common/ui/f;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/android/common/ui/f;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/android/common/ui/f;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/android/common/ui/f;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/common/ui/f;->b:I

    return p0
.end method

.method static synthetic e(Lcom/android/common/ui/f;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/android/common/ui/f;->n:Z

    return p0
.end method

.method static synthetic f(Lcom/android/common/ui/f;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/common/ui/f;->d:Landroid/view/View;

    return-object p0
.end method

.method private i()V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 115
    iget v1, p0, Lcom/android/common/ui/f;->b:I

    const/16 v2, 0x18

    const/16 v3, 0xe

    const/16 v4, 0xa

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 119
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 120
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v6, v7, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 121
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    .line 123
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 124
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 125
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 126
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v6, v2, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 130
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 132
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 135
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    :goto_0
    return-void

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position not support, value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/f;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 10

    .line 246
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "translateHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSlidingDrawer"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget v5, p0, Lcom/android/common/ui/f;->c:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    aput v7, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x12c

    .line 254
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 256
    iget v1, p0, Lcom/android/common/ui/f;->b:I

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/common/ui/f;->c:I

    int-to-float v4, v4

    aput v4, v3, v6

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    iget-object v2, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_1
    iget-object v1, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 270
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/common/ui/f$2;

    invoke-direct {v1, p0}, Lcom/android/common/ui/f$2;-><init>(Lcom/android/common/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private k()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    iput-object v1, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 320
    iput-object v1, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    :cond_3
    return-void
.end method

.method private l()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/f;->d:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 332
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 333
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/common/ui/f$3;

    invoke-direct {v1, p0}, Lcom/android/common/ui/f$3;-><init>(Lcom/android/common/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IZ)V
    .locals 0

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/common/ui/f;->e()V

    goto :goto_2

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/f;->f()Z

    goto :goto_2

    .line 190
    :cond_1
    iput-boolean p1, p0, Lcom/android/common/ui/f;->k:Z

    .line 191
    iget-object p1, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 192
    iget-object p1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget p1, p0, Lcom/android/common/ui/f;->b:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    iget-boolean p2, p0, Lcom/android/common/ui/f;->k:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/common/ui/f;->k:Z

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_5
    iget-object p1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/common/ui/f;->k:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    iget p2, p0, Lcom/android/common/ui/f;->c:I

    int-to-float p2, p2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/android/common/ui/f;->k:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/common/ui/f;->i:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public e()V
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/android/common/ui/f;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/f;->j:Lcom/android/common/ui/f$a;

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0}, Lcom/android/common/ui/f$a;->a()V

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/common/ui/f;->j()V

    .line 209
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public f()Z
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/android/common/ui/f;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/f;->j:Lcom/android/common/ui/f$a;

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0}, Lcom/android/common/ui/f$a;->b()V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/common/ui/f;->j()V

    .line 220
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v0, p0, Lcom/android/common/ui/f;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->reverse()V

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 2

    .line 226
    iget-boolean v0, p0, Lcom/android/common/ui/f;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/android/common/ui/f;->n:Z

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/f;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "HSlidingDrawer"

    const-string v1, "hide"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getHandleImage()Landroid/widget/ImageView;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/common/ui/f;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getHandleImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/common/ui/f;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getHandlePosition()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/android/common/ui/f;->b:I

    return v0
.end method

.method protected getHandleText()Landroid/widget/TextView;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/common/ui/f;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getSlideAnimDutaion()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public h()V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/common/ui/f;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/common/ui/f;->l()V

    .line 241
    iget-object v0, p0, Lcom/android/common/ui/f;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v0, "HSlidingDrawer"

    const-string v1, "show"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/common/ui/f;->k()V

    .line 155
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 90
    sget v0, Lcom/android/common/ui/c$e;->c:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/f;->d:Landroid/view/View;

    .line 92
    sget v0, Lcom/android/common/ui/c$e;->f:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    .line 93
    sget v0, Lcom/android/common/ui/c$e;->h:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/f;->f:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/android/common/ui/c$e;->g:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/f;->g:Landroid/widget/ImageView;

    .line 95
    iget v1, p0, Lcom/android/common/ui/f;->b:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/common/ui/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_1
    sget v0, Lcom/android/common/ui/c$e;->a:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/android/common/ui/f;->i()V

    .line 102
    iget-object v0, p0, Lcom/android/common/ui/f;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/common/ui/f$1;

    invoke-direct {v1, p0}, Lcom/android/common/ui/f$1;-><init>(Lcom/android/common/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setDrawerListener(Lcom/android/common/ui/f$a;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/android/common/ui/f;->j:Lcom/android/common/ui/f$a;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lcom/android/common/ui/f;->i:Z

    return-void
.end method

.method public setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 74
    iput-object p1, p0, Lcom/android/common/ui/f;->a:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lcom/android/common/ui/f;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/common/ui/f;->b:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setHandlePosition(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/common/ui/f;->b:I

    .line 69
    iget-object p1, p0, Lcom/android/common/ui/f;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/common/ui/f;->setHandleImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-direct {p0}, Lcom/android/common/ui/f;->i()V

    return-void
.end method

.method public setListFocusable(Z)V
    .locals 0

    return-void
.end method

.method public setSlideHeight(I)V
    .locals 2

    .line 81
    iput p1, p0, Lcom/android/common/ui/f;->c:I

    .line 82
    iget-boolean p1, p0, Lcom/android/common/ui/f;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iget v0, p0, Lcom/android/common/ui/f;->c:I

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/common/ui/f;->h:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
