.class public abstract Lcn/nubia/camera/q/i;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/d;
.implements Lcn/nubia/camera/n/b$e;
.implements Lcn/nubia/camera/q/g;
.implements Lcn/nubia/camera/q/j$b;
.implements Lcn/nubia/camera/three_a/b/a$a;
.implements Lcn/nubia/camera/three_a/ui/h$a;
.implements Lcn/nubia/camera/three_a/ui/h$f;
.implements Lcn/nubia/camera/w/a$b;
.implements Lcn/nubia/camera/w/a$c;
.implements Lcn/nubia/camera/z/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/i$a;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/zoom/c;

.field private B:Landroid/view/View;

.field private C:Lcn/nubia/camera/am/a;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcn/nubia/camera/zoom/b;

.field private I:Landroid/widget/TextView;

.field private J:Lcn/nubia/camera/k/ab$a;

.field private K:Lcn/nubia/camera/debugmode/b;

.field private L:Lcn/nubia/camera/three_a/ui/f;

.field private M:Landroid/os/Handler;

.field protected a:Lcn/nubia/camera/q/m;

.field protected b:Lcn/nubia/camera/q/b;

.field protected c:Lcn/nubia/camera/n/b;

.field protected i:Z

.field protected j:Z

.field private k:Landroid/widget/FrameLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcn/nubia/camera/three_a/ui/h;

.field private n:Lcn/nubia/camera/q/j;

.field private o:Lcn/nubia/camera/facedetection/FaceView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/ImageView;

.field private s:Z

.field private t:Lcn/nubia/camera/z/b;

.field private u:Lcn/nubia/camera/j/b;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Lcn/nubia/camera/n/e;

.field private x:Lcn/nubia/camera/facedetection/a;

.field private y:Z

.field private z:Lcn/nubia/camera/h/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    .line 124
    iput-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    .line 128
    iput-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    .line 129
    iput-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    .line 130
    iput-object v0, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    .line 131
    iput-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    .line 132
    iput-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    .line 133
    iput-object v0, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->s:Z

    .line 137
    new-instance v1, Lcn/nubia/camera/j/b;

    invoke-direct {v1}, Lcn/nubia/camera/j/b;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->y:Z

    .line 145
    iput-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    .line 146
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->i:Z

    .line 150
    iput-object v0, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    .line 656
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->D:Z

    .line 657
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->E:Z

    .line 658
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->F:Z

    .line 1136
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->G:Z

    .line 1412
    new-instance v1, Lcn/nubia/camera/q/i$3;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/i$3;-><init>(Lcn/nubia/camera/q/i;)V

    iput-object v1, p0, Lcn/nubia/camera/q/i;->H:Lcn/nubia/camera/zoom/b;

    .line 1675
    iput-object v0, p0, Lcn/nubia/camera/q/i;->I:Landroid/widget/TextView;

    .line 1676
    iput-object v0, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    .line 1751
    iput-object v0, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    .line 1851
    new-instance v0, Lcn/nubia/camera/q/i$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/i$6;-><init>(Lcn/nubia/camera/q/i;)V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 162
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    .line 128
    iput-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    .line 129
    iput-object p1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    .line 130
    iput-object p1, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    .line 131
    iput-object p1, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    .line 133
    iput-object p1, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->s:Z

    .line 137
    new-instance v0, Lcn/nubia/camera/j/b;

    invoke-direct {v0}, Lcn/nubia/camera/j/b;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->y:Z

    .line 145
    iput-object p1, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    .line 146
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->i:Z

    .line 150
    iput-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    .line 656
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->D:Z

    .line 657
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->E:Z

    .line 658
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    .line 1136
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->G:Z

    .line 1412
    new-instance v0, Lcn/nubia/camera/q/i$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/i$3;-><init>(Lcn/nubia/camera/q/i;)V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->H:Lcn/nubia/camera/zoom/b;

    .line 1675
    iput-object p1, p0, Lcn/nubia/camera/q/i;->I:Landroid/widget/TextView;

    .line 1676
    iput-object p1, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    .line 1751
    iput-object p1, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    .line 1851
    new-instance p1, Lcn/nubia/camera/q/i$6;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/i$6;-><init>(Lcn/nubia/camera/q/i;)V

    iput-object p1, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/q/j;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    return-object p0
.end method

.method private a(Lcn/nubia/camera/ad/a;)V
    .locals 5

    .line 444
    iget-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    if-nez v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->r()Landroid/graphics/Rect;

    move-result-object v1

    .line 447
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcn/nubia/camera/h/b;->a(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 448
    new-instance v3, Lcn/nubia/camera/h/b;

    .line 449
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    invoke-direct {v3, v4, v0, v2, v1}, Lcn/nubia/camera/h/b;-><init>(Landroid/content/Context;Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    .line 450
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 451
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    :cond_0
    return-void
.end method

.method private a(Lcn/nubia/camera/ad/a;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 369
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/ad/a;)V

    .line 374
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    .line 375
    iget-object p2, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/h/b;->a(Landroid/util/Size;)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ae()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(II)Z
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/an/a;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 790
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f0222

    .line 791
    invoke-virtual {p0, v2}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_capture_focus_key"

    .line 790
    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 791
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 792
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result v2

    .line 793
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v3

    .line 794
    invoke-static {v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->e()Z

    .line 797
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(II)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 1643
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private ae()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 458
    iget-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    invoke-virtual {v0}, Lcn/nubia/camera/h/b;->a()V

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcn/nubia/camera/q/i;->z:Lcn/nubia/camera/h/b;

    :cond_0
    return-void
.end method

.method private af()V
    .locals 5

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "pref_camera_facedetection_key"

    .line 465
    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    const-string v3, "pref_camera_front_smileshoot_key"

    .line 466
    invoke-virtual {v0, v3}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-ne v3, v4, :cond_2

    .line 468
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    .line 469
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->N:Lcn/nubia/camera/af/a;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    .line 472
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/i;->x:Lcn/nubia/camera/facedetection/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/k;)V

    :cond_6
    return-void
.end method

.method private ag()V
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/k;)V

    return-void
.end method

.method private ah()V
    .locals 5

    .line 499
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->d()V

    .line 500
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 501
    instance-of v4, v3, Lcn/nubia/camera/z/e;

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    check-cast v3, Lcn/nubia/camera/z/e;

    invoke-virtual {v4, v3}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/e;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    :cond_1
    instance-of v0, p0, Lcn/nubia/camera/z/e;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/e;)V

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/camera/z/e;

    if-eqz v0, :cond_3

    .line 509
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/z/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/z/e;)V

    :cond_3
    return-void
