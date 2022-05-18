.class public Lcn/nubia/camera/pretty/g;
.super Lcn/nubia/camera/q/i;
.source "SourceFile"


# instance fields
.field private k:Lcn/nubia/camera/pretty/e;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/nubia/camera/facedetection/b;

.field private n:Lcn/nubia/camera/v/b;

.field private o:Lcom/android/common/ui/a;

.field private p:Lcn/nubia/camera/extendedUI/g;

.field private q:Lcom/android/common/ui/a;

.field private r:Lcom/android/common/ui/RotateImageView;

.field private s:Lcn/nubia/camera/k/ah;

.field private t:Lcn/nubia/camera/pretty/b;

.field private u:Lcn/nubia/camera/m/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcn/nubia/camera/q/i;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcn/nubia/camera/af/b;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/i;-><init>(I)V

    .line 86
    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    new-instance p1, Lcn/nubia/camera/pretty/a/g;

    invoke-direct {p1}, Lcn/nubia/camera/pretty/a/g;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    new-instance p1, Lcn/nubia/camera/pretty/b/d;

    invoke-direct {p1}, Lcn/nubia/camera/pretty/b/d;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Lcn/nubia/camera/pretty/j;

    invoke-direct {p1}, Lcn/nubia/camera/pretty/j;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/pretty/b;
    .locals 2

    .line 400
    instance-of v0, p2, Lcn/nubia/camera/pretty/a/g;

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Lcn/nubia/camera/pretty/a/f;

    check-cast p2, Lcn/nubia/camera/pretty/a/g;

    invoke-direct {v0, p1, p2}, Lcn/nubia/camera/pretty/a/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/a/g;)V

    return-object v0

    .line 402
    :cond_0
    instance-of v0, p2, Lcn/nubia/camera/pretty/j;

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Lcn/nubia/camera/pretty/i;

    check-cast p2, Lcn/nubia/camera/pretty/j;

    invoke-direct {v0, p1, p2}, Lcn/nubia/camera/pretty/i;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/j;)V

    return-object v0

    .line 404
    :cond_1
    instance-of v0, p2, Lcn/nubia/camera/pretty/b/d;

    if-eqz v0, :cond_2

    .line 405
    new-instance v0, Lcn/nubia/camera/pretty/b/c;

    check-cast p2, Lcn/nubia/camera/pretty/b/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcn/nubia/camera/pretty/b/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/b/d;Z)V

    return-object v0

    .line 407
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not find approxiate shutter listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/pretty/e;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/af/b;)Lcn/nubia/camera/pretty/g;
    .locals 2

    .line 412
    new-instance v0, Lcn/nubia/camera/pretty/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/pretty/g;-><init>(ILcn/nubia/camera/af/b;)V

    return-object v0
.end method

.method private a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcn/nubia/camera/facedetection/b;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/facedetection/b;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    .line 172
    new-instance v1, Lcn/nubia/camera/pretty/g$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/pretty/g$2;-><init>(Lcn/nubia/camera/pretty/g;Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/facedetection/b$c;)V

    .line 180
    new-instance p1, Landroid/util/Size;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->d()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->c()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/facedetection/b;->a(Landroid/util/Size;)V

    .line 183
    new-instance v0, Lcn/nubia/camera/v/b;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, p1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 185
    iget-object p1, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/v/b;)V

    .line 186
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->ae()V

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 432
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private ae()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->u()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01dc

    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_front_smileshoot_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/nubia/camera/facedetection/b;->a(Z)V

    :cond_0
    return-void
.end method

