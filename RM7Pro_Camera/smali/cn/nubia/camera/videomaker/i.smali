.class public Lcn/nubia/camera/videomaker/i;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/videomaker/f;

.field private l:Lcn/nubia/camera/videomaker/n;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/nubia/camera/k/x;

.field private o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    .line 41
    new-instance v0, Lcn/nubia/camera/videomaker/n;

    invoke-direct {v0}, Lcn/nubia/camera/videomaker/n;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 41
    new-instance p1, Lcn/nubia/camera/videomaker/n;

    invoke-direct {p1}, Lcn/nubia/camera/videomaker/n;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    return-void
.end method

.method public static m()Lcn/nubia/camera/videomaker/i;
    .locals 2

    .line 106
    new-instance v0, Lcn/nubia/camera/videomaker/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/videomaker/i;-><init>(I)V

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

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 157
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->n:Lcn/nubia/camera/k/x;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcn/nubia/camera/videomaker/l;

    .line 160
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 161
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/videomaker/l;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/i;->n:Lcn/nubia/camera/k/x;

    .line 166
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    iget-object v8, p0, Lcn/nubia/camera/videomaker/i;->n:Lcn/nubia/camera/k/x;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/videomaker/n;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 168
    iget-object p1, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/n;->q()V

    return-void
.end method

.method protected c()V
    .locals 9

    .line 48
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/i;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/i;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/i;->m:Ljava/util/ArrayList;

    .line 51
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/i;->a:Lcn/nubia/camera/q/m;

    .line 52
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-static {}, Lcn/nubia/camera/videomaker/f;->e()Lcn/nubia/camera/videomaker/f;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    const v2, 0x7f09014e

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    new-instance v1, Lcn/nubia/camera/videomaker/m;

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/i;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/a/a;

    invoke-virtual {v2}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    iget-object v8, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcn/nubia/camera/videomaker/m;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/videomaker/f;)V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/i;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/i;->b:Lcn/nubia/camera/q/b;

    .line 63
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/videomaker/f;->a(Lcn/nubia/camera/videomaker/n;)V

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/videomaker/f;->a(Lcn/nubia/camera/q/g;)V

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/videomaker/f;->a(Lcn/nubia/camera/q/g;)V

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/videomaker/f;->a(Lcn/nubia/camera/q/g;)V

    .line 71
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/f;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->d(Z)V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 112
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->l:Lcn/nubia/camera/videomaker/n;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/f;->b(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/f;->b(Lcn/nubia/camera/q/g;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/videomaker/f;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/camera/videomaker/f;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 102
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/i;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 96
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/i;->d:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/videomaker/i;->k:Lcn/nubia/camera/videomaker/f;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->w()Z

    move-result v0

    return v0
.end method
