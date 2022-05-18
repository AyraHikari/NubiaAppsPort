.class public Lcn/nubia/camera/ah/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field k:Lcn/nubia/camera/ah/a;

.field final l:Ljava/lang/String;

.field private m:Lcom/android/common/ui/a;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcn/nubia/camera/ah/g;

.field private p:Lcn/nubia/camera/k/x;

.field private q:Lcn/nubia/camera/q/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const-string v0, "MultiExposureMemberFragment"

    .line 46
    iput-object v0, p0, Lcn/nubia/camera/ah/c;->l:Ljava/lang/String;

    .line 49
    new-instance v0, Lcn/nubia/camera/ah/g;

    invoke-direct {v0}, Lcn/nubia/camera/ah/g;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const-string p1, "MultiExposureMemberFragment"

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/ah/c;->l:Ljava/lang/String;

    .line 49
    new-instance p1, Lcn/nubia/camera/ah/g;

    invoke-direct {p1}, Lcn/nubia/camera/ah/g;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ah/c;)Lcn/nubia/camera/ah/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/ah/c;)Lcom/android/preference/c;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->u()Lcom/android/preference/c;

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

    .line 177
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 178
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 179
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance p1, Lcn/nubia/camera/q/e;

    iget-object v0, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/ah/c;->q:Lcn/nubia/camera/q/e;

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ah/c;->q:Lcn/nubia/camera/q/e;

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

    .line 186
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 188
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/ah/c;
    .locals 2

    .line 108
    new-instance v0, Lcn/nubia/camera/ah/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ah/c;-><init>(I)V

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

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/c;->b(Ljava/util/ArrayList;)V

    .line 170
    invoke-direct {p0, v0}, Lcn/nubia/camera/ah/c;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/ah/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ah/c$2;-><init>(Lcn/nubia/camera/ah/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->p:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcn/nubia/camera/ah/d;

    .line 196
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 197
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ah/d;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ah/c;->p:Lcn/nubia/camera/k/x;

    .line 202
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    iget-object v8, p0, Lcn/nubia/camera/ah/c;->p:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/ah/g;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    invoke-virtual {p1}, Lcn/nubia/camera/ah/g;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 56
    invoke-direct {p0}, Lcn/nubia/camera/ah/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/c;->n:Ljava/util/ArrayList;

    .line 57
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    .line 58
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    invoke-static {}, Lcn/nubia/camera/ah/a;->d()Lcn/nubia/camera/ah/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    .line 61
    iget-object v2, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/ah/g;Lcn/nubia/k/a/a;)V

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    iget-object v2, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/q/g;)V

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    iget-object v2, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/q/g;)V

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/q/g;)V

    .line 70
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/ah/c;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 114
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MultiExposureMemberFragment"

    const-string v2, "ignore performShutterButtonClick because fragment is pause"

    .line 130
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->d_()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->o:Lcn/nubia/camera/ah/g;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/q/g;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/q/g;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/ah/c;->ae()V

    return-void
.end method

.method protected i_()V
    .locals 4

    .line 208
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 209
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 213
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 215
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ah/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 218
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 219
    iget-object v1, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/ah/c$1;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/ah/c$1;-><init>(Lcn/nubia/camera/ah/c;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 227
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ah/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 228
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->q:Lcn/nubia/camera/q/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 232
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ah/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 95
    iget-boolean v0, p0, Lcn/nubia/camera/ah/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 88
    iget-boolean v0, p0, Lcn/nubia/camera/ah/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/ah/c;->D()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MultiExposureMemberFragment"

    const-string v2, "ignore performShutterButtonLongClick because fragment is pause"

    .line 150
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 154
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0

    .line 156
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ah/c;->k:Lcn/nubia/camera/ah/a;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {v0}, Lcn/nubia/camera/ah/a;->d_()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method
