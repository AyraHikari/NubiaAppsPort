.class public Lcn/nubia/camera/hitchcock/e;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/hitchcock/h;

.field private l:Lcn/nubia/camera/hitchcock/f;

.field private m:Lcn/nubia/camera/hitchcock/c;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcn/nubia/camera/extendedUI/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 33
    new-instance v0, Lcn/nubia/camera/hitchcock/h;

    invoke-direct {v0}, Lcn/nubia/camera/hitchcock/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/hitchcock/e;->n:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 33
    new-instance p1, Lcn/nubia/camera/hitchcock/h;

    invoke-direct {p1}, Lcn/nubia/camera/hitchcock/h;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/e;->n:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/e;)Lcn/nubia/camera/hitchcock/c;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    return-object p0
.end method

.method private ae()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/e;)Lcom/android/preference/c;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->u()Lcom/android/preference/c;

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

    .line 117
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 119
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
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

    .line 124
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    .line 125
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/hitchcock/e;
    .locals 2

    .line 48
    new-instance v0, Lcn/nubia/camera/hitchcock/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/hitchcock/e;-><init>(I)V

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

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/e;->c(Ljava/util/ArrayList;)V

    .line 112
    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/e;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/hitchcock/e$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/hitchcock/e$2;-><init>(Lcn/nubia/camera/hitchcock/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->l:Lcn/nubia/camera/hitchcock/f;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcn/nubia/camera/hitchcock/f;

    .line 96
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 97
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/hitchcock/f;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/e;->l:Lcn/nubia/camera/hitchcock/f;

    .line 100
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    iget-object v8, p0, Lcn/nubia/camera/hitchcock/e;->l:Lcn/nubia/camera/hitchcock/f;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/hitchcock/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    invoke-virtual {p1}, Lcn/nubia/camera/hitchcock/h;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/e;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/e;->n:Ljava/util/ArrayList;

    .line 56
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/e;->a:Lcn/nubia/camera/q/m;

    .line 57
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    invoke-static {v1, v2}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/hitchcock/h;)Lcn/nubia/camera/hitchcock/c;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    const v2, 0x7f09014e

    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/q/g;)V

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/q/g;)V

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/q/g;)V

    .line 69
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/e;->o()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->m:Lcn/nubia/camera/hitchcock/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/c;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->k:Lcn/nubia/camera/hitchcock/h;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 76
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/e;->ae()V

    return-void
.end method

.method protected i_()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_1

    const-string v0, "pref_hitchcock_mode_key"

    .line 134
    invoke-virtual {p0, v0}, Lcn/nubia/camera/hitchcock/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/hitchcock/e$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/hitchcock/e$1;-><init>(Lcn/nubia/camera/hitchcock/e;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/e;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/e;->o:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/hitchcock/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_1
    :goto_0
    return-void
.end method
