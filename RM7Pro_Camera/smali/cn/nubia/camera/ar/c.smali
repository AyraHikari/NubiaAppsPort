.class public Lcn/nubia/camera/ar/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/ar/a;

.field private l:Lcn/nubia/camera/ar/e;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 45
    new-instance v0, Lcn/nubia/camera/ar/e;

    invoke-direct {v0}, Lcn/nubia/camera/ar/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 45
    new-instance p1, Lcn/nubia/camera/ar/e;

    invoke-direct {p1}, Lcn/nubia/camera/ar/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

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

    .line 124
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 126
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
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

    .line 131
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/c;->n:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 133
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->n:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/ar/c;
    .locals 2

    .line 102
    new-instance v0, Lcn/nubia/camera/ar/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ar/c;-><init>(I)V

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

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ar/c;->a(Ljava/util/ArrayList;)V

    .line 117
    invoke-direct {p0, v0}, Lcn/nubia/camera/ar/c;->c(Ljava/util/ArrayList;)V

    .line 118
    invoke-direct {p0, v0}, Lcn/nubia/camera/ar/c;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->m:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcn/nubia/camera/ar/d;

    .line 140
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 141
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ar/d;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ar/c;->m:Lcn/nubia/camera/k/x;

    .line 146
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    iget-object v8, p0, Lcn/nubia/camera/ar/c;->m:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 147
    iget-object p1, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    invoke-virtual {p1}, Lcn/nubia/camera/ar/e;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/ar/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ar/c;->o:Ljava/util/ArrayList;

    .line 54
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    invoke-static {v1}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    const v2, 0x7f09014e

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->d(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ar/c;->b:Lcn/nubia/camera/q/b;

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    iget-object v2, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/q/g;)V

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    iget-object v2, p0, Lcn/nubia/camera/ar/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/q/g;)V

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ar/a;->a(Lcn/nubia/camera/q/g;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 108
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->l:Lcn/nubia/camera/ar/e;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a;->b(Lcn/nubia/camera/q/g;)V

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ar/a;->b(Lcn/nubia/camera/q/g;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->k:Lcn/nubia/camera/ar/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ar/a;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 6

    .line 152
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 155
    invoke-virtual {p0, v0}, Lcn/nubia/camera/ar/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 158
    iget-object v1, p0, Lcn/nubia/camera/ar/c;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/ar/c;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 159
    invoke-virtual {p0, v5}, Lcn/nubia/camera/ar/c;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ar/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 164
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/ar/c;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/ar/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 89
    iget-boolean v0, p0, Lcn/nubia/camera/ar/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcn/nubia/camera/ar/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
