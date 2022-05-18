.class public Lcn/nubia/camera/aj/e;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/a$a;
.implements Lcn/nubia/camera/aa/b$b;
.implements Lcn/nubia/camera/aj/a$a;
.implements Lcn/nubia/camera/aj/a/d;
.implements Lcn/nubia/camera/aj/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aj/e$a;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/String; = "NormalMemberFragment"


# instance fields
.field private A:Lcom/android/common/ui/k;

.field private B:Lcom/android/common/ui/k;

.field private C:Lcom/android/common/ui/k;

.field private D:Lcn/nubia/camera/aj/h;

.field private E:Lcn/nubia/camera/aj/f;

.field private F:Lcn/nubia/camera/aa/b;

.field private G:Lcn/nubia/camera/b/k;

.field private H:Lcom/android/preference/IconListPreference;

.field private I:Lcn/nubia/camera/composition/a;

.field private J:Lcn/nubia/camera/v/b;

.field private K:Lcn/nubia/camera/m/d;

.field private L:F

.field private M:Lcn/nubia/camera/aj/a;

.field private N:I

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcn/nubia/camera/aj/c;

.field private p:Lcn/nubia/camera/aj/a/a;

.field private q:Lcn/nubia/camera/facedetection/b;

.field private r:Z

.field private s:Z

.field private t:Lcn/nubia/camera/aj/b;

.field private u:Landroid/os/Handler;

.field private v:Lcom/android/common/ui/a;

.field private w:Lcn/nubia/camera/q/e;

.field private x:Lcom/android/common/ui/a;

.field private y:Lcom/android/common/ui/a;

.field private z:Lcom/android/common/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/aj/e;->r:Z

    .line 91
    iput-boolean v0, p0, Lcn/nubia/camera/aj/e;->s:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->u:Landroid/os/Handler;

    const/high16 v0, -0x40800000    # -1.0f

    .line 860
    iput v0, p0, Lcn/nubia/camera/aj/e;->L:F

    const/16 v0, 0x64

    .line 1016
    iput v0, p0, Lcn/nubia/camera/aj/e;->N:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcn/nubia/camera/aj/e;->r:Z

    .line 91
    iput-boolean p1, p0, Lcn/nubia/camera/aj/e;->s:Z

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->u:Landroid/os/Handler;

    const/high16 p1, -0x40800000    # -1.0f

    .line 860
    iput p1, p0, Lcn/nubia/camera/aj/e;->L:F

    const/16 p1, 0x64

    .line 1016
    iput p1, p0, Lcn/nubia/camera/aj/e;->N:I

    .line 120
    new-instance p1, Lcn/nubia/camera/aj/h;

    invoke-direct {p1}, Lcn/nubia/camera/aj/h;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/e;Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/aj/e;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 4

    .line 290
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "initSmileShot"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Lcn/nubia/camera/facedetection/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/facedetection/b;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    .line 293
    new-instance v1, Lcn/nubia/camera/aj/e$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/aj/e$1;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/facedetection/b$c;)V

    .line 301
    new-instance p1, Landroid/util/Size;

    .line 302
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->c()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 303
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/facedetection/b;->a(Landroid/util/Size;)V

    .line 304
    new-instance v0, Lcn/nubia/camera/v/b;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    .line 305
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 306
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/v/b;)V

    .line 307
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ak()V

    .line 308
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    .line 505
    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {p1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result p1

    goto :goto_0

    .line 508
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    .line 511
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->n:Ljava/util/ArrayList;

    goto :goto_1

    .line 513
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->n:Ljava/util/ArrayList;

    .line 515
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    if-eqz p1, :cond_2

    .line 516
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object p2, p0, Lcn/nubia/camera/aj/e;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    .line 518
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->H:Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_3

    .line 519
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/e;->a(Lcom/android/preference/IconListPreference;)Z

    :cond_3
    return-void
.end method

.method private static a(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v1, 0x3f747ae147ae147bL    # 0.005

    cmpg-double p0, p0, v1

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/e;Lcom/android/preference/IconListPreference;)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/e;->a(Lcom/android/preference/IconListPreference;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/aj/e;ZZ)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aj/e;->b(ZZ)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/android/preference/IconListPreference;)Z
    .locals 4

    const v0, 0x7f0f03bd

    .line 729
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 735
    :goto_0
    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0x7f0f03b7

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object p1

    .line 736
    :goto_1
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 737
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    if-nez p1, :cond_3

    .line 738
    new-instance p1, Lcn/nubia/camera/b/k;

    invoke-direct {p1}, Lcn/nubia/camera/b/k;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    .line 739
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/camera/b/k;->a(Landroid/view/View;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/zoom/c;)V

    .line 740
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m$a;)V

    .line 741
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ba/f;->a(Lcn/nubia/camera/ba/f$a;)V

    .line 742
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 743
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    .line 745
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/aj/e;->a(Ljava/lang/Object;)V

    .line 747
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p1}, Lcn/nubia/camera/b/k;->a()V

    const/4 p1, 0x1

    return p1

    .line 750
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    if-eqz p1, :cond_5

    .line 751
    invoke-virtual {p1}, Lcn/nubia/camera/b/k;->b()V

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private ae()V
    .locals 3

    .line 314
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->e:Z

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    if-nez v0, :cond_1

    .line 318
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ar()I

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "initFacePretty"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Lcn/nubia/camera/aj/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/aj/b;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    .line 328
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private af()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "releaseFacePretty"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/b;->a()V

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcn/nubia/camera/aj/e;->t:Lcn/nubia/camera/aj/b;

    return-void
