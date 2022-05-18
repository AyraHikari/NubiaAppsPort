.class public Lcn/nubia/camera/ay/d;
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

.field private l:Lcn/nubia/camera/ay/b;

.field private m:Lcn/nubia/camera/ay/f;

.field private n:Lcn/nubia/camera/k/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/ay/d;->k:Ljava/util/ArrayList;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    .line 37
    new-instance v1, Lcn/nubia/camera/ay/f;

    invoke-direct {v1}, Lcn/nubia/camera/ay/f;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/ay/d;->n:Lcn/nubia/camera/k/x;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/ay/d;->k:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    .line 37
    new-instance v0, Lcn/nubia/camera/ay/f;

    invoke-direct {v0}, Lcn/nubia/camera/ay/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/ay/d;->n:Lcn/nubia/camera/k/x;

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

    .line 97
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/ay/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 99
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/ay/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/ay/d;
    .locals 2

    .line 50
    new-instance v0, Lcn/nubia/camera/ay/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/ay/d;-><init>(I)V

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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-direct {p0, v0}, Lcn/nubia/camera/ay/d;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/ay/d;->n:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcn/nubia/camera/ay/e;

    .line 114
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 115
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/ay/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ay/d;->n:Lcn/nubia/camera/k/x;

    .line 120
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    iget-object v8, p0, Lcn/nubia/camera/ay/d;->n:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/ay/f;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 121
    iget-object p1, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    invoke-virtual {p1}, Lcn/nubia/camera/ay/f;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Lcn/nubia/camera/ay/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/ay/d;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ay/d;->k:Ljava/util/ArrayList;

    .line 56
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ay/d;->a:Lcn/nubia/camera/q/m;

    .line 57
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    invoke-static {}, Lcn/nubia/camera/ay/b;->i()Lcn/nubia/camera/ay/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    .line 60
    iget-object v2, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    invoke-virtual {p0}, Lcn/nubia/camera/ay/d;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/f;Lcn/nubia/k/a/a;)V

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    invoke-virtual {p0}, Lcn/nubia/camera/ay/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/ay/d;->b:Lcn/nubia/camera/q/b;

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 66
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    iget-object v2, p0, Lcn/nubia/camera/ay/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/q/g;)V

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    iget-object v2, p0, Lcn/nubia/camera/ay/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/q/g;)V

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/q/g;)V

    .line 70
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ay/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/ay/d;->m:Lcn/nubia/camera/ay/f;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/ay/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ay/b;->b(Lcn/nubia/camera/q/g;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    iget-object v1, p0, Lcn/nubia/camera/ay/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ay/b;->b(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/ay/d;->l:Lcn/nubia/camera/ay/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ay/b;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 93
    iget-boolean v0, p0, Lcn/nubia/camera/ay/d;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
