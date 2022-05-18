.class public Lcn/nubia/camera/y/d;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/String; = "IntervalometerMemberFragment"


# instance fields
.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/k/x;

.field private n:Lcn/nubia/camera/y/f;

.field private o:Lcn/nubia/camera/y/b;

.field private p:Lcom/android/common/ui/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/camera/y/d;->l:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcn/nubia/camera/y/f;

    invoke-direct {v0}, Lcn/nubia/camera/y/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/y/d;->l:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Lcn/nubia/camera/y/f;

    invoke-direct {p1}, Lcn/nubia/camera/y/f;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/d;)Lcn/nubia/camera/y/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/y/d;)Lcn/nubia/camera/y/f;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

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

    .line 162
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/y/d;->p:Lcom/android/common/ui/k;

    const v1, 0x7f080153

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 165
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/y/d;->p:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
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

    .line 170
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 172
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/y/d;
    .locals 2

    .line 64
    new-instance v0, Lcn/nubia/camera/y/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/y/d;-><init>(I)V

    return-object v0
.end method

.method private o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-direct {p0, v0}, Lcn/nubia/camera/y/d;->b(Ljava/util/ArrayList;)V

    .line 179
    invoke-direct {p0, v0}, Lcn/nubia/camera/y/d;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 100
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/y/d;->m:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcn/nubia/camera/y/e;

    .line 103
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/y/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/y/d;->m:Lcn/nubia/camera/k/x;

    .line 109
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    iget-object v8, p0, Lcn/nubia/camera/y/d;->m:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/y/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    invoke-virtual {p1}, Lcn/nubia/camera/y/f;->q()V

    return-void
.end method

.method protected c()V
    .locals 6

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/y/d;->o()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/y/d;->l:Ljava/util/ArrayList;

    .line 71
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/y/d;->a:Lcn/nubia/camera/q/m;

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/y/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/f;)Lcn/nubia/camera/y/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    const v2, 0x7f09014e

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/y/d;->b:Lcn/nubia/camera/q/b;

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/y/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    iget-object v2, p0, Lcn/nubia/camera/y/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/q/g;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    iget-object v2, p0, Lcn/nubia/camera/y/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/q/g;)V

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/q/g;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/q/g;)V

    .line 85
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/y/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/y/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/y/b;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/y/d;->n:Lcn/nubia/camera/y/f;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcn/nubia/camera/y/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/q/g;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    iget-object v1, p0, Lcn/nubia/camera/y/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/q/g;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/y/d;->o:Lcn/nubia/camera/y/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 8

    .line 204
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "more_setting_special"

    const-string v3, "pref_mirror_mode_key"

    .line 207
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    .line 212
    aget-object v6, v2, v5

    .line 213
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 214
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v7

    if-nez v7, :cond_2

    .line 216
    :cond_1
    sget-object v6, Lcn/nubia/camera/y/d;->k:Ljava/lang/String;

    const-string v7, "Not support KEY_MIRROR_MODE"

    invoke-static {v6, v7}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 218
    :cond_2
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 222
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method protected i_()V
    .locals 4

    .line 115
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/y/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "pref_Intervalometer_night_scene_mode_key"

    .line 118
    invoke-virtual {p0, v0}, Lcn/nubia/camera/y/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/y/d;->p:Lcom/android/common/ui/k;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/y/d;->p:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/y/d$1;

    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v0}, Lcn/nubia/camera/y/d$1;-><init>(Lcn/nubia/camera/y/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/y/d;->p:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/y/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public n()Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/y/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aF()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 192
    iget-boolean v0, p0, Lcn/nubia/camera/y/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 186
    iget-boolean v0, p0, Lcn/nubia/camera/y/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
