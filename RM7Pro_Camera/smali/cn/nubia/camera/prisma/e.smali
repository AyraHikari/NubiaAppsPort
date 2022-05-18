.class public Lcn/nubia/camera/prisma/e;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/prisma/c;

.field private l:Lcom/android/common/ui/a;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/nubia/camera/prisma/h;

.field private o:Lcn/nubia/camera/k/x;

.field private p:Lcn/nubia/camera/q/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    .line 54
    new-instance v0, Lcn/nubia/camera/prisma/h;

    invoke-direct {v0}, Lcn/nubia/camera/prisma/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    .line 54
    new-instance p1, Lcn/nubia/camera/prisma/h;

    invoke-direct {p1}, Lcn/nubia/camera/prisma/h;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/prisma/e;)Lcn/nubia/camera/prisma/h;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/prisma/e;)Lcom/android/preference/c;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->u()Lcom/android/preference/c;

    move-result-object p0

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

    .line 171
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 173
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance p1, Lcn/nubia/camera/q/e;

    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/prisma/e;->p:Lcn/nubia/camera/q/e;

    .line 176
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

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

    .line 180
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 182
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/prisma/e;
    .locals 2

    .line 67
    new-instance v0, Lcn/nubia/camera/prisma/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/prisma/e;-><init>(I)V

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

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/e;->b(Ljava/util/ArrayList;)V

    .line 164
    invoke-direct {p0, v0}, Lcn/nubia/camera/prisma/e;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/prisma/e$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/prisma/e$2;-><init>(Lcn/nubia/camera/prisma/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->o:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcn/nubia/camera/prisma/f;

    .line 114
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/prisma/f;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/prisma/e;->o:Lcn/nubia/camera/k/x;

    .line 120
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    iget-object v8, p0, Lcn/nubia/camera/prisma/e;->o:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/prisma/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    invoke-virtual {p1}, Lcn/nubia/camera/prisma/h;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/prisma/e;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prisma/e;->m:Ljava/util/ArrayList;

    .line 75
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    invoke-static {}, Lcn/nubia/camera/prisma/c;->e()Lcn/nubia/camera/prisma/c;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    .line 79
    iget-object v2, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/prisma/h;Lcn/nubia/k/a/a;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    iget-object v2, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/q/g;)V

    .line 85
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    iget-object v2, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/q/g;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/q/g;)V

    .line 88
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 89
    invoke-direct {p0}, Lcn/nubia/camera/prisma/e;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "PrismaMemberFragment"

    const-string v2, "ignore performShutterButtonClick because fragment is pause"

    .line 132
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->d_()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->n:Lcn/nubia/camera/prisma/h;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/c;->b(Lcn/nubia/camera/q/g;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/c;->b(Lcn/nubia/camera/q/g;)V

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/prisma/c;->b(Lcn/nubia/camera/q/g;)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/prisma/e;->ae()V

    return-void
.end method

.method protected i_()V
    .locals 4

    .line 203
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 208
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 210
    invoke-virtual {p0, v0}, Lcn/nubia/camera/prisma/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 214
    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/prisma/e$1;

    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/prisma/e$1;-><init>(Lcn/nubia/camera/prisma/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 222
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->l:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/prisma/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/prisma/e;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public w()Z
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/prisma/e;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "PrismaMemberFragment"

    const-string v2, "ignore performShutterButtonLongClick because fragment is pause"

    .line 147
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prisma/e;->k:Lcn/nubia/camera/prisma/c;

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->d_()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method
