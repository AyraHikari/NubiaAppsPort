.class public Lcn/nubia/camera/panorama/m;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/panorama/o;

.field private l:Lcn/nubia/camera/panorama/n;

.field private m:Lcn/nubia/camera/panorama/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 34
    new-instance v0, Lcn/nubia/camera/panorama/o;

    invoke-direct {v0}, Lcn/nubia/camera/panorama/o;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 34
    new-instance p1, Lcn/nubia/camera/panorama/o;

    invoke-direct {p1}, Lcn/nubia/camera/panorama/o;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    return-void
.end method

.method public static m()Lcn/nubia/camera/panorama/m;
    .locals 2

    .line 131
    new-instance v0, Lcn/nubia/camera/panorama/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/panorama/m;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v1, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802bd

    .line 123
    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 124
    new-instance v2, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v2, Lcom/android/common/ui/g;

    const v3, 0x7f0902ba

    invoke-direct {v2, v3, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 101
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/panorama/m;->l:Lcn/nubia/camera/panorama/n;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcn/nubia/camera/panorama/n;

    .line 104
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/panorama/n;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/m;->l:Lcn/nubia/camera/panorama/n;

    .line 110
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    iget-object v8, p0, Lcn/nubia/camera/panorama/m;->l:Lcn/nubia/camera/panorama/n;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/panorama/o;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    invoke-virtual {p1}, Lcn/nubia/camera/panorama/o;->q()V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/panorama/m;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    invoke-static {v1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/o;)Lcn/nubia/camera/panorama/j;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    const v2, 0x7f09014e

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/panorama/m;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/panorama/m;->a:Lcn/nubia/camera/q/m;

    .line 54
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 56
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    invoke-virtual {p0}, Lcn/nubia/camera/panorama/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/panorama/m;->b:Lcn/nubia/camera/q/b;

    .line 57
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    iget-object v2, p0, Lcn/nubia/camera/panorama/m;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/q/g;)V

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    iget-object v2, p0, Lcn/nubia/camera/panorama/m;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/q/g;)V

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/q/g;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/panorama/m;->k:Lcn/nubia/camera/panorama/o;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/q/g;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    iget-object v1, p0, Lcn/nubia/camera/panorama/m;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/q/g;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/panorama/m;->m:Lcn/nubia/camera/panorama/j;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 87
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/m;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 79
    iget-boolean v0, p0, Lcn/nubia/camera/panorama/m;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
