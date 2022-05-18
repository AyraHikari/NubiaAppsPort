.class public Lcn/nubia/camera/aimoon/d;
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

.field private m:Lcn/nubia/camera/aimoon/e;

.field private n:Lcn/nubia/camera/aimoon/h;

.field private o:Landroid/graphics/SurfaceTexture;

.field private p:Lcn/nubia/camera/aimoon/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    .line 43
    new-instance v1, Lcn/nubia/camera/aimoon/h;

    invoke-direct {v1}, Lcn/nubia/camera/aimoon/h;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 p1, 0x1

    .line 53
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    .line 43
    new-instance v0, Lcn/nubia/camera/aimoon/h;

    invoke-direct {v0}, Lcn/nubia/camera/aimoon/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    .line 54
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/d;->o:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private ae()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/d;->b(Ljava/util/ArrayList;)V

    .line 177
    invoke-direct {p0, v0}, Lcn/nubia/camera/aimoon/d;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private af()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/aimoon/d$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/d$1;-><init>(Lcn/nubia/camera/aimoon/d;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method private ag()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

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

    .line 183
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 185
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

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

    .line 189
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 191
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/aimoon/d;
    .locals 2

    .line 170
    new-instance v0, Lcn/nubia/camera/aimoon/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/aimoon/d;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 8

    const-string p1, "AIMoonMemberFragment"

    const-string v0, "onCameraInitDone"

    .line 126
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    new-instance v5, Lcn/nubia/camera/aimoon/f;

    .line 130
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v5, p1, v0, v2, v3}, Lcn/nubia/camera/aimoon/f;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 131
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v7

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v6, p3

    .line 127
    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;I)V

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    iget-object p2, p0, Lcn/nubia/camera/aimoon/d;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aimoon/h;->a(Landroid/graphics/SurfaceTexture;)V

    .line 133
    iget-object p1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    invoke-virtual {p1}, Lcn/nubia/camera/aimoon/h;->q()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 160
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/an/a;IIII)V

    return-void
.end method

.method protected a(F)Z
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/b;->a(F)V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->a(F)Z

    move-result p1

    return p1
.end method

.method protected c()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/d;->ae()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->k:Ljava/util/ArrayList;

    .line 61
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    new-instance v1, Lcn/nubia/camera/aimoon/e;

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/aimoon/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aimoon/h;)V

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/b;->a(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/aimoon/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    const v2, 0x7f09014e

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/aimoon/b;->a(Lcn/nubia/camera/q/g;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aimoon/b;->a(Lcn/nubia/camera/q/g;)V

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aimoon/b;->a(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aimoon/e;->a(Lcn/nubia/camera/q/b;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 82
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/d;->af()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/b;->b(Lcn/nubia/camera/q/g;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aimoon/b;->b(Lcn/nubia/camera/q/g;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->p:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aimoon/b;->b(Lcn/nubia/camera/q/g;)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/d;->ag()V

    return-void
.end method

.method protected i_()V
    .locals 6

    .line 138
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 142
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aimoon/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 145
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 146
    invoke-virtual {p0, v5}, Lcn/nubia/camera/aimoon/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->l:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aimoon/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 152
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    const-string v0, "AIMoonMemberFragment"

    const-string v1, "onPreferenceGroupUpdated fail"

    .line 154
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public n()V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/aimoon/l;->a(Lcom/android/preference/c;)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->n:Lcn/nubia/camera/aimoon/h;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/aimoon/h;->a(I)V

    .line 219
    iget-object v1, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/aimoon/e;->a(I)V

    .line 220
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "MoonType"

    invoke-virtual {v1, v0, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->o:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 99
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/e;->d()V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 88
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/d;->m:Lcn/nubia/camera/aimoon/e;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/e;->a()V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/d;->n()V

    return-void
.end method
