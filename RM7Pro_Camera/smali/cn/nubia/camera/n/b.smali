.class public Lcn/nubia/camera/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/n/b$d;,
        Lcn/nubia/camera/n/b$b;,
        Lcn/nubia/camera/n/b$a;,
        Lcn/nubia/camera/n/b$c;,
        Lcn/nubia/camera/n/b$e;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/f/a;

.field a:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/content/Context;

.field private d:Lcn/nubia/camera/ad/a;

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:I

.field private i:Lcom/android/common/ui/RotateImageView;

.field private j:Lcn/nubia/camera/n/g;

.field private k:Lcn/nubia/camera/n/f;

.field private l:Lcn/nubia/camera/n/b$d;

.field private m:Z

.field private n:Lcom/android/preference/ListPreference;

.field private o:Lcn/nubia/camera/n/b$e;

.field private p:Lcn/nubia/camera/n/b$c;

.field private q:Lcn/nubia/camera/n/b$a;

.field private r:Lcom/android/common/ui/ZtemtFunEffectSlider;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Lcn/nubia/camera/af/a;

.field private z:Lcn/nubia/camera/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 110
    invoke-direct/range {v0 .. v7}, Lcn/nubia/camera/n/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcom/android/preference/ListPreference;Landroid/view/View;ILandroid/view/View;Z)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    .line 58
    new-instance v1, Lcn/nubia/camera/n/b$d;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/n/b$d;-><init>(Lcn/nubia/camera/n/b;Lcn/nubia/camera/n/b$1;)V

    iput-object v1, p0, Lcn/nubia/camera/n/b;->l:Lcn/nubia/camera/n/b$d;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcn/nubia/camera/n/b;->m:Z

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/n/b;->o:Lcn/nubia/camera/n/b$e;

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/n/b;->p:Lcn/nubia/camera/n/b$c;

    .line 65
    iput-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    .line 66
    iput-boolean v1, p0, Lcn/nubia/camera/n/b;->s:Z

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcn/nubia/camera/n/b;->t:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcn/nubia/camera/n/b;->u:I

    .line 71
    iput v1, p0, Lcn/nubia/camera/n/b;->v:I

    .line 72
    iput v1, p0, Lcn/nubia/camera/n/b;->w:I

    .line 74
    iput-boolean v1, p0, Lcn/nubia/camera/n/b;->x:Z

    .line 205
    new-instance v0, Lcn/nubia/camera/n/b$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/n/b$3;-><init>(Lcn/nubia/camera/n/b;)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    .line 377
    new-instance v0, Lcn/nubia/camera/n/b$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/n/b$4;-><init>(Lcn/nubia/camera/n/b;)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->z:Lcn/nubia/camera/f/a;

    .line 404
    new-instance v0, Lcn/nubia/camera/n/b$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/n/b$5;-><init>(Lcn/nubia/camera/n/b;)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->A:Lcn/nubia/camera/f/a;

    .line 617
    new-instance v0, Lcn/nubia/camera/n/b$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/n/b$7;-><init>(Lcn/nubia/camera/n/b;)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->b:Landroid/view/View$OnClickListener;

    if-nez p3, :cond_0

    .line 117
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p6, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    .line 122
    iput-object p1, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    .line 124
    iput-object p3, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    .line 125
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/n/b;->y:Lcn/nubia/camera/af/a;

    .line 126
    iput-boolean p7, p0, Lcn/nubia/camera/n/b;->m:Z

    .line 127
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/n/b;->e:I

    .line 128
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/n/b;->f:I

    .line 129
    iget-object p1, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07010d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/n/b;->v:I

    .line 130
    iget-object p1, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070119

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/n/b;->u:I

    .line 131
    iget p2, p0, Lcn/nubia/camera/n/b;->v:I

    add-int/2addr p1, p2

    iput p1, p0, Lcn/nubia/camera/n/b;->w:I

    .line 132
    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object p1

    .line 133
    new-instance p2, Landroid/graphics/Rect;

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p7, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    const/16 v2, 0x34

    invoke-static {p7, v2}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p7

    sub-int/2addr p3, p7

    iget p7, p0, Lcn/nubia/camera/n/b;->e:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v1, p3, p7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "rect3_4 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mEffectThumbnailsRect = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EffectPageManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->g()D

    move-result-wide v0

    div-double/2addr p2, v0

    double-to-float p2, p2

    invoke-direct {p0, p4, p1, p5, p2}, Lcn/nubia/camera/n/b;->a(Landroid/view/View;Lcom/android/preference/ListPreference;IF)V

    .line 136
    invoke-direct {p0, p4, p6}, Lcn/nubia/camera/n/b;->a(Landroid/view/View;Landroid/view/View;)V

    .line 137
    invoke-direct {p0, p4}, Lcn/nubia/camera/n/b;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcn/nubia/camera/n/b;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090041

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/n/b;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 150
    check-cast p2, Lcom/android/common/ui/RotateImageView;

    iput-object p2, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    .line 151
    invoke-static {p2}, Lcn/nubia/camera/n/a;->a(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    new-instance p2, Lcn/nubia/camera/n/b$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/n/b$1;-><init>(Lcn/nubia/camera/n/b;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->h()V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/android/preference/ListPreference;IF)V
    .locals 6

    .line 176
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/ZtemtFunEffectSlider;

    iput-object p1, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    const/4 p3, 0x4

    .line 178
    invoke-virtual {p1, p3}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    iget-boolean p3, p0, Lcn/nubia/camera/n/b;->m:Z

    invoke-virtual {p1, p3}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setIsShowCustomEffect(Z)V

    .line 180
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    iget-object v2, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    iget v3, p0, Lcn/nubia/camera/n/b;->v:I

    iget v4, p0, Lcn/nubia/camera/n/b;->w:I

    move-object v1, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Lcom/android/preference/ListPreference;Landroid/content/Context;IIF)V

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    iget-object p2, p0, Lcn/nubia/camera/n/b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setListener(Lcom/android/common/ui/ZtemtFunEffectSlider$a;)V

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    new-instance p2, Lcn/nubia/camera/n/b$2;

    invoke-direct {p2, p0}, Lcn/nubia/camera/n/b$2;-><init>(Lcn/nubia/camera/n/b;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setPreviewRatioChangeListener(Lcom/android/common/ui/ZtemtFunEffectSlider$c;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/n/b;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/n/g;->a(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Lcn/nubia/camera/n/f;->a(Ljava/lang/String;)V

    .line 435
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->j()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/n/b;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->l()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/n/b;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/n/b;->s:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/n/b;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/n/b;->x:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->p:Lcn/nubia/camera/n/b$c;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/f/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->A:Lcn/nubia/camera/f/a;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/f;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/f/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->z:Lcn/nubia/camera/f/a;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcn/nubia/camera/n/b;->e:I

    iget-object v2, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    iget-object v1, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 284
    iget-object v1, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 285
    iget-object v1, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/n/b;)Lcom/android/common/c/e;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->j()Lcom/android/common/c/e;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/n/b;->t:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "none"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/n/b;->t:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    .line 320
    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/n/b;->t:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800f5

    .line 324
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/common/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0800f3

    .line 331
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/common/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 332
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 338
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/n/b;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/n/b;)Lcom/android/common/ui/ZtemtFunEffectSlider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    return-object p0
.end method

.method private i()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Lcom/android/common/c/e;
    .locals 1

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcn/nubia/camera/n/b;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcn/nubia/camera/n/b;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    return-object p0
.end method

.method private k()V
    .locals 10

    .line 443
    new-instance v0, Lcn/nubia/camera/n/g;

    iget-object v1, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/n/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    .line 444
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c$a;)V

    .line 445
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->j()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 447
    new-instance v0, Lcn/nubia/camera/n/f;

    iget-object v3, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    iget v5, p0, Lcn/nubia/camera/n/b;->e:I

    iget v6, p0, Lcn/nubia/camera/n/b;->f:I

    iget-object v7, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget-object v8, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    iget-boolean v9, p0, Lcn/nubia/camera/n/b;->m:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcn/nubia/camera/n/f;-><init>(Landroid/content/Context;Lcom/android/preference/ListPreference;IILandroid/graphics/Rect;Lcn/nubia/camera/n/g;Z)V

    iput-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    .line 450
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c$a;)V

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    new-instance v1, Lcn/nubia/camera/n/b$6;

    invoke-direct {v1, p0}, Lcn/nubia/camera/n/b$6;-><init>(Lcn/nubia/camera/n/b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/f;->a(Lcn/nubia/camera/n/f$a;)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->q:Lcn/nubia/camera/n/b$a;

    return-object p0
.end method

.method private l()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic m(Lcn/nubia/camera/n/b;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->h()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/n/b;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/camera/n/b;->x:Z

    return p0
.end method

.method static synthetic o(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/af/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->y:Lcn/nubia/camera/af/a;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$d;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->l:Lcn/nubia/camera/n/b$d;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b$e;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/n/b;->o:Lcn/nubia/camera/n/b$e;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/n/b;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/camera/n/b;->s:Z

    return p0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 342
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setPreviewRatio(F)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 500
    iput p1, p0, Lcn/nubia/camera/n/b;->h:I

    .line 501
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v0

    sub-int/2addr v0, p1

    .line 502
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    .line 503
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->g()V

    .line 504
    iget-object p1, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/n/b;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/n/f;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 304
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 310
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 311
    iget-object p2, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/n/g;->a(I)V

    .line 312
    iget-object p2, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    if-eqz p2, :cond_2

    .line 313
    invoke-virtual {p2, p1}, Lcn/nubia/camera/n/f;->a(I)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/n/b$a;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/camera/n/b;->q:Lcn/nubia/camera/n/b$a;

    return-void
.end method

.method public a(Lcn/nubia/camera/n/b$c;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/camera/n/b;->p:Lcn/nubia/camera/n/b$c;

    return-void
.end method

.method public a(Lcn/nubia/camera/n/b$e;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/n/b;->o:Lcn/nubia/camera/n/b$e;

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectSwitchClickable: clickable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectPageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcn/nubia/camera/n/b;->x:Z

    return v0
.end method

.method public b()V
    .locals 3

    .line 510
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    .line 515
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0}, Lcn/nubia/camera/n/g;->d()V

    .line 516
    iput-object v1, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    .line 518
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    .line 520
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    invoke-virtual {v0}, Lcn/nubia/camera/n/f;->d()V

    .line 521
    iput-object v1, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    .line 523
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->g()V

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/n/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/n/c;->a(Landroid/content/res/Resources;)V

    .line 525
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->k()V

    .line 526
    iget-object v0, p0, Lcn/nubia/camera/n/b;->i:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->b(I)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 576
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFunEffectsVisibility visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsPageShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/n/b;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectPageManager"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 581
    iget-boolean p1, p0, Lcn/nubia/camera/n/b;->x:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 582
    iput-boolean p1, p0, Lcn/nubia/camera/n/b;->x:Z

    .line 583
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Z)V

    goto :goto_0

    .line 586
    :cond_1
    iget-boolean p1, p0, Lcn/nubia/camera/n/b;->x:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 587
    iput-boolean p1, p0, Lcn/nubia/camera/n/b;->x:Z

    .line 588
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Z)V

    .line 591
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/n/b;->x:Z

    iget-object v1, p0, Lcn/nubia/camera/n/b;->y:Lcn/nubia/camera/af/a;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->b(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 530
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    .line 536
    iget-object v0, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    invoke-virtual {v0}, Lcn/nubia/camera/n/g;->d()V

    .line 537
    iput-object v1, p0, Lcn/nubia/camera/n/b;->j:Lcn/nubia/camera/n/g;

    .line 539
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcn/nubia/camera/n/b;->d:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    .line 541
    iget-object v0, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    invoke-virtual {v0}, Lcn/nubia/camera/n/f;->d()V

    .line 542
    iput-object v1, p0, Lcn/nubia/camera/n/b;->k:Lcn/nubia/camera/n/f;

    .line 545
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/n/b;->l:Lcn/nubia/camera/n/b$d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b$d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Lcn/nubia/camera/n/b;->x:Z

    .line 547
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/n/b;->x:Z

    iget-object v2, p0, Lcn/nubia/camera/n/b;->y:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setFunEffectSliderEnabled(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 598
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/n/b;->h()V

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/n/b;->n:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/n/b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 614
    iget v0, p0, Lcn/nubia/camera/n/b;->h:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 633
    iget-object v0, p0, Lcn/nubia/camera/n/b;->r:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getPosition()I

    move-result v0

    return v0
.end method
