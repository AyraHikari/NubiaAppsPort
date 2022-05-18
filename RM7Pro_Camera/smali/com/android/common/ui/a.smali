.class public Lcom/android/common/ui/a;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/a$b;,
        Lcom/android/common/ui/a$a;
    }
.end annotation


# static fields
.field private static p:Z = false


# instance fields
.field protected a:Lcom/android/preference/IconListPreference;

.field private final b:F

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/android/common/ui/k$a;

.field private f:Lcom/android/common/ui/a$a;

.field private g:Lcom/android/common/ui/b;

.field private h:Lcom/android/common/ui/a$b;

.field private i:I

.field private j:I

.field private final k:I

.field private final l:I

.field private m:Landroid/widget/FrameLayout;

.field private n:[Landroid/widget/TextView;

.field private o:Z

.field private q:Z

.field private r:Landroid/animation/AnimatorSet;

.field private s:Landroid/animation/AnimatorSet;

.field private t:I

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private x:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 44
    iput p1, p0, Lcom/android/common/ui/a;->b:F

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/common/ui/a;->d:I

    .line 56
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/common/ui/c$c;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/a;->k:I

    .line 58
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/common/ui/c$c;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/a;->l:I

    .line 59
    iput-object p1, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    .line 61
    iput-object p1, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/android/common/ui/a;->o:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/common/ui/a;->q:Z

    .line 462
    new-instance v0, Lcom/android/common/ui/a$4;

    invoke-direct {v0, p0}, Lcom/android/common/ui/a$4;-><init>(Lcom/android/common/ui/a;)V

    iput-object v0, p0, Lcom/android/common/ui/a;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 474
    new-instance v0, Lcom/android/common/ui/a$5;

    invoke-direct {v0, p0}, Lcom/android/common/ui/a$5;-><init>(Lcom/android/common/ui/a;)V

    iput-object v0, p0, Lcom/android/common/ui/a;->x:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lcom/android/common/ui/a;->y:Z

    .line 622
    iput-boolean v0, p0, Lcom/android/common/ui/a;->z:Z

    const/16 v0, 0xff

    .line 75
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/a;->i:I

    .line 76
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/common/ui/c$b;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/a;->j:I

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/a;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/common/ui/a;->d:I

    return p1
.end method

.method private a(Ljava/lang/CharSequence;ILandroid/widget/FrameLayout;IIII)Landroid/widget/TextView;
    .locals 5

    .line 165
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/common/ui/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p7, p7

    const/4 v1, 0x0

    .line 167
    invoke-virtual {v0, v1, p7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    invoke-virtual {v0, p5, v1, p6, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/16 p7, 0x11

    .line 169
    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p7, 0x1

    .line 170
    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 171
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 173
    iget v2, p0, Lcom/android/common/ui/a;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    new-instance v2, Lcom/android/common/ui/a$1;

    invoke-direct {v2, p0, p2}, Lcom/android/common/ui/a$1;-><init>(Lcom/android/common/ui/a;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 192
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 194
    instance-of v2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    .line 195
    move-object v2, p2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xa

    .line 196
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_0
    move v1, p7

    goto :goto_1

    .line 197
    :cond_0
    instance-of v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v2, :cond_1

    .line 198
    move-object v2, p2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 199
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    if-nez v4, :cond_1

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    new-instance p7, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr p1, p5

    add-int/2addr p1, p6

    invoke-direct {p7, p1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    iput p4, p7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v1, :cond_2

    const/16 p1, 0x30

    .line 205
    iput p1, p7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 206
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getHeight()I

    move-result p1

    iput p1, p7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_2
    const/16 p1, 0x10

    .line 208
    iput p1, p7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    :goto_2
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 211
    invoke-virtual {p3, v0, p7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .line 146
    sget-boolean v0, Lcom/android/common/ui/a;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/common/ui/a;->q:Z

    if-nez v0, :cond_0

    const-string v0, "playShowAnim"

    .line 147
    invoke-direct {p0, v0}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 148
    sput-boolean v0, Lcom/android/common/ui/a;->p:Z

    .line 149
    invoke-direct {p0}, Lcom/android/common/ui/a;->j()V

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 339
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 340
    fill-array-data v0, :array_1

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 341
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x64

    .line 344
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 345
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V
    .locals 10

    .line 217
    iget-object v0, p0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [I

    .line 223
    invoke-direct {p0}, Lcom/android/common/ui/a;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/common/ui/a;->t:I

    rsub-int v1, v1, 0x438

    .line 224
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    aget-object v4, p2, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/common/ui/a;->t:I

    .line 225
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 227
    :goto_0
    aput v1, v3, v2

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 left:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v4, v3, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/common/ui/a;->k()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget v4, v3, v4

    aget-object v5, p2, v1

    .line 231
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v1, -0x1

    aget v5, v3, v4

    aget-object v4, p2, v4

    .line 232
    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v4, v5

    :goto_2
    aput v4, v3, v1

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "left: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 238
    invoke-virtual {p0, v0}, Lcom/android/common/ui/a;->getLocationInWindow([I)V

    .line 240
    aget v4, v0, v2

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    const v5, 0x3edc28f6    # 0.43f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v2, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 247
    invoke-direct {p0, v0, v8, v9, v7}, Lcom/android/common/ui/a;->a([ILjava/util/Collection;Ljava/util/Collection;Landroid/view/animation/PathInterpolator;)V

    move-object v1, p0

    move-object v2, p2

    move-object v5, v8

    move-object v6, v9

    .line 250
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/a;->a([Landroid/widget/TextView;[IILjava/util/Collection;Ljava/util/Collection;Landroid/view/animation/PathInterpolator;)V

    .line 251
    invoke-direct {p0, p1, v8, v9}, Lcom/android/common/ui/a;->a(Landroid/widget/FrameLayout;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 253
    invoke-direct {p0, v8, v9}, Lcom/android/common/ui/a;->a(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 255
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    .line 256
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    .line 257
    iget-object p1, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 258
    iget-object p1, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 260
    iget-object p1, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/common/ui/a$2;

    invoke-direct {p2, p0}, Lcom/android/common/ui/a$2;-><init>(Lcom/android/common/ui/a;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iget-object p1, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/common/ui/a$3;

    invoke-direct {p2, p0}, Lcom/android/common/ui/a$3;-><init>(Lcom/android/common/ui/a;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/a;Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/a;->a(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/a;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 353
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parentPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " x "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/common/ui/a;->u:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 356
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v5, :cond_0

    .line 357
    aget v5, v1, v4

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v2

    aput v5, v1, v4

    .line 358
    aget v2, v1, v4

    if-nez v2, :cond_0

    aput v3, v1, v4

    .line 365
    :cond_0
    aget v1, v1, v4

    if-nez v1, :cond_1

    return-void

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/common/ui/a;->u:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v5, v4

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/android/common/ui/a;->u:Landroid/view/View;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v0, [F

    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v3

    aput v6, v7, v4

    invoke-static {v2, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 372
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 373
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v1, p0, Lcom/android/common/ui/a;->v:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 380
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/android/common/ui/a;->v:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v2, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 382
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x32

    .line 383
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 384
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
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

.method private a([ILjava/util/Collection;Ljava/util/Collection;Landroid/view/animation/PathInterpolator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/PathInterpolator;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/android/common/ui/a;->k()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 410
    iget v4, v0, Lcom/android/common/ui/a;->t:I

    rsub-int v4, v4, 0x438

    invoke-virtual/range {p0 .. p0}, Lcom/android/common/ui/a;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    aget v6, p1, v5

    sub-int/2addr v4, v6

    .line 411
    aget v6, p1, v5

    rsub-int/lit8 v6, v6, 0x0

    goto :goto_0

    .line 413
    :cond_0
    iget v4, v0, Lcom/android/common/ui/a;->t:I

    aget v6, p1, v5

    sub-int/2addr v4, v6

    .line 414
    aget v6, p1, v5

    rsub-int v6, v6, 0x438

    :goto_0
    move v7, v5

    .line 418
    :goto_1
    iget-object v8, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 419
    iget-object v8, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/common/ui/g;

    invoke-virtual {v8}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v8

    if-ne v8, v0, :cond_1

    .line 420
    iget-object v8, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/common/ui/g;

    invoke-virtual {v7}, Lcom/android/common/ui/g;->c()I

    move-result v7

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v5

    :goto_2
    move v8, v5

    .line 424
    :goto_3
    iget-object v9, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 425
    iget-object v9, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/common/ui/g;

    invoke-virtual {v9}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v9

    .line 426
    invoke-virtual {v9, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 429
    iget-object v10, v0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/common/ui/g;

    invoke-virtual {v10}, Lcom/android/common/ui/g;->c()I

    move-result v10

    if-ne v10, v7, :cond_6

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/android/common/ui/a;->k()Z

    move-result v10

    const/4 v11, 0x0

    const-string v12, "translationX"

    const/4 v13, 0x1

    if-eqz v10, :cond_4

    .line 431
    aget v10, v3, v5

    aget v14, p1, v5

    if-lt v10, v14, :cond_3

    new-array v10, v2, [F

    aput v11, v10, v5

    int-to-float v14, v4

    aput v14, v10, v13

    .line 432
    invoke-static {v9, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v15, v2, [F

    aput v14, v15, v5

    aput v11, v15, v13

    .line 433
    invoke-static {v9, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_4

    :cond_3
    new-array v10, v2, [F

    aput v11, v10, v5

    int-to-float v14, v6

    aput v14, v10, v13

    .line 435
    invoke-static {v9, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v15, v2, [F

    aput v14, v15, v5

    aput v11, v15, v13

    .line 436
    invoke-static {v9, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_4

    .line 439
    :cond_4
    aget v10, v3, v5

    aget v14, p1, v5

    if-gt v10, v14, :cond_5

    new-array v10, v2, [F

    aput v11, v10, v5

    int-to-float v14, v4

    aput v14, v10, v13

    .line 440
    invoke-static {v9, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v15, v2, [F

    aput v14, v15, v5

    aput v11, v15, v13

    .line 441
    invoke-static {v9, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_4

    :cond_5
    new-array v10, v2, [F

    aput v11, v10, v5

    int-to-float v14, v6

    aput v14, v10, v13

    .line 443
    invoke-static {v9, v12, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-array v15, v2, [F

    aput v14, v15, v5

    aput v11, v15, v13

    .line 444
    invoke-static {v9, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :goto_4
    const-wide/16 v11, 0xc8

    .line 447
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 448
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_5

    .line 450
    :cond_6
    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    fill-array-data v11, :array_0

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 451
    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    fill-array-data v12, :array_1

    invoke-static {v9, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v11, 0x64

    .line 452
    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    :goto_5
    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 456
    invoke-virtual {v9, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v11, p2

    .line 457
    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p3

    .line 458
    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_7
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

.method private a([Landroid/widget/TextView;[IILjava/util/Collection;Ljava/util/Collection;Landroid/view/animation/PathInterpolator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/widget/TextView;",
            "[II",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/animation/PathInterpolator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 393
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 394
    aget-object v2, p1, v1

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    aget v6, p2, v1

    sub-int/2addr v6, p3

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v4, v7

    const-string v6, "translationX"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 395
    aget-object v4, p1, v1

    new-array v3, v3, [F

    aget v8, p2, v1

    sub-int/2addr v8, p3

    int-to-float v8, v8

    aput v8, v3, v0

    aput v5, v3, v7

    invoke-static {v4, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 396
    invoke-virtual {v2, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    invoke-virtual {v3, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    .line 398
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 399
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
    invoke-interface {p4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {p5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animationDis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v1

    sub-int/2addr v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/common/ui/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/a;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/common/ui/a;->q:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 42
    sput-boolean p0, Lcom/android/common/ui/a;->p:Z

    return p0
.end method

.method static synthetic a(Lcom/android/common/ui/a;)[Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/android/common/ui/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/common/ui/a;->d:I

    return p0
.end method

.method private b(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V
    .locals 0

    .line 494
    iget-object p2, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 499
    iget-object p2, p0, Lcom/android/common/ui/a;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 500
    iget-object p2, p0, Lcom/android/common/ui/a;->x:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic b(Lcom/android/common/ui/a;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/common/ui/a;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/common/ui/a;->f:Lcom/android/common/ui/a$a;

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {v0, p1}, Lcom/android/common/ui/a$a;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/common/ui/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/common/ui/a;->i:I

    return p0
.end method

.method private c()V
    .locals 1

    .line 155
    sget-boolean v0, Lcom/android/common/ui/a;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/common/ui/a;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 156
    sput-boolean v0, Lcom/android/common/ui/a;->p:Z

    .line 157
    invoke-direct {p0}, Lcom/android/common/ui/a;->j()V

    .line 158
    iget-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/common/ui/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/common/ui/a;->j:I

    return p0
.end method

.method static synthetic e(Lcom/android/common/ui/a;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/common/ui/a;->c()V

    return-void
.end method

.method public static e()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/android/common/ui/a;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic g()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/common/ui/a;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/android/common/ui/a;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/android/common/ui/a;->q:Z

    return p0
.end method

.method static synthetic h(Lcom/android/common/ui/a;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->v:Landroid/view/View;

    return-object p0
.end method

.method private h()V
    .locals 13

    .line 504
    iget-boolean v0, p0, Lcom/android/common/ui/a;->o:Z

    if-eqz v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 509
    array-length v1, v0

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 513
    invoke-virtual {p0, v2}, Lcom/android/common/ui/a;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 514
    aget v2, v2, v3

    .line 517
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/common/ui/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    .line 518
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 519
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v4, v5, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    .line 520
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 521
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 522
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 523
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 524
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 525
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v6, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 527
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 528
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 533
    iget-object v12, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    aget-object v5, v0, v3

    iget-object v7, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/android/common/ui/a;->k:I

    if-nez v3, :cond_2

    mul-int/2addr v4, v1

    :cond_2
    move v9, v4

    iget v10, p0, Lcom/android/common/ui/a;->k:I

    iget v11, p0, Lcom/android/common/ui/a;->l:I

    move-object v4, p0

    move v6, v3

    move v8, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/common/ui/a;->a(Ljava/lang/CharSequence;ILandroid/widget/FrameLayout;IIII)Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    iget v1, p0, Lcom/android/common/ui/a;->d:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/common/ui/a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    iget-object v0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/a;->b(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcom/android/common/ui/a;->o:Z

    return-void
.end method

.method static synthetic i(Lcom/android/common/ui/a;)Lcom/android/common/ui/k$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->e:Lcom/android/common/ui/k$a;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/a;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/a;->x:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lcom/android/common/ui/a;->m:Landroid/widget/FrameLayout;

    .line 558
    iput-object v0, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/android/common/ui/a;->o:Z

    return-void
.end method

.method static synthetic j(Lcom/android/common/ui/a;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private j()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method

.method static synthetic k(Lcom/android/common/ui/a;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private k()Z
    .locals 2

    .line 661
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic l(Lcom/android/common/ui/a;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/common/ui/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 592
    iget-boolean p1, p0, Lcom/android/common/ui/a;->q:Z

    if-eqz p1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/common/ui/a;->c()V

    goto :goto_0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/android/common/ui/a;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const-string v1, "NubiaPopupSwitcherButton"

    if-ne p1, v0, :cond_1

    .line 596
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot expand, visibility = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/common/ui/a;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/a;->g:Lcom/android/common/ui/b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/common/ui/b;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "The click has been interrupted, no action for this click"

    .line 601
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 605
    :cond_2
    iget-boolean p1, p0, Lcom/android/common/ui/a;->o:Z

    if-nez p1, :cond_3

    .line 606
    invoke-direct {p0}, Lcom/android/common/ui/a;->h()V

    goto :goto_0

    .line 608
    :cond_3
    invoke-direct {p0}, Lcom/android/common/ui/a;->a()V

    :goto_0
    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-super {p0, v0}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    .line 87
    invoke-super {p0, v0}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    .line 88
    iput-object p1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_0

    .line 90
    iget-boolean p1, p0, Lcom/android/common/ui/a;->y:Z

    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->setClickable(Z)V

    .line 91
    iget-boolean p1, p0, Lcom/android/common/ui/a;->z:Z

    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->n()I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/a;->d:I

    .line 93
    iget-object p1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object p1

    iget v0, p0, Lcom/android/common/ui/a;->d:I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;I",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/android/common/ui/a;->j()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    .line 106
    iput-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    .line 107
    invoke-direct {p0}, Lcom/android/common/ui/a;->i()V

    .line 109
    iput-object p1, p0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    .line 110
    iput p2, p0, Lcom/android/common/ui/a;->t:I

    const/4 p1, 0x0

    .line 111
    sput-boolean p1, Lcom/android/common/ui/a;->p:Z

    .line 112
    iput-boolean p1, p0, Lcom/android/common/ui/a;->q:Z

    .line 113
    iput-object p3, p0, Lcom/android/common/ui/a;->u:Landroid/view/View;

    .line 114
    iput-object p4, p0, Lcom/android/common/ui/a;->v:Landroid/view/View;

    .line 115
    invoke-virtual {p0, p0}, Lcom/android/common/ui/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/android/common/ui/a;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/common/ui/a;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/common/ui/a;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/a;->setSelectedIconIndex(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/android/common/ui/a;->y:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/common/ui/a;->z:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->a(Landroid/view/View;)V

    return-void

    .line 582
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/common/ui/a;->h:Lcom/android/common/ui/a$b;

    if-eqz p1, :cond_3

    .line 583
    invoke-interface {p1}, Lcom/android/common/ui/a$b;->a()V

    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "NubiaPopupSwitcherButton"

    const-string v1, "onDetachedFromWindow"

    .line 636
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0}, Lcom/android/common/ui/a;->j()V

    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lcom/android/common/ui/a;->s:Landroid/animation/AnimatorSet;

    .line 639
    iput-object v0, p0, Lcom/android/common/ui/a;->r:Landroid/animation/AnimatorSet;

    .line 640
    iget-object v1, p0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 642
    iput-object v0, p0, Lcom/android/common/ui/a;->c:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x0

    .line 646
    iput-boolean v0, p0, Lcom/android/common/ui/a;->q:Z

    .line 647
    invoke-direct {p0, v0}, Lcom/android/common/ui/a;->b(Z)V

    .line 648
    invoke-super {p0}, Lcom/android/common/ui/RotateImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 616
    iput-boolean p1, p0, Lcom/android/common/ui/a;->y:Z

    if-eqz p1, :cond_0

    .line 617
    iget-object p1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 618
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 625
    iput-boolean p1, p0, Lcom/android/common/ui/a;->z:Z

    if-eqz p1, :cond_1

    .line 626
    iget-object p1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 630
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x3ecccccd    # 0.4f

    .line 627
    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->setAlpha(F)V

    const/4 p1, 0x0

    .line 628
    invoke-virtual {p0, p1}, Lcom/android/common/ui/a;->setSoundEffectsEnabled(Z)V

    :goto_1
    return-void
.end method

.method public setOnClickInterruptedListener(Lcom/android/common/ui/b;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/common/ui/a;->g:Lcom/android/common/ui/b;

    return-void
.end method

.method public setPopupStateChangedListener(Lcom/android/common/ui/a$a;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/common/ui/a;->f:Lcom/android/common/ui/a$a;

    return-void
.end method

.method protected setSelectedIconIndex(I)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_1

    .line 677
    iget v0, p0, Lcom/android/common/ui/a;->d:I

    .line 678
    iget-object v1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 679
    iget-object v1, p0, Lcom/android/common/ui/a;->a:Lcom/android/preference/IconListPreference;

    invoke-virtual {v1}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 680
    iget-object v1, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 681
    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/common/ui/a;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    iget-object v0, p0, Lcom/android/common/ui/a;->n:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/common/ui/a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    :cond_0
    iput p1, p0, Lcom/android/common/ui/a;->d:I

    .line 685
    iget-object p1, p0, Lcom/android/common/ui/a;->e:Lcom/android/common/ui/k$a;

    if-eqz p1, :cond_1

    .line 686
    invoke-interface {p1}, Lcom/android/common/ui/k$a;->a()V

    :cond_1
    return-void
.end method

.method public setSwitcherListener(Lcom/android/common/ui/k$a;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/common/ui/a;->e:Lcom/android/common/ui/k$a;

    return-void
.end method

.method public setUnClickableListener(Lcom/android/common/ui/a$b;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/common/ui/a;->h:Lcom/android/common/ui/a$b;

    return-void
.end method