.end method

.method private ai()V
    .locals 5

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {v0}, Lcn/nubia/camera/z/b;->e()V

    .line 515
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 516
    instance-of v4, v3, Lcn/nubia/camera/z/e;

    if-eqz v4, :cond_0

    .line 517
    iget-object v4, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    check-cast v3, Lcn/nubia/camera/z/e;

    invoke-virtual {v4, v3}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/e;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    :cond_1
    instance-of v0, p0, Lcn/nubia/camera/z/e;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/e;)V

    .line 523
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcn/nubia/camera/z/e;

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/z/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/b;->b(Lcn/nubia/camera/z/e;)V

    :cond_3
    return-void
.end method

.method private aj()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {v0}, Lcn/nubia/camera/j/b;->c()V

    return-void
.end method

.method private ak()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {v0}, Lcn/nubia/camera/j/b;->d()V

    return-void
.end method

.method private al()V
    .locals 3

    .line 558
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01d0

    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_facedetection_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 559
    iget-object v1, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/camera/facedetection/FaceView;->setState(Z)V

    return-void
.end method

.method private am()V
    .locals 2

    .line 582
    invoke-static {}, Lcn/nubia/camera/zoom/e;->a()V

    .line 583
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lcn/nubia/camera/q/i;->H:Lcn/nubia/camera/zoom/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/b;)V

    .line 585
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->g()V

    :cond_0
    return-void
.end method

.method private an()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcn/nubia/camera/q/i;->H:Lcn/nubia/camera/zoom/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/b;)V

    .line 592
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->h()V

    :cond_0
    return-void
.end method

.method private ao()V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcn/nubia/camera/q/i;->l:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcn/nubia/camera/q/i;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1172
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1174
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ba/f;->c()V

    const/4 v1, 0x1

    .line 1178
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->y:Z

    .line 1179
    new-instance v1, Lcn/nubia/camera/k/ad;

    invoke-direct {v1}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 1180
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1181
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method private ap()V
    .locals 2

    .line 1186
    iget-object v0, p0, Lcn/nubia/camera/q/i;->l:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcn/nubia/camera/q/i;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1191
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1195
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->y:Z

    if-eqz v0, :cond_0

    .line 1196
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->y:Z

    .line 1197
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    :cond_0
    return-void
.end method

.method private aq()V
    .locals 2

    .line 1203
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->f(Landroid/content/Context;)Z

    move-result v0

    .line 1204
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object v1

    invoke-static {v1}, Lcom/android/preference/RecordLocationPreference;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1207
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/q/i;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/e/a;->a(Z)V

    :goto_0
    return-void
.end method

.method private ar()V
    .locals 4

    .line 1235
    iget-object v0, p0, Lcn/nubia/camera/q/i;->C:Lcn/nubia/camera/am/a;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1236
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01ab

    .line 1237
    invoke-virtual {p0, v2}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f01a9

    .line 1238
    invoke-virtual {p0, v3}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0f012e

    invoke-virtual {p0, v3}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->a(Ljava/lang/String;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f01aa

    new-instance v3, Lcn/nubia/camera/q/i$2;

    invoke-direct {v3, p0}, Lcn/nubia/camera/q/i$2;-><init>(Lcn/nubia/camera/q/i;)V

    .line 1239
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x7f0f0036

    new-instance v3, Lcn/nubia/camera/q/i$1;

    invoke-direct {v3, p0}, Lcn/nubia/camera/q/i$1;-><init>(Lcn/nubia/camera/q/i;)V

    .line 1249
    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const/4 v2, 0x0

    .line 1257
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 1258
    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    const v2, 0x800013

    .line 1259
    invoke-virtual {v0, v2}, Lcn/nubia/camera/am/a$a;->b(I)Lcn/nubia/camera/am/a$a;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/q/i;->C:Lcn/nubia/camera/am/a;

    .line 1262
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/i;->C:Lcn/nubia/camera/am/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/am/a;->setCancelable(Z)V

    .line 1263
    iget-object v0, p0, Lcn/nubia/camera/q/i;->C:Lcn/nubia/camera/am/a;

    invoke-virtual {v0}, Lcn/nubia/camera/am/a;->show()V

    return-void
.end method

.method private as()V
    .locals 5

    .line 1731
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 1732
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/af/a;)V

    .line 1733
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    .line 1734
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    sget-object v3, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object v2

    .line 1733
    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    const/16 v0, 0x8

    .line 1735
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->b(I)V

    :cond_0
    return-void