.end method

.method private ag()Z
    .locals 4

    const v0, 0x7f0f03bd

    .line 342
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0278

    .line 343
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_normal_face_pretty_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ah()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->e(Ljava/util/ArrayList;)V

    .line 361
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->b(Ljava/util/ArrayList;)V

    .line 362
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->c(Ljava/util/ArrayList;)V

    .line 363
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->i(Ljava/util/ArrayList;)V

    .line 364
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->g(Ljava/util/ArrayList;)V

    .line 365
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->h(Ljava/util/ArrayList;)V

    .line 366
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->j(Ljava/util/ArrayList;)V

    .line 367
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->d(Ljava/util/ArrayList;)V

    .line 369
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->f(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private ai()V
    .locals 3

    .line 531
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->r:Z

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Lcn/nubia/camera/aa/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/aa/b;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/f;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    .line 533
    invoke-virtual {v0, p0}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b$b;)V

    .line 534
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->a()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v1}, Lcn/nubia/camera/aa/b;->c()Landroid/util/Size;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/camera/aj/e;->a(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->e()V

    .line 541
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->a()V

    :cond_1
    return-void
.end method

.method private aj()V
    .locals 6

    .line 759
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->aq()Z

    move-result v0

    const v1, 0x7f0f012b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcn/nubia/camera/aa/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    invoke-direct {v0, v4, v5}, Lcn/nubia/camera/aa/b;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/f;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    .line 761
    invoke-virtual {v0, p0}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b$b;)V

    .line 762
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->a()V

    const v0, 0x7f0f01a3

    .line 763
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 766
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->aq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    if-eqz v0, :cond_1

    .line 767
    invoke-virtual {v0}, Lcn/nubia/camera/aa/b;->e()V

    const/4 v0, 0x0

    .line 768
    iput-object v0, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    const v0, 0x7f0f019f

    .line 769
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ak()V
    .locals 3

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01dc

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_front_smileshoot_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/facedetection/b;->a(Z)V

    :cond_0
    return-void
.end method

.method private al()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->d()V

    :cond_0
    return-void
.end method

