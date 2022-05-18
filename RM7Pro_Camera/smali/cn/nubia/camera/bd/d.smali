.class public Lcn/nubia/camera/bd/d;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/String; = "ZoomBlurMemberFragment"


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

.field private n:Lcn/nubia/camera/bd/b;

.field private o:Lcn/nubia/camera/bd/g;

.field private p:Lcom/android/common/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcn/nubia/camera/bd/g;

    invoke-direct {v0}, Lcn/nubia/camera/bd/g;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    .line 53
    new-instance p1, Lcn/nubia/camera/bd/g;

    invoke-direct {p1}, Lcn/nubia/camera/bd/g;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/bd/d;)Lcom/android/preference/c;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

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

    .line 158
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 160
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
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

    .line 165
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/bd/d;->p:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 167
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->p:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/bd/d;
    .locals 2

    .line 66
    new-instance v0, Lcn/nubia/camera/bd/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/bd/d;-><init>(I)V

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

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bd/d;->a(Ljava/util/ArrayList;)V

    .line 152
    invoke-direct {p0, v0}, Lcn/nubia/camera/bd/d;->c(Ljava/util/ArrayList;)V

    .line 153
    invoke-direct {p0, v0}, Lcn/nubia/camera/bd/d;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/bd/d$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/bd/d$1;-><init>(Lcn/nubia/camera/bd/d;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 110
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->m:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcn/nubia/camera/bd/e;

    .line 113
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 114
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/bd/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/bd/d;->m:Lcn/nubia/camera/k/x;

    .line 119
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    iget-object v8, p0, Lcn/nubia/camera/bd/d;->m:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/bd/g;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    invoke-virtual {p1}, Lcn/nubia/camera/bd/g;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-direct {p0}, Lcn/nubia/camera/bd/d;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    .line 74
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-static {}, Lcn/nubia/camera/bd/b;->d()Lcn/nubia/camera/bd/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    const v2, 0x7f09014e

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    iget-object v2, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    iget-object v2, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/q/g;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    iget-object v2, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/q/g;)V

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/q/g;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 87
    invoke-direct {p0}, Lcn/nubia/camera/bd/d;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 103
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->o:Lcn/nubia/camera/bd/g;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bd/b;->b(Lcn/nubia/camera/q/g;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bd/b;->b(Lcn/nubia/camera/q/g;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->n:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/bd/b;->b(Lcn/nubia/camera/q/g;)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/bd/d;->ae()V

    return-void
.end method

.method protected i_()V
    .locals 6

    .line 126
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_delay_shoot_key"

    .line 129
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bd/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/bd/d;->p:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bd/d;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 133
    invoke-virtual {p0, v5}, Lcn/nubia/camera/bd/d;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->p:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bd/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 138
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/bd/d;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/bd/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 173
    iget-boolean v0, p0, Lcn/nubia/camera/bd/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 179
    iget-boolean v0, p0, Lcn/nubia/camera/bd/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