.end method

.method private at()V
    .locals 3

    .line 1753
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    new-instance v0, Lcn/nubia/camera/debugmode/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/debugmode/b;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/q/i;)Landroid/os/Handler;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 3

    .line 1488
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/w/b;->d:Lcn/nubia/camera/w/b;

    if-ne p1, v0, :cond_1

    .line 1489
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->d(Z)V

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object p1

    const-string v0, "pref_manual_cct"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_2

    .line 1493
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/three_a/ui/h;->e(Z)V

    goto :goto_0

    .line 1495
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/three_a/ui/h;->e(Z)V

    .line 1497
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Y()V

    return-void
.end method

.method private b(ZZ)V
    .locals 3

    .line 1424
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1427
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p2

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const p2, 0x7f0f03bd

    .line 1430
    invoke-virtual {p0, p2}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f027d

    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_peaking_focus_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1432
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1433
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1435
    iget-object p1, p0, Lcn/nubia/camera/q/i;->w:Lcn/nubia/camera/n/e;

    if-nez p1, :cond_3

    .line 1436
    new-instance p1, Lcn/nubia/camera/n/e;

    invoke-direct {p1}, Lcn/nubia/camera/n/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/q/i;->w:Lcn/nubia/camera/n/e;

    .line 1437
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/q/i;->w:Lcn/nubia/camera/n/e;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    goto :goto_0

    .line 1440
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/i;->w:Lcn/nubia/camera/n/e;

    if-eqz p1, :cond_3

    .line 1441
    invoke-virtual {p1}, Lcn/nubia/camera/n/e;->a()V

    const/4 p1, 0x0

    .line 1442
    iput-object p1, p0, Lcn/nubia/camera/q/i;->w:Lcn/nubia/camera/n/e;

    :cond_3
    :goto_0
    return-void
.end method

.method private c(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 1368
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1369
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 1370
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1371
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 1372
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 1373
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method static synthetic c(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->as()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/q/i;)Landroid/widget/TextView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->I:Landroid/widget/TextView;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09014e

    .line 481
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/i;->k:Landroid/widget/FrameLayout;

    const v0, 0x7f09014f

    .line 482
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    const v0, 0x7f090115

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/i;->l:Landroid/widget/RelativeLayout;

    .line 484
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->g(Landroid/view/View;)V

    .line 485
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->i(Landroid/view/View;)V

    .line 486
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->k(Landroid/view/View;)V

    .line 487
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->l(Landroid/view/View;)V

    .line 489
    iget-object p1, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/zoom/c;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 4

    .line 493
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 494
    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    const v0, 0x7f09014e

    goto :goto_0

    :cond_0
    const v0, 0x7f09014d

    .line 495
    :goto_0
    new-instance v1, Lcn/nubia/camera/z/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v3, p1}, Lcn/nubia/camera/z/b;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/facedetection/FaceView;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    const v2, 0x7f090115

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/ad/a;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/q/i;)Lcn/nubia/camera/three_a/ui/h;
    .locals 0

    .line 104
    iget-object p0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090168

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f090167

    .line 542
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09014a

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    const v0, 0x7f090149

    .line 547
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/facedetection/FaceView;

    iput-object p1, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    .line 548
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->G()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/facedetection/FaceView;->a(Ljava/lang/String;I)V

    .line 550
    iget-object p1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz p1, :cond_0

    const-string v0, "pref_camera_facedetection_key"

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcn/nubia/camera/q/i;->x:Lcn/nubia/camera/facedetection/a;

    iget-object v0, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 554
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->al()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->U:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 566
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->V:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 567
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 568
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 570
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance v0, Lcn/nubia/camera/zoom/c;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/camera/zoom/c;-><init>(Lcn/nubia/camera/ad/a;Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    .line 577
    iget-object p1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/zoom/c;)V

    .line 578
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/zoom/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090323

    .line 928
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 930
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    .line 931
    new-instance v6, Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/three_a/ui/h;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v6, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    .line 932
    new-instance v0, Lcn/nubia/camera/three_a/b/a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcn/nubia/camera/three_a/b/a;-><init>(Lcn/nubia/camera/k/ah;Landroid/hardware/camera2/CameraCharacteristics;Lcn/nubia/camera/ad/a;)V

    .line 933
    new-instance p1, Lcn/nubia/camera/three_a/a/b;

    invoke-direct {p1, v0}, Lcn/nubia/camera/three_a/a/b;-><init>(Lcn/nubia/camera/three_a/a/a;)V

    .line 934
    iget-object v1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$g;)V

    .line 935
    invoke-virtual {v0, p0}, Lcn/nubia/camera/three_a/b/a;->a(Lcn/nubia/camera/three_a/b/a$a;)V

    .line 936
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$a;)V

    .line 937
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/three_a/ui/h;->a(Lcn/nubia/camera/three_a/ui/h$f;)V

    .line 939
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    .line 940
    iget-object v1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 941
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/three_a/b/a;)V

    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 2

    const-string v0, "hal_effect_debug"

    const/4 v1, 0x3

    .line 1681
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09012e

    .line 1684
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1685
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f09012d

    .line 1686
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/q/i;->I:Landroid/widget/TextView;

    .line 1688
    new-instance p1, Lcn/nubia/camera/q/i$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/q/i$4;-><init>(Lcn/nubia/camera/q/i;)V

    iput-object p1, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    .line 1700
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1701
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    :cond_1
    return-void
.end method

