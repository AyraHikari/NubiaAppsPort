.class public Lcn/nubia/camera/lightpainting/d;
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

.field private l:Lcn/nubia/camera/lightpainting/b;

.field private m:Lcn/nubia/camera/lightpainting/f;

.field private n:Lcn/nubia/camera/k/x;

.field private o:Lcom/android/common/ui/a;

.field private p:Lcom/android/common/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    .line 49
    new-instance v1, Lcn/nubia/camera/lightpainting/f;

    invoke-direct {v1}, Lcn/nubia/camera/lightpainting/f;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    .line 50
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->n:Lcn/nubia/camera/k/x;

    .line 51
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    .line 52
    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    .line 49
    new-instance v0, Lcn/nubia/camera/lightpainting/f;

    invoke-direct {v0}, Lcn/nubia/camera/lightpainting/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/d;->n:Lcn/nubia/camera/k/x;

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

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

    .line 111
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 113
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
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

    .line 117
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 121
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f090153

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

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

    .line 126
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 128
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/lightpainting/d;
    .locals 2

    .line 64
    new-instance v0, Lcn/nubia/camera/lightpainting/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/lightpainting/d;-><init>(I)V

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

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/d;->a(Ljava/util/ArrayList;)V

    .line 104
    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/d;->c(Ljava/util/ArrayList;)V

    .line 105
    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/d;->d(Ljava/util/ArrayList;)V

    .line 106
    invoke-direct {p0, v0}, Lcn/nubia/camera/lightpainting/d;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 152
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->n:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcn/nubia/camera/lightpainting/e;

    .line 155
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 156
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/lightpainting/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/lightpainting/d;->n:Lcn/nubia/camera/k/x;

    .line 161
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    iget-object v8, p0, Lcn/nubia/camera/lightpainting/d;->n:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 162
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/f;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 71
    invoke-direct {p0}, Lcn/nubia/camera/lightpainting/d;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    .line 72
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    .line 73
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/f;)Lcn/nubia/camera/lightpainting/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->j(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    .line 77
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/lightpainting/d;->b:Lcn/nubia/camera/q/b;

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/q/g;)V

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/q/g;)V

    .line 85
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/q/g;)V

    .line 87
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 145
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/b;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->m:Lcn/nubia/camera/lightpainting/f;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/q/g;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/q/g;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->l:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 6

    .line 172
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 173
    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    if-eqz v0, :cond_1

    const-string v0, "pref_lightdraw_flashmode_key"

    .line 176
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 179
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/lightpainting/d$1;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/lightpainting/d$1;-><init>(Lcn/nubia/camera/lightpainting/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->o:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/lightpainting/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_1
    :goto_0
    const-string v0, "pref_camera_delay_shoot_key"

    .line 191
    invoke-virtual {p0, v0}, Lcn/nubia/camera/lightpainting/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 193
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 194
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/lightpainting/d;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 195
    invoke-virtual {p0, v5}, Lcn/nubia/camera/lightpainting/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/lightpainting/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 200
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/d;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/d;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 140
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 134
    iget-boolean v0, p0, Lcn/nubia/camera/lightpainting/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
