.class public Lcn/nubia/camera/x/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/x/f;

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

.field private o:Lcn/nubia/camera/x/a;

.field private p:Lcn/nubia/camera/q/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 51
    new-instance v0, Lcn/nubia/camera/x/f;

    invoke-direct {v0}, Lcn/nubia/camera/x/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 51
    new-instance p1, Lcn/nubia/camera/x/f;

    invoke-direct {p1}, Lcn/nubia/camera/x/f;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/x/f;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/x/a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

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

    .line 188
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017e

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 190
    new-instance v1, Lcn/nubia/camera/x/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/c$2;-><init>(Lcn/nubia/camera/x/c;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

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

    .line 205
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 207
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/x/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/x/c;
    .locals 2

    .line 68
    new-instance v0, Lcn/nubia/camera/x/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/x/c;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v1, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    const v2, 0x7f080131

    .line 171
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 172
    new-instance v1, Lcom/android/common/ui/g;

    iget-object v2, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    const v3, 0x7f090153

    invoke-direct {v1, v3, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcn/nubia/camera/q/e;

    iget-object v2, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v1, p0, Lcn/nubia/camera/x/c;->p:Lcn/nubia/camera/q/e;

    .line 175
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/x/c;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 177
    new-instance v1, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    const v2, 0x7f080128

    .line 178
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 179
    new-instance v1, Lcom/android/common/ui/g;

    iget-object v2, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    const v3, 0x7f0900df

    invoke-direct {v1, v3, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/c;->b(Ljava/util/ArrayList;)V

    .line 183
    invoke-direct {p0, v0}, Lcn/nubia/camera/x/c;->c(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/x/c$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/x/c$3;-><init>(Lcn/nubia/camera/x/c;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    new-instance v4, Lcn/nubia/camera/x/e;

    .line 121
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/x/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/x/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 123
    iget-object p1, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    invoke-virtual {p1}, Lcn/nubia/camera/x/f;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/x/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    .line 76
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/x/c;->a:Lcn/nubia/camera/q/m;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/x/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    invoke-static {v1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/f;)Lcn/nubia/camera/x/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    const v2, 0x7f09014e

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    iget-object v2, p0, Lcn/nubia/camera/x/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/q/g;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/q/g;)V

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    iget-object v2, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/q/g;)V

    .line 88
    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/q/g;)V

    .line 90
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 91
    invoke-direct {p0}, Lcn/nubia/camera/x/c;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 102
    iget-object v1, p0, Lcn/nubia/camera/x/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/x/c;->o:Lcn/nubia/camera/x/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/x/c;->k:Lcn/nubia/camera/x/f;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 97
    invoke-direct {p0}, Lcn/nubia/camera/x/c;->ae()V

    return-void
.end method

.method public f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->m()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/x/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->r()V

    :goto_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "more_setting_special"

    const-string v1, "pref_mirror_mode_key"

    .line 111
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected i_()V
    .locals 6

    .line 128
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_flashmode_key"

    .line 132
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/x/c$1;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/x/c$1;-><init>(Lcn/nubia/camera/x/c;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/x/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/x/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 144
    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/x/c;->p:Lcn/nubia/camera/q/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    :goto_0
    const-string v0, "pref_camera_delay_shoot_key"

    .line 147
    invoke-virtual {p0, v0}, Lcn/nubia/camera/x/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 150
    iget-object v1, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/x/c;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 151
    invoke-virtual {p0, v5}, Lcn/nubia/camera/x/c;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/x/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/x/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 156
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/x/c;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/x/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    const-string v0, "IdPhotoMemberFragment"

    const-string v1, "onPreferenceGroupUpdated fail"

    .line 158
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
