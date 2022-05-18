.class public Lcn/nubia/camera/ag/f;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/ag/d;

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

.field private n:Lcom/android/common/ui/k;

.field private o:Lcn/nubia/camera/ag/h;

.field private p:Lcn/nubia/camera/k/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 48
    new-instance v0, Lcn/nubia/camera/ag/h;

    invoke-direct {v0}, Lcn/nubia/camera/ag/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 48
    new-instance p1, Lcn/nubia/camera/ag/h;

    invoke-direct {p1}, Lcn/nubia/camera/ag/h;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/f;)Lcn/nubia/camera/ag/h;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ag/f;)Lcn/nubia/camera/ag/d;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

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

    .line 180
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/f;->m:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 182
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->m:Lcom/android/common/ui/a;

    const v2, 0x7f090153

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

    .line 186
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/f;->n:Lcom/android/common/ui/k;

    .line 187
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->n:Lcom/android/common/ui/k;

    const/4 v2, -0x1

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

    .line 191
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 193
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-direct {p0, v0}, Lcn/nubia/camera/ag/f;->b(Ljava/util/ArrayList;)V

    .line 116
    invoke-direct {p0, v0}, Lcn/nubia/camera/ag/f;->c(Ljava/util/ArrayList;)V

    .line 117
    invoke-direct {p0, v0}, Lcn/nubia/camera/ag/f;->d(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public N()V
    .locals 1

    .line 174
    invoke-super {p0}, Lcn/nubia/camera/q/i;->N()V

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    invoke-virtual {v0}, Lcn/nubia/camera/ag/d;->n()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->p:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcn/nubia/camera/ag/g;

    .line 90
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 91
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ag/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/f;->p:Lcn/nubia/camera/k/x;

    .line 96
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    iget-object v8, p0, Lcn/nubia/camera/ag/f;->p:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/ag/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 97
    iget-object p1, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    invoke-virtual {p1}, Lcn/nubia/camera/ag/h;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/ag/f;->m()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ag/f;->a:Lcn/nubia/camera/q/m;

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    invoke-static {v1}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/ag/h;)Lcn/nubia/camera/ag/d;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    const v2, 0x7f09014e

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->i(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ag/f;->b:Lcn/nubia/camera/q/b;

    .line 71
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    iget-object v2, p0, Lcn/nubia/camera/ag/f;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/q/g;)V

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    invoke-virtual {v1, v1}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/q/g;)V

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    iget-object v2, p0, Lcn/nubia/camera/ag/f;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/q/g;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ag/d;->a(Lcn/nubia/camera/q/g;)V

    .line 78
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->o:Lcn/nubia/camera/ag/h;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->g(Ljava/lang/String;)V

    const-string v0, "pref_peaking_focus_key"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcn/nubia/camera/ag/f;->k:Lcn/nubia/camera/ag/d;

    invoke-virtual {p1}, Lcn/nubia/camera/ag/d;->n()V

    :cond_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 2

    .line 107
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->k()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string v0, "more_setting_special"

    const-string v1, "pref_capture_focus_up_key"

    .line 108
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected i_()V
    .locals 4

    .line 123
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 128
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 130
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->m:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->m:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/ag/f$1;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/f;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/ag/f$1;-><init>(Lcn/nubia/camera/ag/f;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 142
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ag/f;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :goto_1
    const-string v0, "pref_camera_microspur_magnifier"

    .line 145
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ag/f;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 146
    iget-object v1, p0, Lcn/nubia/camera/ag/f;->n:Lcom/android/common/ui/k;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->n:Lcom/android/common/ui/k;

    new-instance v1, Lcn/nubia/camera/ag/f$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ag/f$2;-><init>(Lcn/nubia/camera/ag/f;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 156
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ag/f;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 159
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/ag/f;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ag/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method
