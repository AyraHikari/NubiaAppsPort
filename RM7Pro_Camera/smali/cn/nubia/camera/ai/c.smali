.class public Lcn/nubia/camera/ai/c;
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

.field private l:Lcom/android/common/ui/a;

.field private m:Lcn/nubia/camera/ai/d;

.field private n:Lcn/nubia/camera/ai/f;

.field private o:Lcn/nubia/camera/ai/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    .line 48
    new-instance v1, Lcn/nubia/camera/ai/f;

    invoke-direct {v1}, Lcn/nubia/camera/ai/f;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    .line 49
    iput-object v0, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    .line 48
    new-instance v0, Lcn/nubia/camera/ai/f;

    invoke-direct {v0}, Lcn/nubia/camera/ai/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

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

    .line 239
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 241
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

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

    .line 245
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 246
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 247
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/ai/c;
    .locals 2

    .line 226
    new-instance v0, Lcn/nubia/camera/ai/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ai/c;-><init>(I)V

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

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-direct {p0, v0}, Lcn/nubia/camera/ai/c;->b(Ljava/util/ArrayList;)V

    .line 233
    invoke-direct {p0, v0}, Lcn/nubia/camera/ai/c;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    new-instance v4, Lcn/nubia/camera/ai/e;

    .line 187
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/ai/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 184
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/ai/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 189
    iget-object p1, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    invoke-virtual {p1}, Lcn/nubia/camera/ai/f;->q()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 216
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/an/a;IIII)V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 63
    invoke-direct {p0}, Lcn/nubia/camera/ai/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->k:Ljava/util/ArrayList;

    .line 64
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 67
    new-instance v1, Lcn/nubia/camera/ai/d;

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/ai/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    .line 71
    new-instance v2, Lcn/nubia/camera/ai/c$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ai/c$1;-><init>(Lcn/nubia/camera/ai/c;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ai/d;->a(Lcn/nubia/camera/aj/i;)V

    .line 103
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    new-instance v2, Lcn/nubia/camera/ai/c$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ai/c$2;-><init>(Lcn/nubia/camera/ai/c;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ai/d;->a(Lcn/nubia/camera/k/u;)V

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    .line 129
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    invoke-static {v1}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/ai/f;)Lcn/nubia/camera/ai/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    const v2, 0x7f09014e

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/q/g;)V

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    iget-object v2, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/q/g;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    iget-object v2, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/q/g;)V

    .line 139
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 177
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->n:Lcn/nubia/camera/ai/f;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 7

    .line 253
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "more_setting_special"

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "pref_mirror_mode_key"

    .line 256
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 262
    aget-object v5, v1, v4

    .line 263
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 265
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string v5, "NightSceneMemberFragment"

    const-string v6, "Not support KEY_MIRROR_MODE"

    .line 266
    invoke-static {v5, v6}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 272
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 6

    .line 194
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 195
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 198
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ai/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 201
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 202
    invoke-virtual {p0, v5}, Lcn/nubia/camera/ai/c;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->l:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ai/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/camera/ai/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/d;->d()V

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 144
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 145
    iget-boolean v0, p0, Lcn/nubia/camera/ai/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->m:Lcn/nubia/camera/ai/d;

    invoke-virtual {v0}, Lcn/nubia/camera/ai/d;->a()V

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/ai/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ai/a;->b(Lcn/nubia/camera/q/g;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    iget-object v1, p0, Lcn/nubia/camera/ai/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ai/a;->b(Lcn/nubia/camera/q/g;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/ai/c;->o:Lcn/nubia/camera/ai/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ai/a;->b(Lcn/nubia/camera/q/g;)V

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcn/nubia/camera/ai/c;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "night"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
