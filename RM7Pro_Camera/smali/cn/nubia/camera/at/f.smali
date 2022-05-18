.class public Lcn/nubia/camera/at/f;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/at/i;

.field private l:Lcn/nubia/camera/at/e;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/android/common/ui/a;

.field private o:Lcom/android/common/ui/k;

.field private p:Lcom/android/common/ui/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/camera/at/i;

    invoke-direct {v0}, Lcn/nubia/camera/at/i;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    .line 48
    iput-object v0, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    .line 50
    iput-object v0, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 46
    new-instance p1, Lcn/nubia/camera/at/i;

    invoke-direct {p1}, Lcn/nubia/camera/at/i;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/f;)Lcn/nubia/camera/at/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

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

    .line 198
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 200
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 205
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    const v1, 0x7f08030c

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 207
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
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

    .line 212
    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080146

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 215
    new-instance v1, Lcn/nubia/camera/at/f$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/at/f$3;-><init>(Lcn/nubia/camera/at/f;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->aa:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 227
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    const v1, 0x7f080162

    .line 228
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 229
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 236
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/at/f;
    .locals 2

    .line 63
    new-instance v0, Lcn/nubia/camera/at/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/at/f;-><init>(I)V

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

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/f;->b(Ljava/util/ArrayList;)V

    .line 190
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/f;->c(Ljava/util/ArrayList;)V

    .line 191
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/f;->d(Ljava/util/ArrayList;)V

    .line 192
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/f;->e(Ljava/util/ArrayList;)V

    .line 193
    invoke-direct {p0, v0}, Lcn/nubia/camera/at/f;->f(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    new-instance v4, Lcn/nubia/camera/at/g;

    .line 123
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/at/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 120
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/at/i;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    invoke-virtual {p1}, Lcn/nubia/camera/at/i;->q()V

    return-void
.end method

.method protected c()V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/at/f;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    .line 91
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/at/f;->a:Lcn/nubia/camera/q/m;

    .line 92
    iget-object v1, p0, Lcn/nubia/camera/at/f;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    invoke-static {v1}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/at/i;)Lcn/nubia/camera/at/e;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    const v2, 0x7f09014e

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 97
    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->g(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    .line 98
    iget-object v1, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 100
    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    iget-object v2, p0, Lcn/nubia/camera/at/f;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/q/g;)V

    .line 101
    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/q/g;)V

    .line 102
    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    iget-object v2, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/q/g;)V

    .line 103
    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/q/g;)V

    .line 105
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 115
    iget-object v1, p0, Lcn/nubia/camera/at/f;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/at/f;->l:Lcn/nubia/camera/at/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/at/f;->k:Lcn/nubia/camera/at/i;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/b;->c(Z)V

    .line 242
    iget-object p1, p0, Lcn/nubia/camera/at/f;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->M()V

    return-void
.end method

.method protected i_()V
    .locals 6

    .line 130
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_delay_shoot_key"

    .line 136
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_1

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 139
    iget-object v1, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/at/f;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    invoke-virtual {p0, v5}, Lcn/nubia/camera/at/f;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/at/f;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/at/f;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    if-eqz v0, :cond_4

    const-string v0, "pref_starry_sky_camera_erase_tail_key"

    .line 146
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_3

    .line 148
    iget-object v1, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/at/f$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/at/f$1;-><init>(Lcn/nubia/camera/at/f;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/at/f;->o:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/at/f;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 164
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    if-eqz v0, :cond_6

    const-string v0, "pref_silhouette_key"

    .line 165
    invoke-virtual {p0, v0}, Lcn/nubia/camera/at/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_5

    .line 167
    iget-object v1, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 168
    iget-object v1, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/at/f$2;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/at/f$2;-><init>(Lcn/nubia/camera/at/f;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 177
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/at/f;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/at/f;->p:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/at/f;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 79
    iget-boolean v0, p0, Lcn/nubia/camera/at/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarrySkyMemberFragment"

    const-string v1, "onPause"

    .line 82
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 69
    iget-boolean v0, p0, Lcn/nubia/camera/at/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarrySkyMemberFragment"

    const-string v1, "onResume"

    .line 72
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
