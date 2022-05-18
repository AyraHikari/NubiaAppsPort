.class public Lcn/nubia/camera/r/g;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/r/e;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/android/common/ui/a;

.field private n:Lcom/android/common/ui/a;

.field private o:Z

.field private p:Lcn/nubia/camera/r/k;

.field private q:Lcn/nubia/camera/r/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcn/nubia/camera/r/g;->o:Z

    .line 50
    new-instance v0, Lcn/nubia/camera/r/k;

    invoke-direct {v0}, Lcn/nubia/camera/r/k;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/camera/r/g;->o:Z

    .line 50
    new-instance p1, Lcn/nubia/camera/r/k;

    invoke-direct {p1}, Lcn/nubia/camera/r/k;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/k;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
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

    .line 227
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/r/g;->m:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 228
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 229
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/r/g;->m:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/r/g;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/camera/r/g;->o:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/g;)Lcom/android/common/ui/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    return-object p0
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

    .line 233
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    .line 234
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/r/g;)Lcom/android/preference/c;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->u()Lcom/android/preference/c;

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

    .line 238
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 239
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 240
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/r/g;)Lcn/nubia/camera/r/e;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/r/g;)Lcom/android/preference/c;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/r/g;
    .locals 2

    .line 63
    new-instance v0, Lcn/nubia/camera/r/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/r/g;-><init>(I)V

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

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/g;->a(Ljava/util/ArrayList;)V

    .line 219
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/g;->b(Ljava/util/ArrayList;)V

    .line 220
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/g;->c(Ljava/util/ArrayList;)V

    .line 221
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/g;->d(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/r/g$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/g$3;-><init>(Lcn/nubia/camera/r/g;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/r/g;->q:Lcn/nubia/camera/r/h;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcn/nubia/camera/r/h;

    .line 110
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 111
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/r/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/r/g;->q:Lcn/nubia/camera/r/h;

    .line 114
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    iget-object v8, p0, Lcn/nubia/camera/r/g;->q:Lcn/nubia/camera/r/h;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/r/k;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    invoke-virtual {v0}, Lcn/nubia/camera/r/k;->q()V

    .line 117
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 118
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/r/e;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    :cond_1
    return-void
.end method

.method public ac()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lcn/nubia/camera/r/e;->n()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 69
    invoke-direct {p0}, Lcn/nubia/camera/r/g;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    .line 70
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/g;->a:Lcn/nubia/camera/q/m;

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/r/g;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    invoke-static {v1, v2}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/r/k;)Lcn/nubia/camera/r/e;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    const v2, 0x7f09014e

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    iget-object v2, p0, Lcn/nubia/camera/r/g;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/q/g;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    iget-object v2, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/q/g;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/q/g;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 84
    invoke-direct {p0}, Lcn/nubia/camera/r/g;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/r/g;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/r/g;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/r/g;->k:Lcn/nubia/camera/r/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/r/e;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/r/g;->ae()V

    return-void
.end method

.method public f(Z)Z
    .locals 5

    const-string v0, "pref_freeze_video_registration_key"

    .line 187
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    const-string v1, "auto"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 188
    iget-object v3, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    if-eqz v3, :cond_2

    .line 189
    iget-boolean v3, p0, Lcn/nubia/camera/r/g;->o:Z

    if-eq p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    if-eqz p1, :cond_0

    const v4, 0x7f08015e

    goto :goto_0

    :cond_0
    const v4, 0x7f08015f

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/common/ui/a;->setImageResource(I)V

    if-nez p1, :cond_1

    const v3, 0x7f0f030d

    goto :goto_1

    :cond_1
    const v3, 0x7f0f030e

    .line 191
    :goto_1
    invoke-virtual {p0, v3}, Lcn/nubia/camera/r/g;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 195
    :cond_2
    iput-boolean p1, p0, Lcn/nubia/camera/r/g;->o:Z

    .line 196
    iget-object v3, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    invoke-virtual {v3, p1}, Lcn/nubia/camera/r/k;->a(Z)V

    .line 197
    iget-object p1, p0, Lcn/nubia/camera/r/g;->q:Lcn/nubia/camera/r/h;

    iget-boolean v3, p0, Lcn/nubia/camera/r/g;->o:Z

    invoke-virtual {p1, v3}, Lcn/nubia/camera/r/h;->b(Z)V

    .line 198
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 199
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    .line 200
    invoke-virtual {p1}, Lcn/nubia/camera/r/k;->e()I

    move-result p1

    iget-boolean v3, p0, Lcn/nubia/camera/r/g;->o:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    const v3, 0x801a

    :goto_2
    if-eq p1, v3, :cond_4

    .line 201
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFixed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/camera/r/g;->o:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", asyncConfigSession"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FreezeVideoMemberFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/r/g;->p:Lcn/nubia/camera/r/k;

    invoke-virtual {p1}, Lcn/nubia/camera/r/k;->q()V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v2
.end method

.method protected i_()V
    .locals 4

    .line 129
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const-string v0, "pref_video_flashmode_key"

    .line 133
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/r/g;->m:Lcom/android/common/ui/a;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/r/g;->m:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/r/g$1;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/r/g$1;-><init>(Lcn/nubia/camera/r/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/r/g;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/r/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :goto_0
    const-string v0, "pref_freeze_video_registration_key"

    .line 147
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_3

    .line 148
    iget-object v1, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    if-eqz v1, :cond_3

    .line 149
    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 150
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    iget-boolean v2, p0, Lcn/nubia/camera/r/g;->o:Z

    if-eqz v2, :cond_1

    const v2, 0x7f08015e

    goto :goto_1

    :cond_1
    const v2, 0x7f08015f

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 153
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/r/g$2;

    invoke-virtual {p0}, Lcn/nubia/camera/r/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v0}, Lcn/nubia/camera/r/g$2;-><init>(Lcn/nubia/camera/r/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 174
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/r/g;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/r/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 177
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/r/g;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/r/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
