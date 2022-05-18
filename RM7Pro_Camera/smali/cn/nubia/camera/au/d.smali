.class public Lcn/nubia/camera/au/d;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/d$a;
    }
.end annotation


# instance fields
.field k:Lcn/nubia/camera/v/d$a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/au/a;

.field private n:Lcn/nubia/camera/au/h;

.field private o:Lcn/nubia/camera/au/e;

.field private p:Lcn/nubia/camera/v/d;

.field private q:Landroid/os/HandlerThread;

.field private r:Landroid/os/Handler;

.field private s:Lcn/nubia/camera/extendedUI/g;

.field private t:Lcom/android/common/ui/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 175
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    .line 55
    new-instance v1, Lcn/nubia/camera/au/h;

    invoke-direct {v1}, Lcn/nubia/camera/au/h;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    .line 56
    iput-object v0, p0, Lcn/nubia/camera/au/d;->o:Lcn/nubia/camera/au/e;

    .line 267
    new-instance v0, Lcn/nubia/camera/au/d$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/d$4;-><init>(Lcn/nubia/camera/au/d;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->k:Lcn/nubia/camera/v/d$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 171
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    .line 55
    new-instance v0, Lcn/nubia/camera/au/h;

    invoke-direct {v0}, Lcn/nubia/camera/au/h;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/au/d;->o:Lcn/nubia/camera/au/e;

    .line 267
    new-instance p1, Lcn/nubia/camera/au/d$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/au/d$4;-><init>(Lcn/nubia/camera/au/d;)V

    iput-object p1, p0, Lcn/nubia/camera/au/d;->k:Lcn/nubia/camera/v/d$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/a;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/camera/au/d;->p:Lcn/nubia/camera/v/d;

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

    .line 114
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->s:Lcn/nubia/camera/extendedUI/g;

    .line 115
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->s:Lcn/nubia/camera/extendedUI/g;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/au/d;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/camera/au/d;->r:Landroid/os/Handler;

    return-object p0
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
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 120
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080146

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 122
    new-instance v1, Lcn/nubia/camera/au/d$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/au/d$1;-><init>(Lcn/nubia/camera/au/d;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f09012c

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/au/d;)Lcn/nubia/camera/au/h;
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    return-object p0
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

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    .line 134
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    const v1, 0x7f080162

    .line 135
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 136
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 143
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static m()Lcn/nubia/camera/au/d;
    .locals 2

    .line 179
    new-instance v0, Lcn/nubia/camera/au/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/au/d;-><init>(I)V

    return-object v0
.end method

.method private n()Ljava/util/ArrayList;
    .locals 3
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

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/d;->a(Ljava/util/ArrayList;)V

    .line 106
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/d;->c(Ljava/util/ArrayList;)V

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/d;->b(Ljava/util/ArrayList;)V

    .line 108
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/d;->d(Ljava/util/ArrayList;)V

    .line 109
    invoke-direct {p0, v0}, Lcn/nubia/camera/au/d;->e(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 10

    .line 226
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/au/d;->o:Lcn/nubia/camera/au/e;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcn/nubia/camera/au/e;

    .line 229
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/nubia/camera/au/e;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->o:Lcn/nubia/camera/au/e;

    .line 235
    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    iget-object v8, p0, Lcn/nubia/camera/au/d;->o:Lcn/nubia/camera/au/e;

    move-object v5, p2

    move-object v6, p4

    move-object v7, p5

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 236
    iget-object p1, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    invoke-virtual {p1}, Lcn/nubia/camera/au/h;->q()V

    return-void
.end method

.method protected c()V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/au/d;->n()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    .line 67
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/d;->a:Lcn/nubia/camera/q/m;

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/au/d;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-static {}, Lcn/nubia/camera/au/a;->d()Lcn/nubia/camera/au/a;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    .line 71
    iget-object v2, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {v3}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/h;Lcn/nubia/k/a/a;)V

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->ab:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/w/d;->f(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/w/d;->e(Lcn/nubia/camera/ad/a;)Ljava/util/List;

    move-result-object v1

    .line 73
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Z)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    const v1, 0x7f09014d

    .line 74
    iget-object v2, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const v1, 0x7f09014e

    .line 75
    iget-object v2, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    iget-object v2, p0, Lcn/nubia/camera/au/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/q/g;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    iget-object v2, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/q/g;)V

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/q/g;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 96
    iget-object v1, p0, Lcn/nubia/camera/au/d;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public d_()Z
    .locals 1

    .line 241
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    .line 242
    iget-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->d_()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/au/d;->n:Lcn/nubia/camera/au/h;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcn/nubia/camera/au/d;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/q/g;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/q/g;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/q/g;)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/b;->c(Z)V

    .line 264
    iget-object p1, p0, Lcn/nubia/camera/au/d;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->M()V

    return-void
.end method

.method protected i_()V
    .locals 4

    .line 185
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "pref_star_track_estimation_key"

    .line 188
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcn/nubia/camera/au/d;->s:Lcn/nubia/camera/extendedUI/g;

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1, v0}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 191
    iget-object v1, p0, Lcn/nubia/camera/au/d;->s:Lcn/nubia/camera/extendedUI/g;

    new-instance v2, Lcn/nubia/camera/au/d$2;

    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/au/d$2;-><init>(Lcn/nubia/camera/au/d;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->s:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/au/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 205
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    if-eqz v0, :cond_3

    const-string v0, "pref_silhouette_key"

    .line 206
    invoke-virtual {p0, v0}, Lcn/nubia/camera/au/d;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 209
    iget-object v1, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/au/d$3;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/au/d$3;-><init>(Lcn/nubia/camera/au/d;Lcom/android/preference/IconListPreference;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/au/d;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->t:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/au/d;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 163
    iget-boolean v0, p0, Lcn/nubia/camera/au/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarTrackMemberFragment"

    const-string v1, "onPause"

    .line 164
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/au/d;->p:Lcn/nubia/camera/v/d;

    invoke-virtual {v0}, Lcn/nubia/camera/v/d;->a()V

    .line 166
    iget-object v0, p0, Lcn/nubia/camera/au/d;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 150
    iget-boolean v0, p0, Lcn/nubia/camera/au/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StarTrackMemberFragment"

    const-string v1, "onResume"

    .line 151
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Preview_Y_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->q:Landroid/os/HandlerThread;

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->r:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcn/nubia/camera/v/d;

    const/high16 v1, 0x3e800000    # 0.25f

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/v/d;-><init>(FLcn/nubia/camera/v/b$a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/d;->p:Lcn/nubia/camera/v/d;

    .line 156
    invoke-virtual {p0}, Lcn/nubia/camera/au/d;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/d;->p:Lcn/nubia/camera/v/d;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/au/d;->p:Lcn/nubia/camera/v/d;

    iget-object v1, p0, Lcn/nubia/camera/au/d;->k:Lcn/nubia/camera/v/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/d;->b(Lcn/nubia/camera/v/d$a;)V

    return-void
.end method

.method public w()Z
    .locals 1

    .line 255
    invoke-super {p0}, Lcn/nubia/camera/q/i;->d_()Z

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/au/d;->m:Lcn/nubia/camera/au/a;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->d_()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
