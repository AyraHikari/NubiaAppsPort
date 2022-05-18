.class public Lcn/nubia/camera/l/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# static fields
.field private static q:Ljava/lang/String; = "DngMemberFragment"


# instance fields
.field private k:Lcn/nubia/camera/l/a;

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

.field private o:Lcn/nubia/camera/l/e;

.field private p:Lcn/nubia/camera/l/d;

.field private r:Lcn/nubia/camera/q/e;


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

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    .line 46
    iput-object v0, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcn/nubia/camera/l/e;

    invoke-direct {v0}, Lcn/nubia/camera/l/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    .line 49
    new-instance p1, Lcn/nubia/camera/l/e;

    invoke-direct {p1}, Lcn/nubia/camera/l/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/l/c;)Lcn/nubia/camera/l/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

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

    .line 108
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 110
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
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

    .line 116
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 118
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Lcn/nubia/camera/q/e;

    iget-object v0, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/l/c;->r:Lcn/nubia/camera/q/e;

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/l/c;->r:Lcn/nubia/camera/q/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

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

    .line 125
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/l/c;->n:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 127
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->n:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/l/c;
    .locals 2

    .line 64
    new-instance v0, Lcn/nubia/camera/l/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/l/c;-><init>(I)V

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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/c;->a(Ljava/util/ArrayList;)V

    .line 101
    invoke-direct {p0, v0}, Lcn/nubia/camera/l/c;->c(Ljava/util/ArrayList;)V

    .line 102
    invoke-direct {p0, v0}, Lcn/nubia/camera/l/c;->d(Ljava/util/ArrayList;)V

    .line 103
    invoke-direct {p0, v0}, Lcn/nubia/camera/l/c;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 139
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/l/c;->p:Lcn/nubia/camera/l/d;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/l/c;->p:Lcn/nubia/camera/l/d;

    invoke-virtual {v1}, Lcn/nubia/camera/l/d;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Lcn/nubia/camera/l/d;

    .line 142
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 143
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/l/d;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/l/c;->p:Lcn/nubia/camera/l/d;

    .line 148
    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    iget-object v8, p0, Lcn/nubia/camera/l/c;->p:Lcn/nubia/camera/l/d;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/l/e;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 149
    iget-object p1, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    invoke-virtual {p1}, Lcn/nubia/camera/l/e;->q()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcn/nubia/camera/l/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    .line 71
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    invoke-static {v1}, Lcn/nubia/camera/l/a;->a(Lcn/nubia/camera/l/e;)Lcn/nubia/camera/l/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    const v2, 0x7f09014e

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/w/d;->h(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/l/c;->b:Lcn/nubia/camera/q/b;

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/l/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    iget-object v2, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/l/a;->a(Lcn/nubia/camera/q/g;)V

    .line 81
    iget-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    iget-object v2, p0, Lcn/nubia/camera/l/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/l/a;->a(Lcn/nubia/camera/q/g;)V

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/l/a;->a(Lcn/nubia/camera/q/g;)V

    .line 84
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/l/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/l/c;->o:Lcn/nubia/camera/l/e;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a;->b(Lcn/nubia/camera/q/g;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a;->b(Lcn/nubia/camera/q/g;)V

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/l/c;->k:Lcn/nubia/camera/l/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/l/a;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 6

    .line 165
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 166
    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_selfie_flashmode_key"

    .line 170
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_flashmode_key"

    .line 172
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 176
    iget-object v1, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/l/c$1;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/l/c$1;-><init>(Lcn/nubia/camera/l/c;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 184
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->m:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/l/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/l/c;->r:Lcn/nubia/camera/q/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    :goto_1
    const-string v0, "pref_camera_delay_shoot_key"

    .line 188
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/c;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/l/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 191
    iget-object v1, p0, Lcn/nubia/camera/l/c;->n:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/l/c;->S()Lcn/nubia/camera/j/b;

    move-result-object v4

    const v5, 0x7f0f01c6

    .line 192
    invoke-virtual {p0, v5}, Lcn/nubia/camera/l/c;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 194
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->n:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/l/c;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 197
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/l/c;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/l/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_3
    const/4 v0, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lcn/nubia/camera/l/c;->a_(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 160
    iget-boolean v0, p0, Lcn/nubia/camera/l/c;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
