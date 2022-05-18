.class public Lcn/nubia/camera/clone/g;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/clone/d$c;


# static fields
.field private static k:Ljava/lang/String; = "CloneMemberFragment"


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

.field private m:Lcn/nubia/camera/clone/d;

.field private n:Lcn/nubia/camera/clone/k;

.field private o:Lcn/nubia/camera/k/x;

.field private p:Lcom/android/common/ui/a;

.field private q:Lcom/android/common/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    .line 45
    new-instance v0, Lcn/nubia/camera/clone/k;

    invoke-direct {v0}, Lcn/nubia/camera/clone/k;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    .line 45
    new-instance p1, Lcn/nubia/camera/clone/k;

    invoke-direct {p1}, Lcn/nubia/camera/clone/k;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/g;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->o()V

    return-void
.end method

.method private ae()I
    .locals 4

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01c4

    .line 226
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_delay_shoot_key"

    .line 225
    invoke-virtual {v0, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private af()I
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01ba

    .line 239
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_clone_pictures_key"

    .line 238
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f01bc

    .line 241
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const v1, 0x7f0f01bd

    .line 243
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const v1, 0x7f0f01be

    .line 245
    invoke-virtual {p0, v1}, Lcn/nubia/camera/clone/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 112
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 114
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
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

    .line 119
    new-instance v0, Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    .line 120
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    const v2, 0x7f0900c0

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

    .line 124
    new-instance v0, Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    .line 125
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    const v2, 0x7f0900bb

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/common/ui/a;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/a;->setClickable(Z)V

    return-void
.end method

.method public static m()Lcn/nubia/camera/clone/g;
    .locals 2

    .line 60
    new-instance v0, Lcn/nubia/camera/clone/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/clone/g;-><init>(I)V

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

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/g;->a(Ljava/util/ArrayList;)V

    .line 105
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/g;->c(Ljava/util/ArrayList;)V

    .line 106
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/g;->d(Ljava/util/ArrayList;)V

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/g;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private o()V
    .locals 3

    .line 205
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->ae()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/g;->f(Z)V

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->ae()I

    move-result v1

    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->af()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/clone/d;->a(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 137
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->o:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcn/nubia/camera/clone/h;

    .line 140
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 141
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/clone/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/g;->o:Lcn/nubia/camera/k/x;

    .line 146
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    iget-object v8, p0, Lcn/nubia/camera/clone/g;->o:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/clone/k;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/k;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 71
    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    .line 73
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/g;->a:Lcn/nubia/camera/q/m;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 76
    invoke-static {}, Lcn/nubia/camera/clone/d;->d()Lcn/nubia/camera/clone/d;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    .line 77
    invoke-virtual {v1, p0}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/clone/d$c;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    iget-object v2, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/clone/k;Lcn/nubia/k/a/a;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    invoke-virtual {v1}, Lcn/nubia/camera/clone/d;->c()Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 82
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    iget-object v2, p0, Lcn/nubia/camera/clone/g;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/q/g;)V

    .line 85
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    iget-object v2, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/q/g;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/clone/d;->a(Lcn/nubia/camera/q/g;)V

    .line 88
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 130
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->d_()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->n:Lcn/nubia/camera/clone/k;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/d;->b(Lcn/nubia/camera/q/g;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/d;->b(Lcn/nubia/camera/q/g;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->m:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/clone/d;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public h_()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->o()V

    return-void
.end method

.method protected i_()V
    .locals 4

    .line 167
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 168
    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_clone_pictures_key"

    .line 171
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 174
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/clone/g$1;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/clone/g$1;-><init>(Lcn/nubia/camera/clone/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->p:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/clone/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    if-eqz v0, :cond_3

    const-string v0, "pref_camera_delay_shoot_key"

    .line 186
    invoke-virtual {p0, v0}, Lcn/nubia/camera/clone/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 188
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 189
    iget-object v1, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    new-instance v2, Lcn/nubia/camera/clone/g$2;

    invoke-virtual {p0}, Lcn/nubia/camera/clone/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/clone/g$2;-><init>(Lcn/nubia/camera/clone/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/clone/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/clone/g;->q:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/clone/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 200
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->ae()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/g;->f(Z)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/clone/g;->o()V

    return-void
.end method
