.class public Lcn/nubia/camera/videomaker/f;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/videomaker/j$a;


# instance fields
.field a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field private b:Lcom/android/common/ui/RotateLayout;

.field private c:Lcom/android/common/ui/RotateLayout;

.field private i:Lcom/android/common/ui/RotateLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/android/common/ui/RotateImageView;

.field private n:Lcom/android/common/ui/RotateImageView;

.field private o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private p:Lcom/android/common/ui/RotateImageView;

.field private q:I

.field private r:Lcn/nubia/camera/videomaker/j;

.field private s:Landroid/media/AudioManager;

.field private t:Lcn/nubia/camera/videomaker/n;

.field private u:Z

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Lcn/nubia/camera/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    .line 57
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 58
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->p:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcn/nubia/camera/videomaker/f;->q:I

    .line 61
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->r:Lcn/nubia/camera/videomaker/j;

    .line 62
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->s:Landroid/media/AudioManager;

    .line 65
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    .line 66
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->v:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    .line 69
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->x:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    .line 488
    new-instance v0, Lcn/nubia/camera/videomaker/f$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/f$3;-><init>(Lcn/nubia/camera/videomaker/f;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->z:Lcn/nubia/camera/a/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->p:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcn/nubia/camera/videomaker/f;->q:I

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->r:Lcn/nubia/camera/videomaker/j;

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->s:Landroid/media/AudioManager;

    .line 65
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->v:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->x:Landroid/widget/LinearLayout;

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    .line 488
    new-instance p1, Lcn/nubia/camera/videomaker/f$3;

    invoke-direct {p1, p0}, Lcn/nubia/camera/videomaker/f$3;-><init>(Lcn/nubia/camera/videomaker/f;)V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->z:Lcn/nubia/camera/a/d;

    return-void
.end method

.method private J()V
    .locals 2

    .line 200
    iget v0, p0, Lcn/nubia/camera/videomaker/f;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/videomaker/f;->q:I

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private K()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->b()V

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->c()V

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private M()Z
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->i()Z

    move-result v0

    return v0
.end method

.method private N()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcn/nubia/camera/videomaker/j;
    .locals 3

    .line 466
    new-instance v0, Lcn/nubia/camera/videomaker/j;

    .line 467
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcn/nubia/camera/videomaker/j;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/videomaker/j$a;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const-wide/16 v1, 0x64

    .line 468
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/videomaker/j;->a(J)V

    const/16 p1, 0x64

    .line 469
    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/j;->a(I)V

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/k;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/f;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/f;->f(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/f;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->M()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/f;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->L()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/videomaker/f;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->K()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090374

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->b:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    const v0, 0x7f090371

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    const v0, 0x7f090373

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->i:Lcom/android/common/ui/RotateLayout;

    const v0, 0x7f0903ad

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f090372

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->k:Landroid/widget/ProgressBar;

    const v0, 0x7f090370

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    const v0, 0x7f090100

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f090079

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    const v0, 0x7f0901ec

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const v0, 0x7f0901ed

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->p:Lcom/android/common/ui/RotateImageView;

    .line 217
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/videomaker/f$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/f$1;-><init>(Lcn/nubia/camera/videomaker/f;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/videomaker/f$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/f$2;-><init>(Lcn/nubia/camera/videomaker/f;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance p1, Lcn/nubia/camera/videomaker/m;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    .line 236
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/videomaker/f;->t:Lcn/nubia/camera/videomaker/n;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/videomaker/m;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/videomaker/f;)V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->a:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 239
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 242
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setLongClickable(Z)V

    .line 243
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setClickable(Z)V

    .line 248
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/videomaker/f;->a(Landroid/view/View;)V

    return-void
.end method

.method public static e()Lcn/nubia/camera/videomaker/f;
    .locals 2

    .line 288
    new-instance v0, Lcn/nubia/camera/videomaker/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/videomaker/f;-><init>(I)V

    return-object v0
.end method

.method private f(Z)V
    .locals 4

    .line 496
    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 498
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 499
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 500
    iget-object v2, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 503
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_3

    .line 504
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p1

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v1

    sub-int v1, p1, v1

    :cond_3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 505
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private r()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->b:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->i:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->k:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 141
    iput v1, p0, Lcn/nubia/camera/videomaker/f;->q:I

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    const-string v0, "ui_change_videomaker"

    .line 149
    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/f;->c(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->l()I

    move-result v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[release] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMakerFragment"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->k()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->d()V

    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->b()V

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->b()V

    return-void
.end method


# virtual methods
.method protected a(IZ)V
    .locals 1

    .line 511
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    :cond_1
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    const-string p1, "VideoMakerFragment"

    const-string p2, "onPreviewAreaUpdate"

    .line 475
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->v:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0701e5

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    if-le p3, p2, :cond_0

    .line 481
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 482
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/n;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/camera/videomaker/f;->t:Lcn/nubia/camera/videomaker/n;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x18

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->s:Landroid/media/AudioManager;

    const/4 p2, -0x1

    invoke-virtual {p1, v1, p2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->s:Landroid/media/AudioManager;

    invoke-virtual {p1, v1, v2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2

    .line 409
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->i:Lcom/android/common/ui/RotateLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->i:Lcom/android/common/ui/RotateLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->b:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->b:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->c:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 355
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c()Lcn/nubia/camera/videomaker/j;
    .locals 1

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->r:Lcn/nubia/camera/videomaker/j;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 430
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->c(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 432
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(Z)Z
    .locals 1

    .line 421
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->a(Z)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->e()V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    .line 278
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->N()V

    :cond_1
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 438
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->d(Ljava/lang/String;)V

    .line 439
    iget-object p1, p0, Lcn/nubia/camera/videomaker/f;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    return-void
.end method

.method public i()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->b:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "ui_change_videomaker"

    .line 295
    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/f;->d(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, v0}, Lcn/nubia/camera/videomaker/f;->f(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->n:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->m:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->J()V

    return-void
.end method

.method public k()Z
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->d()V

    return v1

    .line 382
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->e()V

    .line 384
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->b()V

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    return v1

    .line 388
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    .line 310
    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->x:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/k;->e()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090365

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/f;->w:Landroid/widget/RelativeLayout;

    .line 312
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/k;->e()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090367

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/f;->x:Landroid/widget/LinearLayout;

    .line 313
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/j;->f()Lcn/nubia/camera/videomaker/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/k;->e()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090141

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/f;->y:Landroid/widget/RelativeLayout;

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_keys_navigationbar"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v0, v3

    .line 316
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/f;->f(Z)V

    return-void
.end method

.method public m()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->r()V

    return-void
.end method

.method public n()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->r()V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/videomaker/f;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->performLongClick()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 360
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 365
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/f;->a(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 85
    iget-boolean p3, p0, Lcn/nubia/camera/videomaker/f;->d:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p3, 0x7f0c00de

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p2, "VideoMakerFragment"

    const-string p3, "view == null"

    .line 90
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/f;->d(Landroid/view/View;)V

    const p2, 0x7f0900ac

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/f;->v:Landroid/widget/RelativeLayout;

    .line 94
    invoke-virtual {p0, p2}, Lcn/nubia/camera/videomaker/f;->b(Landroid/view/View;)V

    .line 95
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcn/nubia/camera/videomaker/f;->a(Landroid/view/ViewGroup;)Lcn/nubia/camera/videomaker/j;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/videomaker/f;->r:Lcn/nubia/camera/videomaker/j;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->d:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->d()V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->s()V

    .line 161
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 114
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 115
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/f;->s:Landroid/media/AudioManager;

    .line 119
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->c()Lcn/nubia/camera/videomaker/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/f;->r()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onStart()V

    .line 107
    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/camera/a/a;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->z:Lcn/nubia/camera/a/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/d;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onStop()V

    .line 129
    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/camera/a/a;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/f;->z:Lcn/nubia/camera/a/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/d;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 454
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    return-void
.end method

.method public q()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/f;->u:Z

    return v0
.end method