.method private l(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09022b

    .line 1706
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    const v0, 0x7f09022a

    .line 1707
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080314

    .line 1708
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1709
    iget-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0020

    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0f0034

    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    new-instance v0, Lcn/nubia/camera/q/i$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/q/i$5;-><init>(Lcn/nubia/camera/q/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1722
    iget-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1723
    iget-object p1, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method private m()V
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 246
    instance-of v4, v3, Lcn/nubia/camera/j/d;

    if-eqz v4, :cond_0

    .line 247
    iget-object v4, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    check-cast v3, Lcn/nubia/camera/j/d;

    invoke-virtual {v4, v3}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/d;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_1
    instance-of v0, p0, Lcn/nubia/camera/j/d;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/d;)V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 260
    instance-of v4, v3, Lcn/nubia/camera/j/d;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    check-cast v3, Lcn/nubia/camera/j/d;

    invoke-virtual {v4, v3}, Lcn/nubia/camera/j/b;->b(Lcn/nubia/camera/j/d;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_2
    instance-of v0, p0, Lcn/nubia/camera/j/d;

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/j/b;->b(Lcn/nubia/camera/j/d;)V

    :cond_3
    return-void
.end method

.method private o()V
    .locals 6

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 272
    instance-of v4, v3, Lcn/nubia/camera/w/a$c;

    if-eqz v4, :cond_0

    .line 273
    iget-object v4, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    move-object v5, v3

    check-cast v5, Lcn/nubia/camera/w/a$c;

    invoke-virtual {v4, v5}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/w/a$c;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 275
    instance-of v4, v3, Lcn/nubia/camera/w/a$a;

    if-eqz v4, :cond_1

    .line 276
    iget-object v4, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    move-object v5, v3

    check-cast v5, Lcn/nubia/camera/w/a$a;

    invoke-virtual {v4, v5}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/w/a$a;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 278
    instance-of v4, v3, Lcn/nubia/camera/w/a$b;

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    check-cast v3, Lcn/nubia/camera/w/a$b;

    invoke-virtual {v4, v3}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/w/a$b;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/w/a$c;)V

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/w/a$b;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public B()V
    .locals 8

    .line 957
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 964
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 965
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 966
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/j;->a(Z)V

    .line 967
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    .line 969
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 970
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "setting"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 972
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/16 v2, 0x8

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "setting"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ab()V

    :cond_4
    :goto_0
    return-void
.end method

.method public C()V
    .locals 1

    .line 1546
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->e()V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 5

    .line 1535
    invoke-super {p0}, Lcn/nubia/camera/q/a;->D()Z

    move-result v0

    .line 1536
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1538
    invoke-virtual {v4}, Lcn/nubia/camera/q/a;->D()Z

    move-result v4

    or-int/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public E()V
    .locals 4

    .line 1573
    invoke-super {p0}, Lcn/nubia/camera/q/a;->E()V

    .line 1574
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->j()V

    .line 1575
    iget-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 1580
    invoke-virtual {v3}, Lcn/nubia/camera/q/a;->E()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public F()V
    .locals 4

    .line 1648
    invoke-super {p0}, Lcn/nubia/camera/q/a;->F()V

    .line 1649
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1651
    invoke-virtual {v3}, Lcn/nubia/camera/q/a;->F()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public G()Z
    .locals 1

    .line 1658
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public I()V
    .locals 0

    return-void
.end method

.method protected J()Z
    .locals 3

    .line 1024
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0209

    .line 1025
    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_shutter_sound_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1026
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public K()V
    .locals 1

    .line 1091
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->a()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    if-nez v0, :cond_1

    return-void

    .line 1097
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->c()V

    .line 1098
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->d()V

    .line 1099
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->e()V

    return-void
.end method

.method public L()Z
    .locals 1

    .line 1133
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->G:Z

    return v0
.end method

.method public M()V
    .locals 7

    .line 1323
    iget-object v0, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->v()F

    move-result v0

    const/4 v1, 0x0

    sub-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "pref_camera_grid_key"

    .line 1333
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    .line 1335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1336
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v3, :cond_6

    .line 1337
    invoke-virtual {v3, v0}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1338
    iget-object v0, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1339
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->s:Z

    if-eqz v0, :cond_8

    const-string v0, "style1"

    .line 1341
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1342
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->v()F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    if-eqz v0, :cond_1

    const v0, 0x7f08010d

    goto :goto_0

    :cond_1
    const v0, 0x7f080110

    goto :goto_0

    .line 1345
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->v()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    cmpg-double v1, v3, v5

    if-gez v1, :cond_4

    if-eqz v0, :cond_3

    const v0, 0x7f08010e

    goto :goto_0

    :cond_3
    const v0, 0x7f080111

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const v0, 0x7f08010f

    goto :goto_0

    :cond_5
    const v0, 0x7f080112

    .line 1352
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/i;->c(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1353
    iput-boolean v2, p0, Lcn/nubia/camera/q/i;->s:Z

    goto :goto_1

    .line 1355
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1356
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1357
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public N()V
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->J()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->a(Z)V

    .line 1068
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->al()V

    .line 1069
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->K()V

    .line 1070
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Y()V

    .line 1071
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->K()Lcn/nubia/camera/ap/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ap/b;->c()V

    .line 1072
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->M()V

    .line 1073
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->O()V

    .line 1074
    invoke-virtual {p0, v2}, Lcn/nubia/camera/q/i;->a_(Z)V

    return-void
.end method

.method public O()V
    .locals 3

    .line 1381
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v1, :cond_0

    const-string v2, "pref_camera_gradienter_key"

    .line 1383
    invoke-virtual {v0, v2}, Lcn/nubia/camera/q/j;->a(Ljava/lang/String;)Z

    move-result v0

    .line 1382
    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public P()Lcn/nubia/camera/z/b;
    .locals 1

    .line 1484
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    return-object v0
.end method

.method public Q()Lcn/nubia/camera/three_a/ui/h;
    .locals 1

    .line 1501
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    return-object v0
.end method

.method public R()Lcn/nubia/camera/n/b;
    .locals 1

    .line 1505
    iget-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    return-object v0
.end method

.method public S()Lcn/nubia/camera/j/b;
    .locals 1

    .line 1509
    iget-object v0, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    return-object v0
.end method

.method public T()Lcn/nubia/camera/facedetection/a;
    .locals 1

    .line 1513
    iget-object v0, p0, Lcn/nubia/camera/q/i;->x:Lcn/nubia/camera/facedetection/a;

    return-object v0
.end method

.method public U()Z
    .locals 1

    .line 1586
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->y:Z

    return v0
.end method

.method public V()Z
    .locals 1

    .line 1590
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->m()Z

    move-result v0

    return v0
.end method

.method public W()V
    .locals 1

    .line 1666
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->L()V

    :cond_0
    return-void
.end method

.method public X()Lcn/nubia/camera/zoom/c;
    .locals 1

    .line 1777
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    return-object v0
.end method

.method protected Y()V
    .locals 4

    .line 1788
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    .line 1789
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    .line 1790
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcn/nubia/camera/q/i;->L:Lcn/nubia/camera/three_a/ui/f;

    if-nez v0, :cond_1

    .line 1792
    new-instance v0, Lcn/nubia/camera/three_a/ui/f;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/three_a/ui/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/facedetection/a;)V

    iput-object v0, p0, Lcn/nubia/camera/q/i;->L:Lcn/nubia/camera/three_a/ui/f;

    .line 1794
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/i;->L:Lcn/nubia/camera/three_a/ui/f;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/f;->a()V

    :cond_2
    return-void
.end method

.method protected Z()V
    .locals 1

    .line 1799
    iget-object v0, p0, Lcn/nubia/camera/q/i;->L:Lcn/nubia/camera/three_a/ui/f;

    if-eqz v0, :cond_0

    .line 1800
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/f;->b()V

    :cond_0
    return-void
.end method

.method protected a(IZ)V
    .locals 0

    .line 1611
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
.end method

.method public a(Lcn/nubia/camera/ab/a$a;)V
    .locals 4

    .line 1553
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    .line 1554
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1556
    invoke-virtual {v3, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/ab/a$a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 4

    .line 1563
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 1564
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1566
    invoke-virtual {v3, p1, p2}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 8

    .line 843
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/three_a/ui/h;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/i;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v1, p4, p2

    .line 851
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v1, p5, p3

    .line 852
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 853
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 854
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 855
    iget-object v0, p0, Lcn/nubia/camera/q/i;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 859
    iget-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 860
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 861
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 862
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 863
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 864
    iget-object v0, p0, Lcn/nubia/camera/q/i;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 869
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 870
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->a()Landroid/graphics/Rect;

    move-result-object v1

    .line 872
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    .line 873
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v3

    .line 878
    :goto_1
    iget-object v4, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 879
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 880
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 881
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_3

    move v2, v3

    .line 882
    :cond_3
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 883
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    .line 884
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 885
    iget-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    const/4 v0, 0x1

    .line 889
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->s:Z

    .line 890
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 891
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->M()V

    .line 894
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->d()I

    move-result v0

    const/16 v1, 0x5a0

    if-gt v0, v1, :cond_6

    .line 895
    iget-object v2, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 896
    iget-object p1, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/camera/j/b;->a(IIII)V

    goto :goto_3

    .line 898
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {p1}, Lcn/nubia/camera/z/b;->g()V

    .line 899
    iget-object p1, p0, Lcn/nubia/camera/q/i;->u:Lcn/nubia/camera/j/b;

    invoke-virtual {p1}, Lcn/nubia/camera/j/b;->e()V

    :goto_3
    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 397
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/n/b;)V
    .locals 1

    .line 1615
    iput-object p1, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    .line 1616
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_interval_switch_key"

    invoke-direct {p0, v0}, Lcn/nubia/camera/q/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcn/nubia/camera/q/i;->t:Lcn/nubia/camera/z/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/b;->a(Lcn/nubia/camera/n/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/prosetting/ui/b;)V
    .locals 3

    .line 1268
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_0

    .line 1269
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_5

    .line 1270
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->c(I)V

    goto :goto_0

    .line 1274
    :cond_0
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    if-eq v0, v1, :cond_1

    .line 1275
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_2

    .line 1277
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/w/d;->x(Lcn/nubia/camera/ad/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1278
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/w/d;->l(Lcn/nubia/camera/ad/a;)Landroid/util/Rational;

    move-result-object v1

    .line 1279
    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 1280
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/h;->c(I)V

    .line 1283
    :cond_2
    invoke-interface {p1}, Lcn/nubia/camera/prosetting/ui/b;->getMember()Lcn/nubia/camera/w/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    if-ne v0, v1, :cond_3

    .line 1284
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->I()V

    .line 1285
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    .line 1286
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->d()V

    .line 1287
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->e()V

    .line 1288
    iget-object v0, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->c()V

    .line 1290
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_4

    .line 1291
    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->a()V

    .line 1294
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    const/4 v0, 0x1

    .line 1295
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1296
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/prosetting/ui/b;)V

    .line 1297
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->I()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/q/j$b;)V
    .locals 1

    .line 1517
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/j;->a(Lcn/nubia/camera/q/j$b;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 1922
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1923
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    .line 1922
    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1925
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 616
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_1

    .line 620
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_1

    .line 621
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-ne p1, p2, :cond_2

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/e;->e:Lcn/nubia/camera/d/e;

    if-ne p1, p2, :cond_4

    .line 623
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    if-eq p1, p2, :cond_4

    .line 624
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 p2, 0x8

    if-eqz p1, :cond_5

    .line 626
    iget-object p1, p0, Lcn/nubia/camera/q/i;->o:Lcn/nubia/camera/facedetection/FaceView;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/facedetection/FaceView;->setVisibility(I)V

    .line 627
    iget-object p1, p0, Lcn/nubia/camera/q/i;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 629
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 630
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz p1, :cond_6

    .line 631
    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(I)V

    .line 634
    :cond_6
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz p1, :cond_7

    .line 635
    invoke-virtual {p1}, Lcn/nubia/camera/debugmode/b;->c()V

    .line 637
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 638
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const-string p3, "FragmentUI"

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 1303
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "highsetting"

    if-eqz p1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1307
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1454
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    .line 1456
    invoke-virtual {v4, p1, p2}, Lcn/nubia/camera/q/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1459
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    or-int/2addr p1, v3

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "MemberFragment"

    const-string v1, "onSingleTapUp"

    .line 749
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 753
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/q/i;->F:Z

    if-eqz v1, :cond_1

    const-string p1, "dispatch has consumed!"

    .line 754
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 764
    iget-object v1, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcn/nubia/camera/n/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 765
    iget-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->b(Z)V

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_5

    .line 771
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, v1, v2

    if-eqz v4, :cond_4

    .line 773
    invoke-virtual {v4, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/q/i;->a(II)Z

    move-result v0

    .line 782
    :cond_6
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_7
    :goto_2
    return v2
.end method

.method protected a(Ljava/util/ArrayList;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 1394
    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/q/i;->b(Ljava/util/ArrayList;Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1396
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    if-eq p2, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a_(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1448
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/q/i;->b(ZZ)V

    return-void
.end method

.method public aa()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1834
    iget-object v0, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected ab()V
    .locals 0

    return-void
.end method

.method public ac()V
    .locals 0

    return-void
.end method

.method public ad()Lcn/nubia/camera/zoom/arc/a;
    .locals 1

    .line 1946
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1949
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->a()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/util/ArrayList;Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;",
            "Landroid/view/View;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1403
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1404
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/ui/g;

    invoke-virtual {v1}, Lcom/android/common/ui/g;->b()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public b(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)Lcn/nubia/camera/k/ah;
    .locals 9

    const-string v0, "MemberFragment"

    const-string v1, "CameraInitDone"

    .line 349
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->b()V

    .line 353
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 354
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 356
    invoke-virtual/range {v3 .. v8}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-direct {p0, p2, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/ad/a;Landroid/content/Context;)V

    .line 360
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 362
    iget-object p1, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object p1, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 365
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 1727
    iget-object v0, p0, Lcn/nubia/camera/q/i;->B:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public b(Lcn/nubia/camera/k/h;)V
    .locals 4

    .line 383
    invoke-virtual {p0, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/k/h;)V

    .line 384
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {v3, p1}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/k/h;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/q/i;->J:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method public b(Lcn/nubia/camera/q/j$b;)V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/j;->b(Lcn/nubia/camera/q/j$b;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(ZJJ)V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 601
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz p1, :cond_1

    .line 603
    invoke-virtual {p1, p2}, Lcn/nubia/camera/three_a/ui/h;->a(I)V

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->M()V

    .line 606
    iget-object p1, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz p1, :cond_2

    .line 607
    invoke-virtual {p1}, Lcn/nubia/camera/debugmode/b;->d()V

    .line 609
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 610
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    const-string p3, "FragmentUI"

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 661
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 665
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->F:Z

    .line 666
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 668
    iget-boolean v5, p0, Lcn/nubia/camera/q/i;->F:Z

    invoke-virtual {v4, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcn/nubia/camera/q/i;->F:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 672
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->E:Z

    .line 673
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    if-nez v0, :cond_9

    .line 674
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 678
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    .line 679
    sget-object v3, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v0, v3, :cond_5

    .line 680
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v3, v4, :cond_6

    :cond_4
    sget-object v3, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    if-ne v0, v3, :cond_6

    :cond_5
    move v1, v2

    .line 681
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 683
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/an/a;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_7

    .line 684
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->f()Z

    move-result v0

    if-nez v0, :cond_7

    .line 685
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    iget-object v1, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn/nubia/camera/zoom/c;->a(Landroid/view/MotionEvent;Lcn/nubia/camera/k/ah;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    .line 686
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->E:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_9

    .line 688
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->g()V

    goto :goto_1

    .line 690
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 691
    :cond_8
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/zoom/c;->a(Landroid/view/MotionEvent;Lcn/nubia/camera/k/ah;)Z

    .line 695
    :cond_9
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 696
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->D:Z

    .line 699
    :cond_a
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1

    :cond_b
    :goto_2
    return v1
.end method

.method public b_(I)V
    .locals 4

    .line 1139
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1140
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->G:Z

    .line 1142
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1146
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/q/i;->G:Z

    const-string v2, "FamilyPage"

    if-eqz v1, :cond_2

    .line 1147
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ao()V

    .line 1148
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1149
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 1152
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ap()V

    .line 1153
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1154
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 1159
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    if-eqz v3, :cond_4

    .line 1161
    invoke-virtual {v3, p1}, Lcn/nubia/camera/q/a;->b_(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected abstract c()V
.end method

.method public c(Z)V
    .locals 0

    .line 1595
    iget-object p1, p0, Lcn/nubia/camera/q/i;->a:Lcn/nubia/camera/q/m;

    if-eqz p1, :cond_0

    .line 1596
    invoke-virtual {p1}, Lcn/nubia/camera/q/m;->c()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 741
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Z)V
    .locals 1

    .line 818
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0, p1}, Lcn/nubia/camera/q/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 906
    iget-object v0, p0, Lcn/nubia/camera/q/i;->A:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/c;->b(Z)V

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-eqz v5, :cond_1

    .line 913
    invoke-virtual {v5, p1}, Lcn/nubia/camera/q/a;->d(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 919
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->D:Z

    if-nez v0, :cond_5

    iget-boolean v2, p0, Lcn/nubia/camera/q/i;->E:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 921
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/q/i;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 922
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/three_a/ui/h;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v3

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 920
    iget-boolean p1, p0, Lcn/nubia/camera/q/i;->E:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :cond_7
    :goto_2
    return v1
.end method

.method protected abstract d()[Lcn/nubia/camera/q/a;
.end method

.method public d_()Z
    .locals 1

    .line 811
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Lcn/nubia/camera/k/ah;
.end method

.method public e(I)V
    .locals 4

    .line 1806
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->e(I)V

    .line 1807
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1809
    invoke-virtual {v3, p1}, Lcn/nubia/camera/q/a;->e(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 1816
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->g()Lcn/nubia/camera/ac/b;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/camera/ac/b;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 1818
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v1

    sget-object v3, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v1, v3, :cond_4

    .line 1819
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->G()I

    move-result p1

    .line 1820
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1821
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(I)V

    goto :goto_1

    .line 1823
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/common/c/e;->a(I)V

    goto :goto_1

    .line 1826
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/af/b;

    invoke-virtual {v1, p1}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 1827
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->o()V

    .line 1828
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/ad/a;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public e(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1104
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1107
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->F:Z

    if-eqz v0, :cond_1

    const-string p1, "MemberFragment"

    const-string v0, "dispatch has consumed"

    .line 1108
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1112
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1113
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->i()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    .line 1115
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->E:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1119
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/q/i;->a(II)Z

    move-result v0

    .line 1121
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v2, v1

    if-eqz v4, :cond_4

    .line 1123
    invoke-virtual {v4, p1}, Lcn/nubia/camera/q/a;->e(Landroid/view/MotionEvent;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    .line 1127
    iget-object p1, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz p1, :cond_6

    .line 1128
    invoke-virtual {p1}, Lcn/nubia/camera/debugmode/b;->a()V

    :cond_6
    :goto_2
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1602
    iget-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1603
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_1

    .line 1604
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_1

    .line 1605
    iget-object v0, p0, Lcn/nubia/camera/q/i;->p:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected e_()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    .line 1896
    invoke-super {p0}, Lcn/nubia/camera/q/a;->f()V

    .line 1897
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_disable_auto_microspur_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1899
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1901
    invoke-virtual {v3}, Lcn/nubia/camera/q/a;->f()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f_()V
    .locals 1

    .line 1314
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/arc/a;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1908
    invoke-super {p0}, Lcn/nubia/camera/q/a;->g()V

    .line 1910
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1912
    invoke-virtual {v3}, Lcn/nubia/camera/q/a;->g()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_camera_recordlocation_key"

    .line 1031
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->aq()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "pref_camera_grid_key"

    .line 1033
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1034
    iput-boolean v1, p0, Lcn/nubia/camera/q/i;->s:Z

    .line 1035
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->M()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "pref_camera_shutter_sound_key"

    .line 1036
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->J()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->a(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_water_mark_logo_key"

    .line 1038
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_8

    .line 1041
    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->e()V

    goto :goto_0

    :cond_3
    const-string v0, "pref_camera_gradienter_key"

    .line 1043
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1044
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->O()V

    goto :goto_0

    :cond_4
    const-string v0, "pref_multi_focus_key"

    .line 1045
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1046
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Y()V

    goto :goto_0

    :cond_5
    const-string v0, "pref_camera_wideangle_correction_key"

    .line 1047
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1048
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/ad/a;Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const-string v0, "pref_camera_facedetection_key"

    .line 1049
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1050
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->al()V

    goto :goto_0

    :cond_7
    const-string v0, "pref_peaking_focus_key"

    .line 1051
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1052
    invoke-virtual {p0, v1}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1055
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    .line 1057
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1059
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcn/nubia/camera/ba/g;->b(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->I()V

    return-void
.end method

.method public g_()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1464
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/q/i;->b(ZZ)V

    .line 1465
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "interval"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method protected i_()V
    .locals 2

    .line 946
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {v1, v0}, Lcn/nubia/camera/q/j;->a(Lcom/android/preference/PreferenceGroup;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 951
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->M()V

    .line 952
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->O()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 5

    .line 704
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 708
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 712
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 717
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->J()Z

    move-result v0

    if-nez v0, :cond_3

    .line 719
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/j;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 731
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->d()[Lcn/nubia/camera/q/a;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    if-eqz v4, :cond_4

    .line 733
    invoke-virtual {v4}, Lcn/nubia/camera/q/a;->k()Z

    move-result v4

    or-int/2addr v3, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public l()V
    .locals 3

    const/4 v0, 0x1

    .line 1472
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/q/i;->b(ZZ)V

    .line 1473
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "interval"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 237
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->j:Z

    if-eq p1, v0, :cond_1

    .line 239
    iput-boolean p1, p0, Lcn/nubia/camera/q/i;->j:Z

    .line 240
    iget-object p1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    invoke-virtual {p1}, Lcn/nubia/camera/q/j;->b()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 174
    invoke-super {p0, p1}, Lcn/nubia/camera/q/a;->onCreate(Landroid/os/Bundle;)V

    .line 175
    iget-boolean p1, p0, Lcn/nubia/camera/q/i;->d:Z

    if-eqz p1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance p1, Lcn/nubia/camera/q/j;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcn/nubia/camera/q/j;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    .line 179
    new-instance p1, Lcn/nubia/camera/facedetection/a;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/camera/facedetection/a;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object p1, p0, Lcn/nubia/camera/q/i;->x:Lcn/nubia/camera/facedetection/a;

    .line 180
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p1, v2, :cond_2

    .line 182
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    if-eq p1, v2, :cond_2

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-eq p1, v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-eq p1, v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq p1, v2, :cond_2

    .line 186
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object v2, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v0

    .line 187
    :goto_1
    new-instance v2, Lcn/nubia/camera/q/h;

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcn/nubia/camera/q/h;-><init>(Landroid/content/res/Resources;Z)V

    iput-object v2, p0, Lcn/nubia/camera/q/i;->g:Lcn/nubia/camera/q/h;

    .line 188
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/q/i;->g:Lcn/nubia/camera/q/h;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/ad/a;->a(Lcn/nubia/camera/q/h;)V

    .line 191
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/af/a;)V

    .line 193
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v2, 0x10

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcn/nubia/camera/q/i;->j:Z

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 200
    iget-boolean p3, p0, Lcn/nubia/camera/q/i;->d:Z

    const-string v0, "MemberFragment"

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "onCreateView"

    .line 205
    invoke-static {v0, p3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 208
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->j(Landroid/view/View;)V

    .line 209
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->d(Landroid/view/View;)V

    .line 211
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->h(Landroid/view/View;)V

    .line 213
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->e(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;->f(Landroid/view/View;)V

    .line 216
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->at()V

    .line 219
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->c()V

    .line 222
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->o()V

    .line 223
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->m()V

    .line 225
    invoke-virtual {p0, p0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/q/j$b;)V

    .line 227
    iget-boolean p2, p0, Lcn/nubia/camera/q/i;->G:Z

    if-eqz p2, :cond_1

    .line 228
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ao()V

    :cond_1
    return-object p1

    .line 201
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "activity has been Destroyed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 312
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 313
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 317
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->n()V

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/n/b;)V

    .line 319
    invoke-virtual {p0, p0}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/q/j$b;)V

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->i()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 402
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 403
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 409
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/j;->b(Z)Z

    .line 413
    iget-object v0, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    invoke-virtual {v0}, Lcn/nubia/camera/q/j;->g()V

    .line 417
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->an()V

    .line 418
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ag()V

    .line 419
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ai()V

    .line 420
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ak()V

    .line 421
    iget-object v0, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->k()V

    .line 424
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->A()V

    .line 427
    :cond_2
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/q/i;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->s()V

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 432
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/h;->a()V

    .line 434
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz v0, :cond_5

    .line 435
    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/b;->f()V

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Z()V

    .line 439
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ae()V

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/q/i;->M:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 1215
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x2712

    if-ne p1, p2, :cond_4

    .line 1218
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p1

    const-string p2, "pref_camera_recordlocation_key"

    invoke-virtual {p1, p2}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    .line 1219
    array-length p2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 1220
    :goto_0
    array-length v2, p3

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, p3, v3

    if-nez v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    and-int/2addr p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "on"

    .line 1224
    invoke-virtual {p1, p2}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p2, "off"

    .line 1226
    invoke-virtual {p1, p2}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ar()V

    .line 1229
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->u()Lcom/android/preference/c;

    move-result-object p1

    invoke-static {p1}, Lcom/android/preference/RecordLocationPreference;->b(Landroid/content/SharedPreferences;)Z

    move-result p1

    .line 1230
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/nubia/e/a;->a(Z)V

    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 289
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 290
    iget-boolean v0, p0, Lcn/nubia/camera/q/i;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 291
    invoke-virtual {p0, v0}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 292
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->am()V

    .line 293
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->ah()V

    .line 294
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->aj()V

    .line 295
    invoke-direct {p0}, Lcn/nubia/camera/q/i;->af()V

    .line 296
    iget-object v1, p0, Lcn/nubia/camera/q/i;->n:Lcn/nubia/camera/q/j;

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v1}, Lcn/nubia/camera/q/j;->c()V

    .line 299
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/q/i;->m:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v1}, Lcn/nubia/camera/three_a/ui/h;->j()V

    .line 300
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->J()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcn/nubia/j/a;->a(Z)V

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/q/i;->K:Lcn/nubia/camera/debugmode/b;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Lcn/nubia/camera/debugmode/b;->e()V

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->Y()V

    .line 306
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->j:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 307
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1933
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1940
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    .line 1623
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->M()V

    .line 1625
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->c(Z)V

    .line 1627
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1628
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    .line 1634
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1635
    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->c(Z)V

    .line 1637
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1638
    invoke-virtual {p0}, Lcn/nubia/camera/q/i;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "page"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 1

    .line 804
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    .line 827
    iget-object v0, p0, Lcn/nubia/camera/q/i;->b:Lcn/nubia/camera/q/b;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
