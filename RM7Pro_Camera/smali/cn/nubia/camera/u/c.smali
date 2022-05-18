.class public Lcn/nubia/camera/u/c;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/u/c$a;
    }
.end annotation


# instance fields
.field private k:Lcn/nubia/camera/u/a;

.field private l:Lcn/nubia/camera/u/d;

.field private m:Lcn/nubia/camera/u/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcn/nubia/camera/u/c;->k:Lcn/nubia/camera/u/a;

    .line 46
    new-instance v0, Lcn/nubia/camera/u/d;

    invoke-direct {v0}, Lcn/nubia/camera/u/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/u/c;->l:Lcn/nubia/camera/u/d;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcn/nubia/camera/u/c;->k:Lcn/nubia/camera/u/a;

    .line 46
    new-instance p1, Lcn/nubia/camera/u/d;

    invoke-direct {p1}, Lcn/nubia/camera/u/d;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/u/c;->l:Lcn/nubia/camera/u/d;

    return-void
.end method

.method public static m()Lcn/nubia/camera/u/c;
    .locals 2

    .line 100
    new-instance v0, Lcn/nubia/camera/u/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/u/c;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/u/c;->l:Lcn/nubia/camera/u/d;

    new-instance v4, Lcn/nubia/camera/k/x;

    .line 118
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/u/d;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 120
    iget-object p1, p0, Lcn/nubia/camera/u/c;->l:Lcn/nubia/camera/u/d;

    invoke-virtual {p1}, Lcn/nubia/camera/u/d;->q()V

    return-void
.end method

.method protected c()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/u/c;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 61
    invoke-static {}, Lcn/nubia/camera/u/a;->c()Lcn/nubia/camera/u/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/u/c;->k:Lcn/nubia/camera/u/a;

    const v2, 0x7f09014e

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 64
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 94
    iget-object v1, p0, Lcn/nubia/camera/u/c;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/u/c;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/u/c;->k:Lcn/nubia/camera/u/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/u/c;->l:Lcn/nubia/camera/u/d;

    return-object v0
.end method

.method protected e_()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    return-void
.end method

.method protected i_()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 86
    iget-boolean v0, p0, Lcn/nubia/camera/u/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/u/c;->m:Lcn/nubia/camera/u/c$a;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0}, Lcn/nubia/camera/u/c$a;->b()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 76
    iget-boolean v0, p0, Lcn/nubia/camera/u/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/u/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lcn/nubia/camera/u/c$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/u/c$a;-><init>(Lcn/nubia/camera/u/c;)V

    iput-object v0, p0, Lcn/nubia/camera/u/c;->m:Lcn/nubia/camera/u/c$a;

    .line 79
    invoke-virtual {v0}, Lcn/nubia/camera/u/c$a;->a()V

    :cond_1
    return-void
.end method
