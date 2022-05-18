.class public Lcn/nubia/camera/elefnovideo/e;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/nubia/camera/extendedUI/g;

.field private m:Lcn/nubia/camera/extendedUI/g;

.field private n:Lcn/nubia/camera/elefnovideo/c;

.field private o:Lcn/nubia/camera/elefnovideo/i;

.field private p:Lcn/nubia/camera/elefnovideo/f;

.field private q:Lcom/android/common/c/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    .line 46
    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    .line 48
    new-instance v0, Lcn/nubia/camera/elefnovideo/i;

    invoke-direct {v0}, Lcn/nubia/camera/elefnovideo/i;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    .line 48
    new-instance p1, Lcn/nubia/camera/elefnovideo/i;

    invoke-direct {p1}, Lcn/nubia/camera/elefnovideo/i;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/c;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/e;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/e;->q:Lcom/android/common/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/elefnovideo/e;Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcn/nubia/camera/elefnovideo/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/elefnovideo/e$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/elefnovideo/e$5;-><init>(Lcn/nubia/camera/elefnovideo/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method private af()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/elefnovideo/i;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 203
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    .line 204
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/elefnovideo/e;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/e;->o()V

    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 210
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Lcn/nubia/camera/elefnovideo/e$3;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/camera/elefnovideo/e$3;-><init>(Lcn/nubia/camera/elefnovideo/e;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080165

    .line 225
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 226
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    const v2, 0x7f09004b

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/elefnovideo/e;)Lcom/android/common/c/a$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/camera/elefnovideo/e;->q:Lcom/android/common/c/a$a;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/elefnovideo/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/elefnovideo/e;)Lcom/android/preference/c;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/elefnovideo/e;)Lcom/android/preference/c;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/elefnovideo/e;
    .locals 2

    .line 60
    new-instance v0, Lcn/nubia/camera/elefnovideo/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/elefnovideo/e;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->a(Ljava/util/ArrayList;)V

    .line 196
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->b(Ljava/util/ArrayList;)V

    .line 197
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->d(Ljava/util/ArrayList;)V

    .line 198
    invoke-direct {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 232
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->q:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 234
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    new-instance v1, Lcn/nubia/camera/elefnovideo/e$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/elefnovideo/e$4;-><init>(Lcn/nubia/camera/elefnovideo/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/elefnovideo/i;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 251
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->p:Lcn/nubia/camera/elefnovideo/f;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcn/nubia/camera/elefnovideo/f;

    .line 102
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/elefnovideo/f;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->p:Lcn/nubia/camera/elefnovideo/f;

    .line 106
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    iget-object v8, p0, Lcn/nubia/camera/elefnovideo/e;->p:Lcn/nubia/camera/elefnovideo/f;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/elefnovideo/i;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    invoke-virtual {v0}, Lcn/nubia/camera/elefnovideo/i;->q()V

    .line 109
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 110
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/elefnovideo/c;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/k/h;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/k/h;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/e;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    .line 68
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->a:Lcn/nubia/camera/q/m;

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    invoke-static {v1, v2}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/elefnovideo/i;)Lcn/nubia/camera/elefnovideo/c;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    const v2, 0x7f09014e

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/q/g;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    iget-object v2, p0, Lcn/nubia/camera/elefnovideo/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/elefnovideo/c;->a(Lcn/nubia/camera/q/g;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/e;->ae()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 93
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->n:Lcn/nubia/camera/elefnovideo/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    .line 126
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {v4}, Lcn/nubia/camera/q/a;->d_()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->o:Lcn/nubia/camera/elefnovideo/i;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 88
    invoke-direct {p0}, Lcn/nubia/camera/elefnovideo/e;->af()V

    return-void
.end method

.method protected i_()V
    .locals 2

    .line 141
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/camera/elefnovideo/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_image_registration"

    .line 146
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    new-instance v1, Lcn/nubia/camera/elefnovideo/e$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/elefnovideo/e$1;-><init>(Lcn/nubia/camera/elefnovideo/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->l:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/elefnovideo/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_3

    const-string v0, "pref_camera_elefno_video_color"

    .line 171
    invoke-virtual {p0, v0}, Lcn/nubia/camera/elefnovideo/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 173
    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    new-instance v1, Lcn/nubia/camera/elefnovideo/e$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/elefnovideo/e$2;-><init>(Lcn/nubia/camera/elefnovideo/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->m:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/elefnovideo/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 188
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/e;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
