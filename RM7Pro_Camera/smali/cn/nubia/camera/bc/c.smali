.class public Lcn/nubia/camera/bc/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/bc/e;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/bc/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 32
    new-instance v0, Lcn/nubia/camera/bc/e;

    invoke-direct {v0}, Lcn/nubia/camera/bc/e;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/bc/c;->l:Ljava/util/ArrayList;

    .line 34
    iput-object v0, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 32
    new-instance p1, Lcn/nubia/camera/bc/e;

    invoke-direct {p1}, Lcn/nubia/camera/bc/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/bc/c;->l:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

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

    .line 105
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/bc/c;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 107
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/bc/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/bc/c;
    .locals 2

    .line 46
    new-instance v0, Lcn/nubia/camera/bc/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/bc/c;-><init>(I)V

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

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-direct {p0, v0}, Lcn/nubia/camera/bc/c;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    new-instance v4, Lcn/nubia/camera/bc/d;

    .line 80
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/bc/d;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/bc/e;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    invoke-virtual {p1}, Lcn/nubia/camera/bc/e;->q()V

    .line 83
    iget-object p1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1, p2}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/ad/a;)V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcn/nubia/camera/bc/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/bc/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bc/c;->l:Ljava/util/ArrayList;

    .line 54
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bc/c;->a:Lcn/nubia/camera/q/m;

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    invoke-static {}, Lcn/nubia/camera/bc/a;->d()Lcn/nubia/camera/bc/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    const v2, 0x7f09014e

    .line 58
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    invoke-virtual {p0}, Lcn/nubia/camera/bc/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/bc/c;->b:Lcn/nubia/camera/q/b;

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    iget-object v2, p0, Lcn/nubia/camera/bc/c;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/q/g;)V

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    iget-object v2, p0, Lcn/nubia/camera/bc/c;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/q/g;)V

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/q/g;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/bc/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bc/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/bc/c;->m:Lcn/nubia/camera/bc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/bc/a;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/bc/c;->k:Lcn/nubia/camera/bc/e;

    return-object v0
.end method
