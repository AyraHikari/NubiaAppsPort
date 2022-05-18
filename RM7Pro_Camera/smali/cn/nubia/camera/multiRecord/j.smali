.class public Lcn/nubia/camera/multiRecord/j;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/multiRecord/g;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/multiRecord/l;

.field private n:Lcn/nubia/camera/multiRecord/k;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcn/nubia/camera/multiRecord/d;

.field private q:Lcn/nubia/camera/multiRecord/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 31
    new-instance v0, Lcn/nubia/camera/multiRecord/l;

    invoke-direct {v0}, Lcn/nubia/camera/multiRecord/l;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 31
    new-instance p1, Lcn/nubia/camera/multiRecord/l;

    invoke-direct {p1}, Lcn/nubia/camera/multiRecord/l;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/multiRecord/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    .line 51
    new-instance p1, Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xb

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/multiRecord/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/j;->q:Lcn/nubia/camera/multiRecord/d;

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

    .line 142
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 144
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/multiRecord/j;
    .locals 2

    .line 55
    new-instance v0, Lcn/nubia/camera/multiRecord/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/multiRecord/j;-><init>(I)V

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

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-direct {p0, v0}, Lcn/nubia/camera/multiRecord/j;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    const-string p1, "MultiRecordMemberFragment"

    const-string v0, "onCameraInitDone"

    .line 115
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/j;->n:Lcn/nubia/camera/multiRecord/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/k;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 117
    :cond_0
    new-instance p1, Lcn/nubia/camera/multiRecord/k;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/k;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/j;->n:Lcn/nubia/camera/multiRecord/k;

    .line 119
    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    iget-object v8, p0, Lcn/nubia/camera/multiRecord/j;->n:Lcn/nubia/camera/multiRecord/k;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 124
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/multiRecord/l;->a(Ljava/util/ArrayList;)V

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/l;->q()V

    return-void
.end method

.method protected c()V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 85
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/j;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/j;->l:Ljava/util/ArrayList;

    .line 86
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/j;->a:Lcn/nubia/camera/q/m;

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 89
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    invoke-static {v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)Lcn/nubia/camera/multiRecord/g;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    .line 90
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/j;->q:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/d;Lcn/nubia/camera/multiRecord/d;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 93
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/multiRecord/j;->b:Lcn/nubia/camera/q/b;

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 96
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/q/g;)V

    .line 97
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/q/g;)V

    .line 98
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/q/g;)V

    .line 100
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/j;->m:Lcn/nubia/camera/multiRecord/l;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 2

    const-string v0, "more_setting_special"

    const-string v1, "pref_key_save_original_video_key"

    .line 150
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/j;->d:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->d()V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/j;->q:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->d()V

    .line 79
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 60
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 61
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/j;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->o:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    .line 65
    new-instance v0, Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/multiRecord/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/j;->q:Lcn/nubia/camera/multiRecord/d;

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->k:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/d;Lcn/nubia/camera/multiRecord/d;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->p:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/j;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/j;->q:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method
