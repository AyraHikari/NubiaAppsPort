.class public Lcn/nubia/a/b;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/a/b$a;,
        Lcn/nubia/a/b$b;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Lcn/nubia/a/b$a;

.field public a:I

.field private b:[Lcom/android/common/ui/d;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Lcom/android/common/ui/RotateImageView;

.field private f:Lcom/android/common/ui/RotateImageView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/nubia/a/f;

.field private i:Z

.field private j:[Landroid/view/View;

.field private k:Lcn/nubia/a/d;

.field private l:Lcn/nubia/a/d;

.field private m:Landroid/animation/AnimatorSet;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Landroid/animation/AnimatorSet;

.field private p:Landroid/animation/AnimatorSet;

.field private q:Landroid/animation/AnimatorSet;

.field private r:Lcn/nubia/a/g;

.field private s:Lcn/nubia/a/e;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/os/Handler;

.field private z:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 112
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    .line 53
    iput-object v0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    .line 54
    iput-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    .line 55
    iput-object v0, p0, Lcn/nubia/a/b;->f:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object v0, p0, Lcn/nubia/a/b;->g:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcn/nubia/a/b;->i:Z

    .line 59
    iput-object v0, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    .line 60
    iput-object v0, p0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    .line 61
    iput-object v0, p0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    .line 63
    iput-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    .line 64
    iput-object v0, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    .line 65
    iput-object v0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    .line 66
    iput-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    .line 67
    iput-object v0, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Lcn/nubia/a/b;->t:Z

    .line 73
    iput-boolean v1, p0, Lcn/nubia/a/b;->u:Z

    .line 74
    iput v1, p0, Lcn/nubia/a/b;->v:I

    .line 75
    iput v1, p0, Lcn/nubia/a/b;->w:I

    .line 76
    iput v1, p0, Lcn/nubia/a/b;->x:I

    .line 78
    new-instance v3, Lcn/nubia/a/b$1;

    invoke-direct {v3, p0}, Lcn/nubia/a/b$1;-><init>(Lcn/nubia/a/b;)V

    iput-object v3, p0, Lcn/nubia/a/b;->y:Landroid/os/Handler;

    .line 94
    new-instance v3, Lcn/nubia/a/b$4;

    invoke-direct {v3, p0}, Lcn/nubia/a/b$4;-><init>(Lcn/nubia/a/b;)V

    iput-object v3, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    .line 887
    iput-boolean v1, p0, Lcn/nubia/a/b;->E:Z

    const/4 v1, -0x1

    .line 892
    iput v1, p0, Lcn/nubia/a/b;->a:I

    .line 910
    new-instance v1, Lcn/nubia/a/b$a;

    invoke-direct {v1, p0, v0}, Lcn/nubia/a/b$a;-><init>(Lcn/nubia/a/b;Lcn/nubia/a/b$1;)V

    iput-object v1, p0, Lcn/nubia/a/b;->F:Lcn/nubia/a/b$a;

    .line 113
    iput-boolean v2, p0, Lcn/nubia/a/b;->t:Z

    return-void
.end method

.method public constructor <init>(ILjava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;II)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    .line 53
    iput-object p1, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    .line 54
    iput-object p1, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    .line 55
    iput-object p1, p0, Lcn/nubia/a/b;->f:Lcom/android/common/ui/RotateImageView;

    .line 56
    iput-object p1, p0, Lcn/nubia/a/b;->g:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcn/nubia/a/b;->i:Z

    .line 59
    iput-object p1, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    .line 60
    iput-object p1, p0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    .line 61
    iput-object p1, p0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    .line 63
    iput-object p1, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    .line 64
    iput-object p1, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    .line 65
    iput-object p1, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    .line 66
    iput-object p1, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    .line 67
    iput-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcn/nubia/a/b;->t:Z

    .line 73
    iput-boolean v0, p0, Lcn/nubia/a/b;->u:Z

    .line 74
    iput v0, p0, Lcn/nubia/a/b;->v:I

    .line 75
    iput v0, p0, Lcn/nubia/a/b;->w:I

    .line 76
    iput v0, p0, Lcn/nubia/a/b;->x:I

    .line 78
    new-instance v1, Lcn/nubia/a/b$1;

    invoke-direct {v1, p0}, Lcn/nubia/a/b$1;-><init>(Lcn/nubia/a/b;)V

    iput-object v1, p0, Lcn/nubia/a/b;->y:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcn/nubia/a/b$4;

    invoke-direct {v1, p0}, Lcn/nubia/a/b$4;-><init>(Lcn/nubia/a/b;)V

    iput-object v1, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    .line 887
    iput-boolean v0, p0, Lcn/nubia/a/b;->E:Z

    const/4 v1, -0x1

    .line 892
    iput v1, p0, Lcn/nubia/a/b;->a:I

    .line 910
    new-instance v1, Lcn/nubia/a/b$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/a/b$a;-><init>(Lcn/nubia/a/b;Lcn/nubia/a/b$1;)V

    iput-object v1, p0, Lcn/nubia/a/b;->F:Lcn/nubia/a/b$a;

    .line 105
    iput-object p2, p0, Lcn/nubia/a/b;->g:Ljava/util/List;

    .line 106
    iput-boolean v0, p0, Lcn/nubia/a/b;->t:Z

    .line 107
    iput p3, p0, Lcn/nubia/a/b;->w:I

    .line 108
    iput p4, p0, Lcn/nubia/a/b;->x:I

    return-void
.end method

.method public static a(Ljava/util/List;II)Lcn/nubia/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;II)",
            "Lcn/nubia/a/b;"
        }
    .end annotation

    .line 425
    new-instance v0, Lcn/nubia/a/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcn/nubia/a/b;-><init>(ILjava/util/List;II)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/a/b;Lcn/nubia/a/d;)Lcn/nubia/a/d;
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 204
    sget v0, Lcn/nubia/a/h$c;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    .line 205
    sget v0, Lcn/nubia/a/h$c;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    .line 206
    sget v0, Lcn/nubia/a/h$c;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    .line 207
    sget v0, Lcn/nubia/a/h$c;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/a/b;->f:Lcom/android/common/ui/RotateImageView;

    .line 208
    iget-object p1, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    new-instance v0, Lcn/nubia/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/a/b$b;-><init>(Lcn/nubia/a/b;Lcn/nubia/a/b$1;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    invoke-direct {p0}, Lcn/nubia/a/b;->f()V

    .line 210
    invoke-direct {p0}, Lcn/nubia/a/b;->e()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/common/ui/d;

    .line 211
    iget-object v0, p0, Lcn/nubia/a/b;->f:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcn/nubia/a/b;->b:[Lcom/android/common/ui/d;

    return-void
.end method

.method private a([Landroid/view/View;)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcn/nubia/a/f;

    invoke-virtual {p0}, Lcn/nubia/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/a/f;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    .line 387
    new-instance p1, Lcn/nubia/a/b$6;

    invoke-direct {p1, p0}, Lcn/nubia/a/b$6;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v0, p1}, Lcn/nubia/a/f;->setClickItemListener(Lcn/nubia/a/f$a;)V

    .line 418
    :cond_0
    iget-object p1, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcn/nubia/a/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object p1, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/animation/Animator;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 868
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcn/nubia/a/b;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcn/nubia/a/b;->u:Z

    return p0
.end method

.method static synthetic a(Lcn/nubia/a/b;[Landroid/view/View;)[Landroid/view/View;
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/a/b;Lcn/nubia/a/d;)Lcn/nubia/a/d;
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/a/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/a/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/a/b;->i()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 131
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 132
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 135
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/a/b;->v:I

    return-void
.end method

.method static synthetic d(Lcn/nubia/a/b;)[Landroid/view/View;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/a/b;->g()[Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/a/b;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->y:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 217
    iget v1, p0, Lcn/nubia/a/b;->w:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 218
    iget v1, p0, Lcn/nubia/a/b;->v:I

    iget v2, p0, Lcn/nubia/a/b;->w:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/a/b;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 219
    iget-object v1, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/a/b;)Lcn/nubia/a/e;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->s:Lcn/nubia/a/e;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    new-instance v1, Lcn/nubia/a/b$5;

    invoke-direct {v1, p0}, Lcn/nubia/a/b$5;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/a/b;)Lcn/nubia/a/d;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    return-object p0
.end method

.method private g()[Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/a/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 250
    iget-object v2, v0, Lcn/nubia/a/b;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/a/h$b;->a:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget-object v5, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v3, v0, Lcn/nubia/a/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v6

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/a/c;

    .line 258
    sget v8, Lcn/nubia/a/h$d;->b:I

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    aput-object v8, v2, v5

    .line 260
    aget-object v8, v2, v5

    sget v10, Lcn/nubia/a/h$c;->a:I

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/common/ui/RotateTextView;

    .line 261
    invoke-virtual {v7}, Lcn/nubia/a/c;->d()I

    move-result v10

    invoke-virtual {v0, v10}, Lcn/nubia/a/b;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 262
    invoke-virtual {v8, v10}, Lcom/android/common/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/a/b;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7}, Lcn/nubia/a/c;->c()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_0

    .line 268
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memberId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcn/nubia/a/c;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pageResId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcn/nubia/a/c;->b()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CameraFamilyFragment"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v12

    invoke-virtual {v10, v6, v6, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    new-instance v11, Lcn/nubia/a/d;

    invoke-direct {v11}, Lcn/nubia/a/d;-><init>()V

    .line 274
    invoke-virtual {v7}, Lcn/nubia/a/c;->a()I

    move-result v12

    iput v12, v11, Lcn/nubia/a/d;->a:I

    .line 275
    invoke-virtual {v7}, Lcn/nubia/a/c;->d()I

    move-result v12

    iput v12, v11, Lcn/nubia/a/d;->c:I

    .line 276
    iput-object v8, v11, Lcn/nubia/a/d;->b:Lcom/android/common/ui/RotateTextView;

    .line 277
    iput-object v7, v11, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    .line 278
    invoke-virtual {v7}, Lcn/nubia/a/c;->c()I

    move-result v12

    iput v12, v11, Lcn/nubia/a/d;->f:I

    .line 280
    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    const/4 v15, 0x1

    new-array v13, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v13, v6

    invoke-direct {v12, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget v13, v0, Lcn/nubia/a/b;->B:I

    if-nez v13, :cond_1

    .line 282
    iget-object v13, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcn/nubia/a/b;->B:I

    .line 284
    :cond_1
    iget v13, v0, Lcn/nubia/a/b;->C:I

    if-nez v13, :cond_2

    .line 285
    iget-object v13, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    iput v13, v0, Lcn/nubia/a/b;->C:I

    :cond_2
    const/4 v14, 0x0

    .line 287
    iget v10, v0, Lcn/nubia/a/b;->B:I

    iget v13, v0, Lcn/nubia/a/b;->C:I

    move/from16 v18, v13

    move-object v13, v12

    move/from16 v19, v15

    move v15, v10

    move/from16 v16, v18

    move/from16 v17, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 288
    iget-object v10, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    iget-object v13, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    invoke-virtual {v12, v6, v6, v10, v13}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 290
    iget v10, v11, Lcn/nubia/a/d;->a:I

    iget v13, v0, Lcn/nubia/a/b;->a:I

    if-ne v10, v13, :cond_3

    .line 291
    iget-object v10, v0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v10}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    .line 294
    :cond_3
    invoke-virtual {v8, v9, v12, v9, v9}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget v8, v0, Lcn/nubia/a/b;->a:I

    invoke-virtual {v7}, Lcn/nubia/a/c;->a()I

    move-result v7

    if-ne v8, v7, :cond_4

    move/from16 v15, v19

    goto :goto_1

    :cond_4
    move v15, v6

    :goto_1
    or-int/2addr v4, v15

    .line 298
    iget v7, v11, Lcn/nubia/a/d;->a:I

    iget v8, v0, Lcn/nubia/a/b;->a:I

    if-ne v7, v8, :cond_5

    .line 299
    iput-object v11, v0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    .line 300
    iput-object v11, v0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    .line 302
    :cond_5
    aget-object v7, v2, v5

    invoke-virtual {v7, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    if-nez v4, :cond_7

    .line 309
    iget-object v1, v0, Lcn/nubia/a/b;->g:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/a/c;

    invoke-virtual {v1}, Lcn/nubia/a/c;->a()I

    move-result v1

    iput v1, v0, Lcn/nubia/a/b;->a:I

    .line 310
    aget-object v1, v2, v6

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/a/d;

    .line 311
    iput-object v1, v0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    .line 312
    iput-object v1, v0, Lcn/nubia/a/b;->l:Lcn/nubia/a/d;

    :cond_7
    return-object v2
.end method

.method private h()V
    .locals 14

    .line 318
    iget-object v0, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 323
    :goto_0
    iget-object v2, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    array-length v3, v2

    if-ge v1, v3, :cond_a

    .line 324
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/a/d;

    .line 325
    iget-object v3, p0, Lcn/nubia/a/b;->s:Lcn/nubia/a/e;

    if-eqz v3, :cond_9

    .line 326
    iget-object v3, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/a/d;

    iget-object v4, p0, Lcn/nubia/a/b;->s:Lcn/nubia/a/e;

    iget-object v5, v2, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    .line 327
    invoke-virtual {v4, v5}, Lcn/nubia/a/e;->a(Lcn/nubia/a/c;)Z

    move-result v4

    iput-boolean v4, v3, Lcn/nubia/a/d;->d:Z

    .line 328
    iget-object v3, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/a/d;

    iget-boolean v3, v3, Lcn/nubia/a/d;->d:Z

    if-nez v3, :cond_1

    .line 329
    iget-object v3, v2, Lcn/nubia/a/d;->b:Lcom/android/common/ui/RotateTextView;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/android/common/ui/RotateTextView;->setAlpha(F)V

    goto :goto_1

    .line 331
    :cond_1
    iget-object v3, v2, Lcn/nubia/a/d;->b:Lcom/android/common/ui/RotateTextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/common/ui/RotateTextView;->setAlpha(F)V

    .line 334
    :goto_1
    iget-object v3, v2, Lcn/nubia/a/d;->b:Lcom/android/common/ui/RotateTextView;

    invoke-virtual {v3}, Lcom/android/common/ui/RotateTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 335
    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v4, v5, :cond_2

    aget-object v4, v3, v7

    if-eqz v4, :cond_2

    aget-object v4, v3, v7

    instance-of v4, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_2

    .line 336
    aget-object v3, v3, v7

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_2

    :cond_2
    move-object v3, v6

    :goto_2
    const-string v4, "CameraFamilyFragment"

    if-eqz v3, :cond_5

    .line 339
    iget v8, v2, Lcn/nubia/a/d;->a:I

    iget v9, p0, Lcn/nubia/a/b;->a:I

    if-ne v8, v9, :cond_3

    .line 340
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    if-eq v8, v5, :cond_4

    :cond_3
    iget v5, v2, Lcn/nubia/a/d;->a:I

    iget v8, p0, Lcn/nubia/a/b;->a:I

    if-eq v5, v8, :cond_5

    .line 341
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_4
    const-string v2, "return funtype same"

    .line 342
    invoke-static {v4, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    .line 347
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v5

    if-lt v5, v7, :cond_6

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 348
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 350
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/a/b;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, v2, Lcn/nubia/a/d;->f:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v2, "Warning! drawable is null"

    .line 352
    invoke-static {v4, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 355
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 358
    :goto_3
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v5, v0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    .line 359
    iget v12, p0, Lcn/nubia/a/b;->B:I

    iget v13, p0, Lcn/nubia/a/b;->C:I

    move-object v8, v4

    move v10, v12

    move v11, v13

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 360
    iget-object v3, p0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iget-object v5, p0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v4, v0, v0, v3, v5}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 362
    iget v3, v2, Lcn/nubia/a/d;->a:I

    iget v5, p0, Lcn/nubia/a/b;->a:I

    if-ne v3, v5, :cond_8

    .line 363
    iget-object v3, p0, Lcn/nubia/a/b;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->addLayer(Landroid/graphics/drawable/Drawable;)I

    .line 365
    :cond_8
    iget-object v2, v2, Lcn/nubia/a/d;->b:Lcom/android/common/ui/RotateTextView;

    invoke-virtual {v2, v6, v4, v6, v6}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method static synthetic h(Lcn/nubia/a/b;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcn/nubia/a/b;->i:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->f:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 373
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    .line 374
    iget-object v0, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a([Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/a/b;->r:Lcn/nubia/a/g;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Lcn/nubia/a/g;->a()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    iget-object v1, p0, Lcn/nubia/a/b;->k:Lcn/nubia/a/d;

    iget-object v1, v1, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    .line 380
    invoke-virtual {v1}, Lcn/nubia/a/c;->c()I

    move-result v1

    .line 379
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/a/b$7;

    invoke-direct {v1, p0}, Lcn/nubia/a/b$7;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/a/b;)[Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/a/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private k()V
    .locals 16

    move-object/from16 v0, p0

    .line 565
    iget-object v1, v0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3db851ec    # 0.09f

    const v5, 0x3e75c28f    # 0.24f

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v1, :cond_0

    .line 566
    iget-object v1, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v9, [F

    fill-array-data v11, :array_0

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 567
    iget-object v10, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    fill-array-data v12, :array_1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 568
    iget-object v11, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v9, [F

    fill-array-data v13, :array_2

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 570
    iget-object v12, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v9, [F

    fill-array-data v14, :array_3

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 571
    iget-object v13, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v9, [F

    fill-array-data v15, :array_4

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 572
    iget-object v14, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_5

    invoke-static {v14, v15, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 574
    new-instance v14, Landroid/view/animation/PathInterpolator;

    invoke-direct {v14, v5, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 575
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v2, 0xfa

    .line 577
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 578
    invoke-virtual {v1, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 579
    invoke-virtual {v10, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 580
    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    invoke-virtual {v11, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    invoke-virtual {v11, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    invoke-virtual {v12, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 585
    invoke-virtual {v12, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    invoke-virtual {v13, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 587
    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    invoke-virtual {v7, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 589
    invoke-virtual {v7, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 591
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v12, v3, v8

    const/4 v12, 0x1

    aput-object v13, v3, v12

    aput-object v7, v3, v9

    .line 592
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 593
    iget-object v2, v0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    new-instance v3, Lcn/nubia/a/b$8;

    invoke-direct {v3, v0}, Lcn/nubia/a/b$8;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    const/4 v1, 0x1

    aput-object v10, v3, v1

    aput-object v11, v3, v9

    .line 616
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 620
    iget-object v1, v0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/a/b$9;

    invoke-direct {v2, v0}, Lcn/nubia/a/b$9;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 647
    :cond_0
    iget-object v1, v0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    .line 648
    iget-object v1, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v9, [F

    fill-array-data v3, :array_6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 649
    iget-object v2, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_7

    invoke-static {v2, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 650
    iget-object v3, v0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v9, [F

    fill-array-data v10, :array_8

    invoke-static {v3, v7, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 652
    iget-object v7, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v10, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v11, v9, [F

    fill-array-data v11, :array_9

    invoke-static {v7, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 653
    iget-object v10, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v9, [F

    fill-array-data v12, :array_a

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 654
    iget-object v11, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v9, [F

    fill-array-data v13, :array_b

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 656
    iget-object v12, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v14, v9, [F

    fill-array-data v14, :array_c

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 657
    iget-object v13, v0, Lcn/nubia/a/b;->d:Landroid/view/View;

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v9, [F

    fill-array-data v15, :array_d

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 658
    iget-object v14, v0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_e

    invoke-static {v14, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 660
    new-instance v14, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e99999a    # 0.3f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v14, v5, v4, v9, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 661
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v9, v7

    const-wide/16 v6, 0x64

    .line 663
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 664
    invoke-virtual {v1, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 665
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 666
    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 667
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 668
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 669
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xa

    .line 670
    invoke-virtual {v15, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v7, 0x3

    new-array v5, v7, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    .line 671
    invoke-virtual {v15, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x64

    .line 673
    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 674
    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 675
    invoke-virtual {v10, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 676
    invoke-virtual {v10, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 677
    invoke-virtual {v11, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 678
    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3eeb851f    # 0.46f

    const v5, 0x3ee66666    # 0.45f

    const v7, 0x3f70a3d7    # 0.94f

    invoke-direct {v1, v2, v3, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 681
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f0ccccd    # 0.55f

    const v5, 0x3dae147b    # 0.085f

    const v7, 0x3f2e147b    # 0.68f

    const v14, 0x3f07ae14    # 0.53f

    invoke-direct {v2, v3, v5, v7, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 682
    invoke-virtual {v12, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x32

    .line 683
    invoke-virtual {v12, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 684
    invoke-virtual {v13, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 685
    invoke-virtual {v13, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 686
    new-instance v1, Lcn/nubia/a/b$10;

    invoke-direct {v1, v0}, Lcn/nubia/a/b$10;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v12, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 705
    invoke-virtual {v8, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 706
    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 708
    invoke-virtual {v12, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0xc8

    .line 709
    invoke-virtual {v12, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 710
    invoke-virtual {v12, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    invoke-virtual {v13, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 712
    invoke-virtual {v13, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 713
    invoke-virtual {v13, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 715
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xa

    .line 716
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 717
    iget-object v1, v0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v3, v2

    const/4 v2, 0x1

    aput-object v10, v3, v2

    const/4 v2, 0x2

    aput-object v11, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 718
    iget-object v1, v0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/a/b$11;

    invoke-direct {v2, v0}, Lcn/nubia/a/b$11;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 740
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const/4 v4, 0x2

    aput-object v8, v2, v4

    .line 741
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 743
    iget-object v1, v0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/a/b$2;

    invoke-direct {v2, v0}, Lcn/nubia/a/b$2;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 783
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    .line 784
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 786
    iget-object v1, v0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    new-instance v2, Lcn/nubia/a/b$3;

    invoke-direct {v2, v0}, Lcn/nubia/a/b$3;-><init>(Lcn/nubia/a/b;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic l(Lcn/nubia/a/b;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    return-object p0
.end method

.method private l()V
    .locals 1

    .line 834
    iget-object v0, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 838
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 840
    :cond_1
    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 844
    :cond_2
    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 846
    :cond_3
    iget-object v0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 847
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 850
    :cond_4
    iget-object v0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 852
    :cond_5
    iget-object v0, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 853
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 854
    iget-object v0, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 856
    :cond_6
    iget-object v0, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 858
    :cond_7
    iget-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_9

    .line 859
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 860
    iget-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 862
    :cond_8
    iget-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_9
    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcn/nubia/a/b;->E:Z

    return-void
.end method

.method static synthetic m(Lcn/nubia/a/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/a/b;->m()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/a/b;)Lcn/nubia/a/g;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->r:Lcn/nubia/a/g;

    return-object p0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    .line 907
    iput-boolean v0, p0, Lcn/nubia/a/b;->E:Z

    return-void
.end method

.method static synthetic o(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/a/b;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/a/b;->n()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/a/b;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 894
    iput p1, p0, Lcn/nubia/a/b;->a:I

    .line 895
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    return-void
.end method

.method public a(IZ)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcn/nubia/a/b;->b:[Lcom/android/common/ui/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 447
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 448
    invoke-interface {v4, p1, p2}, Lcom/android/common/ui/d;->a(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    if-eqz v0, :cond_1

    .line 452
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 453
    sget v4, Lcn/nubia/a/h$c;->a:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/common/ui/RotateTextView;

    invoke-virtual {v3, p1, p2}, Lcom/android/common/ui/RotateTextView;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    :cond_1
    iput p1, p0, Lcn/nubia/a/b;->D:I

    return-void
.end method

.method public a(Lcn/nubia/a/e;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcn/nubia/a/b;->s:Lcn/nubia/a/e;

    return-void
.end method

.method public a(Lcn/nubia/a/g;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/a/b;->r:Lcn/nubia/a/g;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    invoke-virtual {v0, p1}, Lcn/nubia/a/f;->setEnabled(Z)V

    .line 436
    iget-object v0, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    invoke-virtual {v0, p1}, Lcn/nubia/a/f;->setClickable(Z)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 533
    invoke-direct {p0}, Lcn/nubia/a/b;->l()V

    .line 534
    iget-object p2, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 536
    iget-object p2, p0, Lcn/nubia/a/b;->d:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_0
    invoke-direct {p0}, Lcn/nubia/a/b;->k()V

    .line 540
    iget-object p2, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    .line 541
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "CameraFamilyFragment"

    const-string v0, "hideFamilyGrid"

    .line 544
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-direct {p0}, Lcn/nubia/a/b;->l()V

    .line 546
    iget-object p2, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 547
    iget-object p2, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    if-eqz p1, :cond_4

    .line 551
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 552
    iget-object p1, p0, Lcn/nubia/a/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 553
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 554
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcn/nubia/a/b;->F:Lcn/nubia/a/b$a;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcn/nubia/a/b$a;->a(Z)Lcn/nubia/a/b$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 557
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lcn/nubia/a/b;->F:Lcn/nubia/a/b$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/a/b$a;->a(Z)Lcn/nubia/a/b$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    :goto_0
    iget-object p1, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 872
    iget-object v0, p0, Lcn/nubia/a/b;->n:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    .line 873
    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b;->o:Landroid/animation/AnimatorSet;

    .line 874
    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b;->q:Landroid/animation/AnimatorSet;

    .line 875
    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a(Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    .line 876
    invoke-direct {p0, v0}, Lcn/nubia/a/b;->a(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(I)V
    .locals 1

    .line 953
    iget-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 954
    invoke-direct {p0}, Lcn/nubia/a/b;->k()V

    .line 955
    iget-object v0, p0, Lcn/nubia/a/b;->e:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 956
    iget-object p1, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 499
    invoke-direct {p0}, Lcn/nubia/a/b;->j()V

    .line 500
    invoke-direct {p0}, Lcn/nubia/a/b;->k()V

    .line 501
    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    .line 502
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CameraFamilyFragment"

    const-string v1, "showFamilyGrid"

    .line 505
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcn/nubia/a/b;->l()V

    .line 507
    iget-object v0, p0, Lcn/nubia/a/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_1

    .line 509
    iget-object p1, p0, Lcn/nubia/a/b;->p:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcn/nubia/a/b;->E:Z

    return v0
.end method

.method public c()V
    .locals 0

    .line 949
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcn/nubia/a/b;->d()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 144
    iget-boolean p3, p0, Lcn/nubia/a/b;->t:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    sget p3, Lcn/nubia/a/h$d;->a:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcn/nubia/a/b;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcn/nubia/a/b;->t:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 179
    iget-boolean v0, p0, Lcn/nubia/a/b;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 188
    :goto_0
    iget-object v0, p0, Lcn/nubia/a/b;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0}, Lcn/nubia/a/b;->l()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcn/nubia/a/b;->u:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 156
    iget-boolean v0, p0, Lcn/nubia/a/b;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcn/nubia/a/b;->u:Z

    .line 162
    iget-object v1, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    .line 163
    iget-object v1, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcn/nubia/a/b;->h:Lcn/nubia/a/f;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/a/b;->z:Ljava/lang/Thread;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcn/nubia/a/b;->j:[Landroid/view/View;

    if-eqz v1, :cond_2

    const-string v1, "CameraFamilyFragment"

    const-string v2, "second init views and state"

    .line 166
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    .line 168
    invoke-direct {p0}, Lcn/nubia/a/b;->i()V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcn/nubia/a/b;->h()V

    .line 173
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/a/b;->i:Z

    return-void
.end method