.method private af()Z
    .locals 1

    .line 519
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->G()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private ag()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    new-instance v1, Lcn/nubia/camera/pretty/g$5;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/g$5;-><init>(Lcn/nubia/camera/pretty/g;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method private ah()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b$a;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

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

    .line 319
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802bd

    .line 320
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 321
    new-instance v1, Lcn/nubia/camera/g/g;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/camera/g/g;-><init>(Lcn/nubia/camera/aw/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v1, Lcom/android/common/ui/g;

    const v2, 0x7f0902ba

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

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

    .line 327
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcn/nubia/camera/extendedUI/d;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->o:Lcom/android/common/ui/a;

    const v1, 0x7f080131

    .line 329
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 330
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f090153

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->o:Lcom/android/common/ui/a;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

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

    .line 335
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    const v1, 0x7f080285

    .line 337
    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/g;->setImageResource(I)V

    .line 338
    new-instance v0, Lcom/android/common/ui/g;

    const/4 v1, -0x1

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
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

    .line 343
    new-instance v0, Lcn/nubia/camera/extendedUI/b;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->q:Lcom/android/common/ui/a;

    const v1, 0x7f080128

    .line 344
    invoke-virtual {v0, v1}, Lcom/android/common/ui/a;->setImageResource(I)V

    .line 345
    new-instance v0, Lcom/android/common/ui/g;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->q:Lcom/android/common/ui/a;

    const v2, 0x7f0900df

    invoke-direct {v0, v2, v1}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
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

    .line 349
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->av()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    :cond_2
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->r:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0800f5

    .line 356
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 357
    new-instance v0, Lcom/android/common/ui/g;

    const v1, 0x7f09012c

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->r:Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

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

    .line 362
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->b()Lcn/nubia/camera/extendedUI/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v1, Lcom/android/common/ui/g;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lcom/android/common/ui/g;-><init>(ILandroid/view/View;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    .line 437
    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-static {v0, p1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic i(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 63
    iget-object p0, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/pretty/g;)Lcom/android/preference/c;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->T()Lcn/nubia/camera/facedetection/a;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    invoke-virtual {v0}, Lcn/nubia/camera/facedetection/b;->b()V

    .line 195
    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 199
    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    :cond_1
    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/pretty/g;)Lcom/android/preference/c;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->u()Lcom/android/preference/c;

    move-result-object p0

    return-object p0
.end method

.method private o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/common/ui/g;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->c(Ljava/util/ArrayList;)V

    .line 309
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->d(Ljava/util/ArrayList;)V

    .line 310
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->e(Ljava/util/ArrayList;)V

    .line 311
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->g(Ljava/util/ArrayList;)V

    .line 312
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->f(Ljava/util/ArrayList;)V

    .line 313
    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->b(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public N()V
    .locals 1

    .line 378
    invoke-super {p0}, Lcn/nubia/camera/q/i;->N()V

    .line 379
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->c()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 6

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    new-instance v4, Lcn/nubia/camera/pretty/h;

    .line 231
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-direct {v4, p1, v1, v2, v3}, Lcn/nubia/camera/pretty/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p3

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 233
    iget-object p1, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->q()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 417
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 418
    iget-object p2, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    if-eqz p2, :cond_1

    .line 419
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

    .line 420
    iget-object p2, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    if-eqz p2, :cond_0

    .line 421
    invoke-virtual {p2}, Lcn/nubia/camera/v/b;->a()V

    const/4 p2, 0x0

    .line 422
    iput-object p2, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    .line 424
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

    .line 425
    new-instance p1, Lcn/nubia/camera/v/b;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    sget-object p4, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object p5, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {p1, p3, p2, p4, p5}, Lcn/nubia/camera/v/b;-><init>(IILcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    .line 426
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 427
    iget-object p1, p0, Lcn/nubia/camera/pretty/g;->m:Lcn/nubia/camera/facedetection/b;

    iget-object p2, p0, Lcn/nubia/camera/pretty/g;->n:Lcn/nubia/camera/v/b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/facedetection/b;->a(Lcn/nubia/camera/v/b;)V

    :cond_1
    return-void
.end method

.method public a(ZJJ)V
    .locals 0

    .line 442
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/i;->a(ZJJ)V

    .line 443
    iget-object p1, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    if-eqz p1, :cond_0

    .line 444
    invoke-virtual {p1}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method protected ab()V
    .locals 1

    .line 450
    invoke-super {p0}, Lcn/nubia/camera/q/i;->ab()V

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->d()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_1

    .line 385
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->ae()V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->J()Lcn/nubia/camera/q/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/q/h;->a()V

    :cond_1
    return-void
.end method

.method protected c()V
    .locals 4

    .line 116
    new-instance v0, Lcn/nubia/camera/m/d;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->aa()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/m/d;-><init>(Landroid/widget/RelativeLayout;Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    .line 117
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->o()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    .line 120
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Ljava/util/ArrayList;)Lcn/nubia/camera/q/m;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    invoke-direct {p0, v1, v2}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/pretty/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    .line 124
    new-instance v2, Lcn/nubia/camera/pretty/g$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/pretty/g$1;-><init>(Lcn/nubia/camera/pretty/g;)V

    invoke-interface {v1, v2}, Lcn/nubia/camera/pretty/b;->a(Lcn/nubia/camera/pretty/b$a;)V

    .line 151
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    .line 151
    invoke-static {v1, v2, v3}, Lcn/nubia/camera/q/b;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/q/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    .line 154
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    const v2, 0x7f09014d

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 156
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    iget-object v3, p0, Lcn/nubia/camera/pretty/g;->r:Lcom/android/common/ui/RotateImageView;

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/pretty/b;Lcom/android/common/ui/RotateImageView;)Lcn/nubia/camera/pretty/e;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    const v2, 0x7f09014e

    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 159
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v1, p0}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/q/g;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/q/g;)V

    .line 161
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/q/g;)V

    .line 163
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    invoke-direct {p0, v0}, Lcn/nubia/camera/pretty/g;->a(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    .line 166
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->ag()V

    return-void
.end method

.method protected d()[Lcn/nubia/camera/q/a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/camera/q/a;

    .line 221
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public e()Lcn/nubia/camera/k/ah;
    .locals 1

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->s:Lcn/nubia/camera/k/ah;

    return-object v0
.end method

.method protected e_()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcn/nubia/camera/q/i;->e_()V

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/e;->b(Lcn/nubia/camera/q/g;)V

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/pretty/e;->b(Lcn/nubia/camera/q/g;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/pretty/e;->b(Lcn/nubia/camera/q/g;)V

    .line 212
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->n()V

    .line 213
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcn/nubia/camera/m/d;->a()V

    .line 216
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->ah()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Lcn/nubia/camera/q/i;->g(Ljava/lang/String;)V

    const-string v0, "pref_bokeh_level_adjustable"

    .line 371
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcn/nubia/camera/pretty/g;->k:Lcn/nubia/camera/pretty/e;

    invoke-virtual {p1}, Lcn/nubia/camera/pretty/e;->c()V

    :cond_0
    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 8

    .line 466
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    const-string v1, "more_setting_special"

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "pref_camera_front_smileshoot_key"

    const-string v4, "pref_mirror_mode_key"

    const-string v5, "pref_refocus_after_capture_key"

    const-string v6, "pref_bokeh_level_adjustable"

    const-string v7, "pref_moresetting_picturesize_key"

    .line 469
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_c

    .line 479
    aget-object v4, v1, v3

    const-string v5, "pref_camera_front_smileshoot_key"

    .line 480
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "PrettyMemberFragment"

    if-eqz v5, :cond_2

    .line 481
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 482
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/camera/pretty/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 483
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v4, "Not support KEY_FRONT_SMILE_SHOOT"

    .line 484
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    const-string v5, "pref_mirror_mode_key"

    .line 486
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 487
    invoke-direct {p0}, Lcn/nubia/camera/pretty/g;->af()Z

    move-result v5

    if-nez v5, :cond_3

    .line 488
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->K()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v4, "Not support KEY_MIRROR_MODE"

    .line 489
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const-string v5, "pref_refocus_after_capture_key"

    .line 490
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_bokeh_level_adjustable"

    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 491
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/camera/pretty/g;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 492
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ak/a;->g()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 499
    :cond_6
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 500
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->aN()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v4, "Not support KEY_REFOCUS_AFTER_CAPTURE"

    .line 501
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v5, "pref_multi_focus_key"

    .line 502
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 503
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ak/a;->ad()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 504
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    const-string v4, "Not support KEY_MULTI_POINT_FOCUS"

    .line 505
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string v5, "pref_moresetting_picturesize_key"

    .line 506
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 507
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v4, "Not support KEY_MORESETTING_PICTURESIZE_KEY"

    .line 508
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 510
    :cond_a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    :goto_1
    const-string v4, "Not support KEY_REFOCUS_AFTER_CAPTURE && KEY_BOKEH_LEVEL_ADJUSTABLE"

    .line 496
    invoke-static {v6, v4}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 513
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 514
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected i_()V
    .locals 7

    .line 243
    invoke-super {p0}, Lcn/nubia/camera/q/i;->i_()V

    .line 244
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 245
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 247
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_selfie_flashmode_key"

    .line 248
    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    goto :goto_0

    :cond_0
    const-string v1, "pref_camera_flashmode_key"

    .line 250
    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    :goto_0
    if-eqz v1, :cond_1

    .line 253
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->o:Lcom/android/common/ui/a;

    if-eqz v2, :cond_2

    .line 254
    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 255
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->o:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/pretty/g$3;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/pretty/g$3;-><init>(Lcn/nubia/camera/pretty/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_1

    .line 264
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->o:Lcom/android/common/ui/a;

    if-eqz v1, :cond_2

    .line 265
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v1}, Lcn/nubia/camera/pretty/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 269
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    if-eqz v1, :cond_4

    const-string v1, "pref_pretty_switch_key"

    .line 270
    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_3

    .line 272
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/extendedUI/g;->a(Lcom/android/preference/IconListPreference;)V

    .line 273
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    new-instance v3, Lcn/nubia/camera/pretty/g$4;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcn/nubia/camera/pretty/g$4;-><init>(Lcn/nubia/camera/pretty/g;Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    invoke-virtual {v2, v3}, Lcn/nubia/camera/extendedUI/g;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_2

    .line 282
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/pretty/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    :cond_4
    :goto_2
    const-string v1, "pref_camera_delay_shoot_key"

    .line 286
    invoke-virtual {p0, v1}, Lcn/nubia/camera/pretty/g;->b(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_5

    .line 288
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->q:Lcom/android/common/ui/a;

    invoke-virtual {v2, v1}, Lcom/android/common/ui/a;->a(Lcom/android/preference/IconListPreference;)V

    .line 289
    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->q:Lcom/android/common/ui/a;

    new-instance v3, Lcn/nubia/camera/g/d;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/g;->S()Lcn/nubia/camera/j/b;

    move-result-object v5

    const v6, 0x7f0f01c6

    .line 290
    invoke-virtual {p0, v6}, Lcn/nubia/camera/pretty/g;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v1, v6}, Lcn/nubia/camera/g/d;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2, v3}, Lcom/android/common/ui/a;->setSwitcherListener(Lcom/android/common/ui/k$a;)V

    goto :goto_3

    .line 292
    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/pretty/g;->q:Lcom/android/common/ui/a;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/pretty/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 295
    :goto_3
    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/m/d;->a(Lcom/android/preference/PreferenceGroup;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->u:Lcn/nubia/camera/m/d;

    invoke-virtual {v1}, Lcn/nubia/camera/m/d;->c()Lcn/nubia/camera/extendedUI/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/pretty/g;->a(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 300
    :cond_6
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->a:Lcn/nubia/camera/q/m;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/q/m;->b(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method public m()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->p:Lcn/nubia/camera/extendedUI/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onPause()V

    .line 107
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->b:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/b;->d()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcn/nubia/camera/q/i;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g;->t:Lcn/nubia/camera/pretty/b;

    invoke-interface {v0}, Lcn/nubia/camera/pretty/b;->a()V

    return-void
.end method
