.class public Lcn/nubia/camera/b/d;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/b/b;

.field private l:Lcn/nubia/camera/b/f;

.field private m:Lcn/nubia/camera/b/k;

.field private n:Lcn/nubia/camera/b/e;

.field private o:Lcom/android/common/ui/a;

.field private p:Lcom/android/common/ui/a;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 45
    new-instance v0, Lcn/nubia/camera/b/f;

    invoke-direct {v0}, Lcn/nubia/camera/b/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    .line 46
    new-instance v0, Lcn/nubia/camera/b/k;

    invoke-direct {v0}, Lcn/nubia/camera/b/k;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/b/d;->m:Lcn/nubia/camera/b/k;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 45
    new-instance p1, Lcn/nubia/camera/b/f;

    invoke-direct {p1}, Lcn/nubia/camera/b/f;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    .line 46
    new-instance p1, Lcn/nubia/camera/b/k;

    invoke-direct {p1}, Lcn/nubia/camera/b/k;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/b/d;->m:Lcn/nubia/camera/b/k;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/d;)Lcn/nubia/camera/b/f;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    return-object p0
.end method

.method public static b()Lcn/nubia/camera/b/d;
    .locals 2

    .line 54
    new-instance v0, Lcn/nubia/camera/b/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/b/d;-><init>(I)V

    return-object v0
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

    .line 161
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 162
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 163
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 168
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/b/d;->o:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 169
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 170
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/b/d;->o:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 174
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/b/d;->p:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 176
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/b/d;->p:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/d;->d(Ljava/util/ArrayList;)V

    .line 154
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/d;->c(Ljava/util/ArrayList;)V

    .line 155
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/d;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 14

    move-object v0, p0

    .line 94
    iget-object v1, v0, Lcn/nubia/camera/b/d;->n:Lcn/nubia/camera/b/e;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcn/nubia/camera/b/e;

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    iget-object v7, v0, Lcn/nubia/camera/b/d;->m:Lcn/nubia/camera/b/k;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/b/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;Lcn/nubia/camera/b/k;)V

    iput-object v1, v0, Lcn/nubia/camera/b/d;->n:Lcn/nubia/camera/b/e;

    .line 102
    :cond_0
    iget-object v8, v0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    iget-object v12, v0, Lcn/nubia/camera/b/d;->n:Lcn/nubia/camera/b/e;

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcn/nubia/camera/b/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 103
    iget-object v1, v0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    invoke-virtual {v1}, Lcn/nubia/camera/b/f;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcn/nubia/camera/b/d;->m()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/b/d;->q:Ljava/util/ArrayList;

    .line 69
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/b/d;->a:Lcn/nubia/camera/q/m;

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/b/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    iget-object v2, p0, Lcn/nubia/camera/b/d;->m:Lcn/nubia/camera/b/k;

    invoke-static {v1, v2}, Lcn/nubia/camera/b/b;->a(Lcn/nubia/camera/b/f;Lcn/nubia/camera/b/k;)Lcn/nubia/camera/b/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    const v2, 0x7f09014e

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/b/d;->b:Lcn/nubia/camera/q/b;

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/b/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    iget-object v2, p0, Lcn/nubia/camera/b/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/b/b;->a(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    iget-object v2, p0, Lcn/nubia/camera/b/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/b/b;->a(Lcn/nubia/camera/q/g;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/b/b;->a(Lcn/nubia/camera/q/g;)V

    .line 82
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/b/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/b/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/b/d;->k:Lcn/nubia/camera/b/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/b/d;->l:Lcn/nubia/camera/b/f;

    return-object v0
.end method

.method public h()[Ljava/lang/String;
    .locals 7

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "more_setting_special"

    const-string v2, "pref_mirror_mode_key"

    const-string v3, "pref_moresetting_picturesize_key"

    .line 184
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 190
    aget-object v5, v1, v4

    .line 191
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 199
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 6

    .line 113
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 114
    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/b/d;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 118
    invoke-virtual {p0, v0}, Lcn/nubia/camera/b/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 120
    invoke-virtual {p0, v0}, Lcn/nubia/camera/b/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcn/nubia/camera/b/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 124
    iget-object v1, p0, Lcn/nubia/camera/b/d;->p:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/b/d$1;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/b/d$1;-><init>(Lcn/nubia/camera/b/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/b/d;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/b/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/b/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :goto_1
    const-string v0, "pref_camera_delay_shoot_key"

    .line 135
    invoke-virtual {p0, v0}, Lcn/nubia/camera/b/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/b/d;->o:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/b/d;->o:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/b/d;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 139
    invoke-virtual {p0, v5}, Lcn/nubia/camera/b/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 141
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/b/d;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/b/d;->o:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/b/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 145
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/b/d;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/b/d;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
