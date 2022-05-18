.class public Lcn/nubia/camera/ax/i;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/ax/f;

.field private l:Lcn/nubia/camera/ax/j;

.field private m:Lcn/nubia/camera/k/x;

.field private n:Lcom/android/common/ui/a;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcn/nubia/camera/ax/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    .line 42
    new-instance v1, Lcn/nubia/camera/ax/j;

    invoke-direct {v1}, Lcn/nubia/camera/ax/j;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    .line 46
    new-instance v0, Lcn/nubia/camera/ax/b;

    invoke-direct {v0}, Lcn/nubia/camera/ax/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->p:Lcn/nubia/camera/ax/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    .line 42
    new-instance v0, Lcn/nubia/camera/ax/j;

    invoke-direct {v0}, Lcn/nubia/camera/ax/j;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    .line 46
    new-instance p1, Lcn/nubia/camera/ax/b;

    invoke-direct {p1}, Lcn/nubia/camera/ax/b;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ax/i;->p:Lcn/nubia/camera/ax/b;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ax/i;)Lcn/nubia/camera/ax/j;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

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

    .line 127
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 129
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/ax/i;
    .locals 2

    .line 113
    new-instance v0, Lcn/nubia/camera/ax/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ax/i;-><init>(I)V

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

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-direct {p0, v0}, Lcn/nubia/camera/ax/i;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 169
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->m:Lcn/nubia/camera/k/x;

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcn/nubia/camera/ax/k;

    .line 173
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    .line 174
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/ax/i;->p:Lcn/nubia/camera/ax/b;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v7

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/ax/k;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/ax/b;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->m:Lcn/nubia/camera/k/x;

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcn/nubia/camera/ax/c;

    .line 178
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 179
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ax/c;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->m:Lcn/nubia/camera/k/x;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Lcn/nubia/camera/ax/g;

    .line 182
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ax/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ax/i;->m:Lcn/nubia/camera/k/x;

    .line 189
    :cond_2
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    iget-object v8, p0, Lcn/nubia/camera/ax/i;->m:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/ax/j;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/j;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->z:Lcn/nubia/camera/af/a;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcn/nubia/camera/ax/i;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ax/i;->o:Ljava/util/ArrayList;

    .line 62
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    const v1, 0x7f090150

    .line 63
    iget-object v2, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ax/i;->p:Lcn/nubia/camera/ax/b;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/j;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ax/b;)Lcn/nubia/camera/ax/f;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    const v2, 0x7f09014e

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ax/i;->b:Lcn/nubia/camera/q/b;

    const v1, 0x7f09014d

    .line 71
    iget-object v2, p0, Lcn/nubia/camera/ax/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1, p0}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/q/g;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    iget-object v2, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/q/g;)V

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    iget-object v2, p0, Lcn/nubia/camera/ax/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/q/g;)V

    .line 80
    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 107
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->l:Lcn/nubia/camera/ax/j;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ax/f;->b(Lcn/nubia/camera/q/g;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ax/f;->b(Lcn/nubia/camera/q/g;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->k:Lcn/nubia/camera/ax/f;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ax/f;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 4

    .line 134
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 139
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/i;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 141
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ax/i;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 145
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 146
    iget-object v1, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/ax/i$1;

    invoke-virtual {p0}, Lcn/nubia/camera/ax/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/ax/i$1;-><init>(Lcn/nubia/camera/ax/i;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ax/i;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 157
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ax/i;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ax/i;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 102
    iget-boolean v0, p0, Lcn/nubia/camera/ax/i;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 96
    iget-boolean v0, p0, Lcn/nubia/camera/ax/i;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