.method private am()V
    .locals 4

    .line 902
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/zoom/d;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/zoom/d;->e(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/zoom/d;->h(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    :cond_0
    new-instance v0, Lcn/nubia/camera/aj/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/aj/a;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/zoom/c;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    .line 904
    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a$a;)V

    :cond_1
    return-void
.end method

.method private an()V
    .locals 1

    .line 909
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Lcn/nubia/camera/aj/a;->b()V

    .line 911
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/a;->b(Lcn/nubia/camera/aj/a$a;)V

    :cond_0
    return-void
.end method

.method private ao()V
    .locals 1

    .line 916
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {v0}, Lcn/nubia/camera/aj/a;->a()V

    :cond_0
    return-void
.end method

.method private ap()V
    .locals 1

    .line 922
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Lcn/nubia/camera/aj/a;->b()V

    :cond_0
    return-void
.end method

.method private aq()Z
    .locals 4

    const v0, 0x7f0f03bd

    .line 1011
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0247

    .line 1012
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1013
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v2

    const-string v3, "pref_live_photo_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ar()V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/aj/e$7;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/e$7;-><init>(Lcn/nubia/camera/aj/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method private as()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/e;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ae()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/aj/e;ZZ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/aj/e;->c(ZZ)V

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

    .line 375
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    const v1, 0x7f080061

    .line 380
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 381
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private b(ZZ)Z
    .locals 5

    .line 1037
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1040
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    if-nez v0, :cond_2

    .line 1041
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1044
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/composition/CompositionView;

    .line 1045
    new-instance v2, Lcn/nubia/camera/composition/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcn/nubia/camera/composition/a;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/composition/CompositionView;)V

    iput-object v2, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    .line 1047
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    if-eqz v0, :cond_5

    const v0, 0x7f0f03bd

    .line 1048
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {p0, v3}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_composition_key"

    invoke-virtual {v2, v4, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1051
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    invoke-virtual {p1}, Lcn/nubia/camera/composition/a;->c()V

    goto :goto_0

    .line 1053
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    invoke-virtual {p1}, Lcn/nubia/camera/composition/a;->a()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 1057
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->I:Lcn/nubia/camera/composition/a;

    invoke-virtual {p1}, Lcn/nubia/camera/composition/a;->b()V

    :cond_5
    return v1
.end method

.method static synthetic c(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

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

    .line 385
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    const v1, 0x7f080122

    .line 387
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 388
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private c(ZZ)V
    .locals 6

    .line 1064
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f03bd

    .line 1067
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v2

    const v3, 0x7f0f0262

    invoke-virtual {p0, v3}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_normal_ai_key"

    invoke-virtual {v2, v4, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1068
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {p0, v3}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "pref_composition_key"

    invoke-virtual {v2, v5, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const v0, 0x7f0f03bc

    if-eqz p1, :cond_1

    .line 1071
    invoke-virtual {p0, v5}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    check-cast p1, Lcom/android/preference/IconListPreference;

    .line 1072
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/preference/IconListPreference;->b(Ljava/lang/String;)V

    .line 1073
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/common/ui/k;->a(Lcom/android/preference/PreferenceGroup;)V

    const/4 p1, 0x0

    .line 1074
    invoke-direct {p0, p1, p1}, Lcn/nubia/camera/aj/e;->b(ZZ)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1076
    invoke-virtual {p0, v4}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    check-cast p1, Lcom/android/preference/IconListPreference;

    .line 1077
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/preference/IconListPreference;->b(Ljava/lang/String;)V

    .line 1078
    iget-object p2, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/PreferenceGroup;)V

    .line 1079
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/e;->a(Lcom/android/preference/IconListPreference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

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

    .line 420
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->A:Lcom/android/common/ui/k;

    const v1, 0x7f0801e3

    .line 421
    invoke-virtual {v0, v1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 422
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->A:Lcom/android/common/ui/k;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 427
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 429
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    const v2, 0x7f090153

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance p1, Lcn/nubia/camera/q/e;

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcn/nubia/camera/q/e;-><init>(Landroid/widget/ImageView;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->w:Lcn/nubia/camera/q/e;

    .line 432
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->w:Lcn/nubia/camera/q/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/aj/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcn/nubia/camera/aj/e;->s:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/aj/e;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->Y()V

    return-void
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 437
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 438
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/aj/h;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    return-object p0
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 443
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aJ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    :cond_2
    new-instance v0, Lcn/nubia/camera/extendedUI/e;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    const v1, 0x7f080144

    .line 449
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 450
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f090175

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/aj/e;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->al()V

    return-void
.end method

.method private h(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 455
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 456
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 457
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/m;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    return-object p0
.end method

.method private i(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->z:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0800f3

    .line 465
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 466
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f09012c

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->z:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method private j(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;)V"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->b()Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/aj/e;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->aj()V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static m()Lcn/nubia/camera/aj/e;
    .locals 2

    .line 677
    new-instance v0, Lcn/nubia/camera/aj/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/camera/aj/e;-><init>(I)V

    return-object v0
.end method

.method static synthetic m(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/aj/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/aj/e;)Lcom/android/preference/c;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I()V
    .locals 1

    .line 783
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->I()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 0

    .line 687
    invoke-super {p0}, Lcn/nubia/camera/q/i;->N()V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 1019
    iget v0, p0, Lcn/nubia/camera/aj/e;->N:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    if-gt p1, v1, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    .line 1021
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "lowlight disable auto supernight"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "pref_disable_auto_supernight_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1023
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->k()V

    .line 1024
    iput p1, p0, Lcn/nubia/camera/aj/e;->N:I

    goto :goto_0

    .line 1027
    :cond_0
    iput p1, p0, Lcn/nubia/camera/aj/e;->N:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 479
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    new-instance v4, Lcn/nubia/camera/aj/g;

    .line 482
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-direct {v4, v1, v2, v3, v5}, Lcn/nubia/camera/aj/g;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 479
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/aj/h;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 484
    iget-object p3, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-virtual {p3}, Lcn/nubia/camera/aj/h;->q()V

    const/4 p3, 0x1

    .line 485
    iput-boolean p3, p0, Lcn/nubia/camera/aj/e;->r:Z

    .line 486
    iget-object p3, p0, Lcn/nubia/camera/aj/e;->u:Landroid/os/Handler;

    new-instance p4, Lcn/nubia/camera/aj/e$2;

    invoke-direct {p4, p0, p2, p1}, Lcn/nubia/camera/aj/e$2;-><init>(Lcn/nubia/camera/aj/e;Lcn/nubia/camera/ad/a;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ai()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 840
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 841
    iget-object p2, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    if-eqz p2, :cond_1

    .line 842
    new-instance p3, Landroid/util/Size;

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-direct {p3, p4, p5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p2, p3}, Lcn/nubia/camera/facedetection/b;->a(Landroid/util/Size;)V

    .line 843
    iget-object p2, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    if-eqz p2, :cond_0

    .line 844
    invoke-virtual {p2}, Lcn/nubia/camera/v/b;->a()V

    const/4 p2, 0x0

    .line 845
    iput-object p2, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    .line 847
    :cond_0
    new-instance p2, Landroid/util/Size;

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/util/Size;-><init>(II)V

    .line 848
    new-instance p1, Lcn/nubia/camera/v/b;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    sget-object p4, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object p5, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {p1, p3, p2, p4, p5}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object p1, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    .line 849
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 851
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    iget-object p2, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/v/b;)V

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-eq p1, p2, :cond_2

    .line 855
    sget-object p1, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string p2, "onPreviewAreaUpdated: restart composition"

    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 856
    invoke-direct {p0, p1, p1}, Lcn/nubia/camera/aj/e;->b(ZZ)Z

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 525
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/k/h;)V

    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lcn/nubia/camera/aj/e;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 894
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {p1}, Lcn/nubia/camera/q/m;->c()V

    .line 895
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1}, Lcn/nubia/camera/facedetection/b;->a()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f080143

    .line 1004
    invoke-virtual {v0, p1}, Lcom/android/common/ui/a;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080142

    .line 1006
    invoke-virtual {v0, p1}, Lcom/android/common/ui/a;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 929
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(ZJJ)V

    .line 930
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    if-eqz p1, :cond_0

    .line 931
    invoke-virtual {p1}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method protected a(F)Z
    .locals 3

    .line 862
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->a(F)Z

    .line 863
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 867
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_4

    .line 868
    iget v0, p0, Lcn/nubia/camera/aj/e;->L:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 869
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->c()V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    cmpl-float v2, p1, v1

    if-gez v2, :cond_3

    :cond_2
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    cmpg-float v0, p1, v1

    if-gez v0, :cond_8

    .line 873
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->c()V

    goto :goto_0

    .line 876
    :cond_4
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 877
    iget v0, p0, Lcn/nubia/camera/aj/e;->L:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    .line 878
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->d()V

    goto :goto_0

    :cond_5
    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_6

    cmpl-float v2, p1, v1

    if-gez v2, :cond_7

    :cond_6
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    cmpg-float v0, p1, v1

    if-gez v0, :cond_8

    .line 882
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->d()V

    .line 886
    :cond_8
    :goto_0
    iput p1, p0, Lcn/nubia/camera/aj/e;->L:F

    .line 888
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->M:Lcn/nubia/camera/aj/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aj/a;->a(F)Z

    move-result p1

    return p1

    :cond_9
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected ab()V
    .locals 1

    .line 937
    invoke-super {p0}, Lcn/nubia/camera/q/i;->ab()V

    .line 938
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 693
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 694
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ak()V

    .line 696
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p1}, Lcn/nubia/camera/aa/b;->f()V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 7

    .line 125
    new-instance v0, Lcn/nubia/camera/m/d;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->aa()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/m/d;-><init>(Landroid/widget/RelativeLayout;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    .line 126
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ah()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    .line 130
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 133
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    if-eqz v1, :cond_1

    .line 134
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_1
    const/4 v1, 0x0

    .line 137
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    .line 138
    iget-object v3, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/camera/aj/e;->a(Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)V

    .line 142
    new-instance v2, Lcn/nubia/camera/aj/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/a/a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/camera/aj/a/a;-><init>(Lcn/nubia/camera/a/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v2, p0, Lcn/nubia/camera/aj/e;->p:Lcn/nubia/camera/aj/a/a;

    .line 143
    invoke-virtual {v2, p0}, Lcn/nubia/camera/aj/a/a;->a(Lcn/nubia/camera/aj/a/d;)V

    .line 144
    new-instance v2, Lcn/nubia/camera/aj/f;

    .line 145
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    iget-object v5, p0, Lcn/nubia/camera/aj/e;->p:Lcn/nubia/camera/aj/a/a;

    .line 148
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->P()Lcn/nubia/camera/z/b;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/nubia/camera/aj/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V

    iput-object v2, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    invoke-static {v2, v1, v3, v4}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Ljava/util/List;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    const v1, 0x7f09014d

    .line 185
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 187
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->p:Lcn/nubia/camera/aj/a/a;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    iget-object v3, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    iget-object v4, p0, Lcn/nubia/camera/aj/e;->z:Lcom/android/common/ui/RotateImageView;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/h;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/aj/c;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    const v2, 0x7f09014e

    .line 188
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 190
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/q/g;)V

    .line 191
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/q/g;)V

    .line 192
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/q/g;)V

    .line 193
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c$c;)V

    .line 195
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    invoke-direct {p0, v1}, Lcn/nubia/camera/aj/e;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 197
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m$a;)V

    .line 199
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 200
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->am()V

    .line 201
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ar()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 236
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 673
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->D:Lcn/nubia/camera/aj/h;

    return-object v0
.end method

.method protected e_()V
    .locals 3

    .line 206
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/q/g;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/q/g;)V

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/q/g;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Lcn/nubia/camera/q/m$a;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 219
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0}, Lcn/nubia/camera/facedetection/b;->b()V

    .line 220
    iput-object v1, p0, Lcn/nubia/camera/aj/e;->q:Lcn/nubia/camera/facedetection/b;

    .line 222
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->p:Lcn/nubia/camera/aj/a/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/aj/a/a;->a(Lcn/nubia/camera/aj/a/d;)V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 225
    iput-object v1, p0, Lcn/nubia/camera/aj/e;->J:Lcn/nubia/camera/v/b;

    .line 227
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->a()V

    .line 230
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->an()V

    .line 231
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->as()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 682
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 9

    .line 952
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    const-string v1, "more_setting_special"

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "pref_camera_front_smileshoot_key"

    const-string v4, "pref_mirror_mode_key"

    const-string v5, "pref_normal_face_pretty_key"

    const-string v6, "pref_multi_focus_key"

    const-string v7, "pref_moresetting_picturesize_key"

    const-string v8, "pref_camera_wideportrait_correction_key"

    .line 955
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 966
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 967
    aget-object v4, v1, v3

    const-string v5, "pref_camera_front_smileshoot_key"

    .line 968
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 969
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v5, "pref_mirror_mode_key"

    .line 970
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 971
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 972
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v5

    if-nez v5, :cond_3

    .line 973
    :cond_2
    sget-object v4, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v5, "Not support KEY_MIRROR_MODE"

    invoke-static {v4, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string v5, "pref_normal_face_pretty_key"

    .line 974
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 975
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 976
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->ar()I

    move-result v5

    if-gtz v5, :cond_5

    .line 977
    :cond_4
    sget-object v4, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v5, "Not support KEY_NORMAL_SMART_PRETTY"

    invoke-static {v4, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v5, "pref_multi_focus_key"

    .line 978
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 979
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->ad()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 980
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 981
    :cond_6
    sget-object v4, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v5, "Not support KEY_MULTI_POINT_FOCUS"

    invoke-static {v4, v5}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v5, "pref_camera_wideportrait_correction_key"

    .line 982
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 983
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    .line 991
    :cond_8
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 994
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 995
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 7

    .line 555
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 556
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 557
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 559
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_selfie_flashmode_key"

    .line 560
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v1, "pref_camera_flashmode_key"

    .line 562
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v1, :cond_1

    .line 565
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 566
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/aj/e$3;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/aj/e$3;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 574
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 575
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->v:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 576
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->w:Lcn/nubia/camera/q/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 579
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    if-eqz v1, :cond_3

    const-string v1, "pref_camera_delay_shoot_key"

    .line 580
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_2

    .line 582
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 583
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->S()Lcn/nubia/camera/j/b;

    move-result-object v5

    const v6, 0x7f0f01c6

    .line 584
    invoke-virtual {p0, v6}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 586
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 587
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_3
    :goto_2
    const-string v1, "pref_third_arith_hdr_key"

    .line 591
    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_4

    .line 592
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    if-eqz v2, :cond_4

    .line 593
    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 594
    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/aj/e$4;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/aj/e$4;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_3

    .line 606
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 607
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/aj/e;->y:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 610
    :goto_3
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/m/d;->a(Lcom/android/preference/PreferenceGroup;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 612
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    invoke-virtual {v1}, Lcn/nubia/camera/m/d;->c()Lcn/nubia/camera/extendedUI/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 613
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->K:Lcn/nubia/camera/m/d;

    invoke-virtual {v1}, Lcn/nubia/camera/m/d;->c()Lcn/nubia/camera/extendedUI/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_5
    const-string v0, "pref_normal_ai_key"

    .line 616
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 617
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 618
    iput-object v0, p0, Lcn/nubia/camera/aj/e;->H:Lcom/android/preference/IconListPreference;

    .line 619
    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 620
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/e;->a(Lcom/android/preference/IconListPreference;)Z

    .line 621
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/aj/e$a;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/aj/e$a;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/IconListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_4

    .line 624
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 625
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->B:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 628
    :goto_4
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    if-eqz v0, :cond_8

    const-string v0, "pref_composition_key"

    .line 629
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_7

    .line 631
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 632
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->C:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/aj/e$5;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/aj/e$5;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_5

    .line 646
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 647
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->x:Lcom/android/common/ui/a;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_8
    :goto_5
    const-string v0, "pref_live_photo_key"

    .line 651
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    .line 652
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->A:Lcom/android/common/ui/k;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 653
    invoke-virtual {v1, v0}, Lcom/android/common/ui/k;->a(Lcom/android/preference/IconListPreference;)V

    .line 654
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->A:Lcom/android/common/ui/k;

    new-instance v2, Lcn/nubia/camera/aj/e$6;

    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcn/nubia/camera/aj/e$6;-><init>(Lcn/nubia/camera/aj/e;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v1, v2}, Lcom/android/common/ui/k;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_6

    .line 662
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 663
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->A:Lcom/android/common/ui/k;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/aj/e;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 666
    :goto_6
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/aj/e;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method

.method public j_()V
    .locals 4

    .line 1086
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "livePhoto"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->m()V

    const v0, 0x7f0f012a

    .line 1090
    invoke-virtual {p0, v0}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0f012b

    invoke-virtual {p0, v2}, Lcn/nubia/camera/aj/e;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public k_()V
    .locals 3

    .line 1096
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "livePhoto"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 3

    .line 796
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 798
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/aj/e;->i:Z

    .line 799
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->i:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "continuousshot"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->a(Z)V

    .line 812
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->i:Z

    if-eqz v0, :cond_0

    .line 813
    iput-boolean v1, p0, Lcn/nubia/camera/aj/e;->i:Z

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->c:Lcn/nubia/camera/n/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/n/b;->b(Z)V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->ad()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const-string v2, "continuousshot"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 260
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 261
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcn/nubia/camera/aj/e;->s:Z

    .line 266
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/f;->d()V

    .line 267
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->af()V

    .line 268
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Lcn/nubia/camera/aa/b;->e()V

    .line 270
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    invoke-virtual {v1}, Lcn/nubia/camera/aa/b;->b()V

    .line 271
    iput-object v2, p0, Lcn/nubia/camera/aj/e;->F:Lcn/nubia/camera/aa/b;

    .line 273
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->a:Lcn/nubia/camera/q/m;

    iget-object v3, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {v1, v3}, Lcn/nubia/camera/q/m;->b(Lcn/nubia/camera/q/m$a;)V

    .line 275
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {v1, v3}, Lcn/nubia/camera/ba/f;->b(Lcn/nubia/camera/ba/f$a;)V

    .line 276
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {v1, v3}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 277
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {p0, v1}, Lcn/nubia/camera/aj/e;->b(Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    invoke-virtual {v1}, Lcn/nubia/camera/b/k;->b()V

    .line 279
    iput-object v2, p0, Lcn/nubia/camera/aj/e;->G:Lcn/nubia/camera/b/k;

    .line 281
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->u:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ap()V

    .line 283
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/a;->b(Lcn/nubia/camera/a$a;)V

    .line 284
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1}, Lcn/nubia/camera/q/b;->r()V

    .line 285
    invoke-direct {p0, v0, v0}, Lcn/nubia/camera/aj/e;->b(ZZ)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 243
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 244
    iget-boolean v0, p0, Lcn/nubia/camera/aj/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    sget-object v0, Lcn/nubia/camera/aj/e;->k:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcn/nubia/camera/aj/e;->s:Z

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/aj/e;->E:Lcn/nubia/camera/aj/f;

    invoke-virtual {v1}, Lcn/nubia/camera/aj/f;->a()V

    .line 250
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ae()V

    .line 251
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ai()V

    .line 252
    invoke-direct {p0}, Lcn/nubia/camera/aj/e;->ao()V

    .line 253
    invoke-virtual {p0}, Lcn/nubia/camera/aj/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->N()Lcn/nubia/camera/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/a;->a(Lcn/nubia/camera/a$a;)V

    const/16 v1, 0x64

    .line 254
    iput v1, p0, Lcn/nubia/camera/aj/e;->N:I

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/aj/e;->b(ZZ)Z

    return-void
.end method

.method public r()V
    .locals 1

    .line 824
    invoke-super {p0}, Lcn/nubia/camera/q/i;->r()V

    .line 825
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->r()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcn/nubia/camera/aj/e;->o:Lcn/nubia/camera/aj/c;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->s()V

    .line 835
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/i;->s()V

    return-void
.end method
