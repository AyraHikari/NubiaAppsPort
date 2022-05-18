.class public Lcn/nubia/camera/az/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# static fields
.field private static l:Ljava/lang/String; = "TriaxialMemberFragment"


# instance fields
.field k:Lcn/nubia/camera/az/a;

.field private m:Lcn/nubia/camera/az/e;

.field private n:Lcn/nubia/camera/k/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 40
    new-instance v0, Lcn/nubia/camera/az/e;

    invoke-direct {v0}, Lcn/nubia/camera/az/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 40
    new-instance p1, Lcn/nubia/camera/az/e;

    invoke-direct {p1}, Lcn/nubia/camera/az/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

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

    .line 137
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/az/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 139
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/az/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/az/c;
    .locals 2

    .line 103
    new-instance v0, Lcn/nubia/camera/az/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/az/c;-><init>(I)V

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

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p0, v0}, Lcn/nubia/camera/az/c;->a(Ljava/util/ArrayList;)V

    .line 132
    invoke-direct {p0, v0}, Lcn/nubia/camera/az/c;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/az/c;->n:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcn/nubia/camera/az/d;

    .line 47
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/az/d;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/az/c;->n:Lcn/nubia/camera/k/x;

    .line 53
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    iget-object v8, p0, Lcn/nubia/camera/az/c;->n:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/az/e;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 54
    iget-object p1, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    invoke-virtual {p1}, Lcn/nubia/camera/az/e;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/az/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/az/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/az/c;->a:Lcn/nubia/camera/q/m;

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/az/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-static {}, Lcn/nubia/camera/az/a;->d()Lcn/nubia/camera/az/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    .line 71
    iget-object v2, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    invoke-virtual {p0}, Lcn/nubia/camera/az/c;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/az/a;->a(Lcn/nubia/camera/az/e;Lcn/nubia/k/a/a;)V

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    const v2, 0x7f09014e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    invoke-virtual {p0}, Lcn/nubia/camera/az/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/az/c;->b:Lcn/nubia/camera/q/b;

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/az/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    iget-object v2, p0, Lcn/nubia/camera/az/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/az/a;->a(Lcn/nubia/camera/q/g;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    iget-object v2, p0, Lcn/nubia/camera/az/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/az/a;->a(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/az/a;->a(Lcn/nubia/camera/q/g;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 109
    iget-object v1, p0, Lcn/nubia/camera/az/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/az/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/az/c;->m:Lcn/nubia/camera/az/e;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/az/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/az/a;->b(Lcn/nubia/camera/q/g;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    iget-object v1, p0, Lcn/nubia/camera/az/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/az/a;->b(Lcn/nubia/camera/q/g;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/az/c;->k:Lcn/nubia/camera/az/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/az/a;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method
