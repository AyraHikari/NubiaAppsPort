.class public abstract Lcn/nubia/camera/q/a;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a/c$a;
.implements Lcn/nubia/camera/ab/a;
.implements Lcn/nubia/camera/aq/d;


# instance fields
.field private a:Lcn/nubia/camera/q/f;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/q/k;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Lcn/nubia/camera/q/h;

.field protected h:I

.field private i:Lcn/nubia/camera/an/a$a;

.field private j:F

.field private k:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/al/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Lcn/nubia/camera/q/f;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/f;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    .line 52
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->e:Z

    .line 53
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->f:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    .line 57
    new-instance v1, Lcn/nubia/camera/q/k;

    invoke-direct {v1}, Lcn/nubia/camera/q/k;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/q/a;->c:Lcn/nubia/camera/q/k;

    .line 152
    new-instance v1, Lcn/nubia/camera/q/a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/a$1;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object v1, p0, Lcn/nubia/camera/q/a;->i:Lcn/nubia/camera/an/a$a;

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lcn/nubia/camera/q/a;->j:F

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Lcn/nubia/camera/q/a;->k:I

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    .line 351
    new-instance v1, Lcn/nubia/camera/q/a$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/a$2;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object v1, p0, Lcn/nubia/camera/q/a;->m:Lcn/nubia/camera/al/c$a;

    .line 69
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    new-instance p1, Lcn/nubia/camera/q/f;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/f;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object p1, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->d:Z

    .line 52
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->e:Z

    .line 53
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->f:Z

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    .line 57
    new-instance p1, Lcn/nubia/camera/q/k;

    invoke-direct {p1}, Lcn/nubia/camera/q/k;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/q/a;->c:Lcn/nubia/camera/q/k;

    .line 152
    new-instance p1, Lcn/nubia/camera/q/a$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/a$1;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object p1, p0, Lcn/nubia/camera/q/a;->i:Lcn/nubia/camera/an/a$a;

    const/4 p1, 0x0

    .line 191
    iput p1, p0, Lcn/nubia/camera/q/a;->j:F

    const/4 p1, 0x0

    .line 192
    iput p1, p0, Lcn/nubia/camera/q/a;->k:I

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Lcn/nubia/camera/q/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/a$2;-><init>(Lcn/nubia/camera/q/a;)V

    iput-object v0, p0, Lcn/nubia/camera/q/a;->m:Lcn/nubia/camera/al/c$a;

    .line 65
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->d:Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/a;)F
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/q/a;->j:F

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/q/a;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/q/a;->j:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/a;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/q/a;->k:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/q/a;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/q/a;->k:I

    return p0
.end method


# virtual methods
.method protected A()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcn/nubia/camera/q/a;->e:Z

    return v0
.end method

.method public E()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected H()V
    .locals 2

    const-string v0, "BaseFragment"

    const-string v1, "send screen switch message"

    .line 477
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.camera.action.SWITCH_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public I()V
    .locals 0

    return-void
.end method

.method protected a(IZ)V
    .locals 4

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/common/ui/d;

    .line 362
    iget-object v2, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 364
    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 366
    invoke-interface {v3, p1, p2}, Lcom/android/common/ui/d;->a(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 363
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(JJ)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/camera/q/f;->a(JJ)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/a;->c:Lcn/nubia/camera/q/k;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/q/k;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/camera/q/k$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/k;->a(Lcn/nubia/camera/q/k$a;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 0

    return-void
.end method

.method public final a(Lcn/nubia/camera/af/b;Lcom/android/preference/PreferenceGroup;)V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->i_()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/q/g;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/g;)V

    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 372
    :try_start_0
    instance-of v0, p1, Lcom/android/common/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/common/ui/d;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 377
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    return-object p1
.end method

.method public b(JJ)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/camera/q/f;->b(JJ)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 4

    .line 466
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    .line 467
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/camera/q/a;->h:I

    .line 468
    invoke-static {p1, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/q/g;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->b(Lcn/nubia/camera/q/g;)V

    return-void
.end method

.method protected declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 380
    :try_start_0
    instance-of v0, p1, Lcom/android/common/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/q/a;->l:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/common/ui/d;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 385
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b_(I)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/q/a$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/q/a$3;-><init>(Lcn/nubia/camera/q/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d(Ljava/lang/String;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract i_()V
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 75
    iget-boolean p1, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/q/a;->b:Lcn/nubia/camera/ad/a;

    .line 78
    iget-object p1, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/f;->a(Lcn/nubia/camera/q/g;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->f:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    iget-boolean p1, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcn/nubia/camera/q/a;->e:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 134
    iget-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/a;->c:Lcn/nubia/camera/q/k;

    invoke-virtual {v0}, Lcn/nubia/camera/q/k;->b()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 123
    iget-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/f;->b(Lcn/nubia/camera/q/g;)V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->f:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aq/a;->b(Lcn/nubia/camera/aq/d;)V

    .line 111
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/a;->m:Lcn/nubia/camera/al/c$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/c;->b(Lcn/nubia/camera/al/c$a;)V

    .line 112
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/a;->i:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->b(Lcn/nubia/camera/an/a$a;)V

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->y()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->e:Z

    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 92
    iget-boolean v0, p0, Lcn/nubia/camera/q/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/q/a;->e:Z

    .line 94
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->i()Lcn/nubia/camera/aq/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/aq/a;->a(Lcn/nubia/camera/aq/d;)V

    .line 95
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/a;->m:Lcn/nubia/camera/al/c$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/al/c;->a(Lcn/nubia/camera/al/c$a;)V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/a;->i:Lcn/nubia/camera/an/a$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;)V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->i_()V

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->d()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/q/a;->c:Lcn/nubia/camera/q/k;

    invoke-virtual {v0}, Lcn/nubia/camera/q/k;->a()V

    return-void
.end method

.method protected t()Lcom/android/preference/PreferenceGroup;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method protected u()Lcom/android/preference/c;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcn/nubia/camera/q/a;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    return-object v0
.end method

.method protected v()F
    .locals 1

    .line 194
    iget v0, p0, Lcn/nubia/camera/q/a;->j:F

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected y()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    invoke-virtual {v0}, Lcn/nubia/camera/q/f;->a()V

    return-void
.end method

.method protected z()Lcn/nubia/camera/q/f;
    .locals 1

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/q/a;->a:Lcn/nubia/camera/q/f;

    return-object v0
.end method
