.class public abstract Lcn/nubia/camera/k/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/ah$a;,
        Lcn/nubia/camera/k/ah$b;,
        Lcn/nubia/camera/k/ah$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Ljava/lang/Object;

.field private E:Lcn/nubia/camera/k/ah$b;

.field private F:Lcn/nubia/camera/k/ah$b;

.field private G:Lcn/nubia/b/a$c;

.field private H:Z

.field private I:Ljava/lang/Object;

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Lcn/nubia/camera/selfieflash/a;

.field private P:Lcn/nubia/camera/selfieflash/c;

.field protected a:Lcn/nubia/camera/three_a/b/a;

.field private b:Lcn/nubia/b/a;

.field private c:Lcn/nubia/b/d;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:Lcn/nubia/camera/ad/a;

.field private f:Ljava/lang/String;

.field private g:Lcn/nubia/camera/k/y;

.field private h:Lcn/nubia/camera/an/a;

.field private i:Lcn/nubia/b/n;

.field private j:Lcn/nubia/camera/k/ab;

.field private k:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcn/nubia/camera/k/b/d;

.field private m:Lcn/nubia/camera/k/b/e;

.field private n:Lcn/nubia/camera/k/b/a;

.field private o:Lcn/nubia/camera/k/h;

.field private p:Lcn/nubia/b/b;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/k/ah$c;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcn/nubia/camera/k/ab$a;

.field private s:Z

.field private t:Lcn/nubia/camera/zoom/c;

.field private u:Landroid/os/Handler;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcn/nubia/camera/k/ab;

    invoke-direct {v0}, Lcn/nubia/camera/k/ab;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcn/nubia/camera/k/ah;->a:Lcn/nubia/camera/three_a/b/a;

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->s:Z

    .line 201
    iput-object v0, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    .line 526
    new-instance v0, Lcn/nubia/camera/k/ah$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/ah$9;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    .line 540
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->v:Z

    .line 541
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->w:Z

    .line 542
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->x:Z

    .line 543
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->y:Z

    .line 544
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->z:Z

    .line 545
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->A:Z

    const/4 v0, -0x1

    .line 546
    iput v0, p0, Lcn/nubia/camera/k/ah;->B:I

    .line 547
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->C:Z

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->D:Ljava/lang/Object;

    .line 892
    new-instance v0, Lcn/nubia/camera/k/ah$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/ah$3;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->G:Lcn/nubia/b/a$c;

    .line 1010
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->H:Z

    .line 1080
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    .line 1083
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->K:Z

    .line 1084
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->L:Z

    .line 1121
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->M:Z

    .line 1366
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->N:Z

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->y:Z

    return p0
.end method

.method static synthetic B(Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->R()V

    return-void
.end method

.method private H()Z
    .locals 2

    .line 487
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v0

    sget-object v1, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()Z
    .locals 2

    .line 491
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v0

    sget-object v1, Lcn/nubia/b/i;->a:Lcn/nubia/b/i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private J()Z
    .locals 3

    .line 495
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ab;->d()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 497
    invoke-virtual {v1}, Lcn/nubia/camera/k/ab;->e()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private K()Z
    .locals 3

    .line 501
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private L()Z
    .locals 3

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private M()Z
    .locals 3

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_selfie_flashmode_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selfie-torch"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private N()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private O()Z
    .locals 9

    .line 814
    iget-boolean v0, p0, Lcn/nubia/camera/k/ah;->s:Z

    const-string v1, "StreamController"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "takePicture in 1"

    .line 815
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 818
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    if-nez v0, :cond_1

    const-string v0, "takePicture in 2"

    .line 819
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 824
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eq v0, v3, :cond_2

    .line 825
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    if-eq v0, v3, :cond_2

    .line 826
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-ne v0, v3, :cond_3

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    if-eqz v0, :cond_4

    const-string v0, "takepictutre in 4"

    .line 830
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 835
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v6

    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "takePicture in 8"

    .line 839
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 853
    :cond_6
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 856
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ab;->c()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 857
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v3, Lcn/nubia/camera/k/a/a$b;->B:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v3}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-gtz v0, :cond_8

    .line 858
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->N()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->M()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v6

    .line 859
    :goto_2
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->K()Z

    move-result v3

    .line 860
    iget-object v4, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v4}, Lcn/nubia/camera/k/ab;->c()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    move v4, v2

    goto :goto_3

    :cond_9
    move v4, v6

    :goto_3
    if-nez v3, :cond_b

    if-nez v4, :cond_b

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move v0, v6

    goto :goto_5

    :cond_b
    :goto_4
    move v0, v2

    .line 862
    :goto_5
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->J()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    const-string v0, "takePicture in 16"

    .line 864
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    return v6
.end method

.method private P()V
    .locals 7

    .line 1307
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StreamController"

    const-string v1, "lock3ACapture"

    .line 1310
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1313
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1316
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v3

    new-array v4, v2, [Lcn/nubia/b/m;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v2, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 1319
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1316
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/b/a;->b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private Q()V
    .locals 7

    .line 1355
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    if-nez v0, :cond_0

    return-void

    .line 1358
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v0

    .line 1359
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1360
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v3

    new-array v4, v2, [Lcn/nubia/b/m;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v2, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 1363
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1360
    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    return-void
.end method

.method private R()V
    .locals 7

    .line 1393
    iget-boolean v0, p0, Lcn/nubia/camera/k/ah;->N:Z

    if-nez v0, :cond_0

    return-void

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v0

    .line 1397
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1402
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcn/nubia/b/m;

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 1405
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1402
    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    return-void
.end method

.method private declared-synchronized S()Lcn/nubia/camera/selfieflash/a;
    .locals 2

    monitor-enter p0

    .line 1412
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1413
    monitor-exit p0

    return-object v0

    .line 1415
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->O:Lcn/nubia/camera/selfieflash/a;

    if-nez v0, :cond_2

    .line 1417
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1419
    new-instance v0, Lcn/nubia/camera/selfieflash/d;

    invoke-direct {v0, p0}, Lcn/nubia/camera/selfieflash/d;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->O:Lcn/nubia/camera/selfieflash/a;

    goto :goto_0

    .line 1421
    :cond_1
    new-instance v0, Lcn/nubia/camera/selfieflash/b;

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1, p0}, Lcn/nubia/camera/selfieflash/b;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->O:Lcn/nubia/camera/selfieflash/a;

    .line 1424
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->O:Lcn/nubia/camera/selfieflash/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized T()Lcn/nubia/camera/selfieflash/c;
    .locals 3

    monitor-enter p0

    .line 1429
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1430
    monitor-exit p0

    return-object v0

    .line 1432
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->P:Lcn/nubia/camera/selfieflash/c;

    if-nez v0, :cond_1

    .line 1433
    new-instance v0, Lcn/nubia/camera/selfieflash/c;

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->S()Lcn/nubia/camera/selfieflash/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/selfieflash/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/selfieflash/a;)V

    iput-object v0, p0, Lcn/nubia/camera/k/ah;->P:Lcn/nubia/camera/selfieflash/c;

    .line 1435
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->P:Lcn/nubia/camera/selfieflash/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcn/nubia/camera/k/ah;->B:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;Lcn/nubia/b/a;)Lcn/nubia/b/a;
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/k/ah;->b:Lcn/nubia/b/a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;)Lcom/a/a/a/d;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    return-object p0
.end method

.method private a(I)V
    .locals 6

    .line 1368
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    if-nez v0, :cond_0

    return-void

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    .line 1375
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 1384
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v1

    new-array v4, v3, [Lcn/nubia/b/m;

    iget-object v5, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v3, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 1387
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 1384
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 1388
    iput-boolean v3, p0, Lcn/nubia/camera/k/ah;->N:Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/ah;->d(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return-void
.end method

.method private a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 5

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->v:Z

    .line 591
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->z:Z

    .line 592
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/camera/k/ah$10;

    invoke-direct {v2, p0, p1, p2, p3}, Lcn/nubia/camera/k/ah$10;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    .line 608
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x320

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0xfa0

    .line 593
    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    iget-object v2, p0, Lcn/nubia/camera/k/ah;->r:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 611
    new-instance v1, Lcn/nubia/camera/k/ah$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/camera/k/ah$11;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    iput-object v1, p0, Lcn/nubia/camera/k/ah;->r:Lcn/nubia/camera/k/ab$a;

    .line 668
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 670
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->K()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 671
    iput-boolean p2, p0, Lcn/nubia/camera/k/ah;->v:Z

    goto :goto_1

    .line 672
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->c()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 673
    iput-boolean p2, p0, Lcn/nubia/camera/k/ah;->v:Z

    goto :goto_1

    .line 676
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->v:Z

    .line 685
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->Q()V

    :goto_1
    return-void
.end method

.method private a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;II)V
    .locals 4

    .line 690
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->H()Z

    move-result p4

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_2

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->I()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p4}, Lcn/nubia/camera/k/ab;->f()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->I()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 698
    iget-object p4, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {p4}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p4

    sget-object v3, Lcn/nubia/camera/k/x$a;->c:Lcn/nubia/camera/k/x$a;

    invoke-virtual {p4, v3}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/k/x$a;)V

    .line 699
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->k()V

    .line 701
    :cond_1
    iput-boolean v2, p0, Lcn/nubia/camera/k/ah;->C:Z

    .line 702
    iput-boolean v2, p0, Lcn/nubia/camera/k/ah;->A:Z

    goto :goto_2

    .line 691
    :cond_2
    :goto_0
    iget-object p4, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {p4}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p4

    sget-object v3, Lcn/nubia/camera/k/x$a;->b:Lcn/nubia/camera/k/x$a;

    invoke-virtual {p4, v3}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/k/x$a;)V

    .line 692
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->k()V

    .line 693
    invoke-direct {p0, p5}, Lcn/nubia/camera/k/ah;->a(I)V

    .line 694
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->C:Z

    .line 695
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcn/nubia/camera/ba/b;->f(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object p4, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p4

    iget-object v3, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-static {p4, v3}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result p4

    if-ne p4, v0, :cond_3

    move p4, v1

    goto :goto_1

    :cond_3
    move p4, v2

    :goto_1
    iput-boolean p4, p0, Lcn/nubia/camera/k/ah;->A:Z

    .line 704
    :goto_2
    iget-boolean p4, p0, Lcn/nubia/camera/k/ah;->A:Z

    if-eqz p4, :cond_4

    .line 705
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCaptureWaitAf: "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-boolean v3, p0, Lcn/nubia/camera/k/ah;->A:Z

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v3, "; aeState: "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p5}, Lcn/nubia/camera/k/ab;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "StreamController"

    invoke-static {p5, p4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_4
    iput v0, p0, Lcn/nubia/camera/k/ah;->B:I

    .line 709
    iput-boolean v2, p0, Lcn/nubia/camera/k/ah;->v:Z

    .line 710
    iput-boolean v2, p0, Lcn/nubia/camera/k/ah;->z:Z

    .line 711
    iget-object p4, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 712
    iget-object p4, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    new-instance p5, Lcn/nubia/camera/k/ah$12;

    invoke-direct {p5, p0, p1, p2, p3}, Lcn/nubia/camera/k/ah$12;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    .line 727
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x320

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0xfa0

    .line 712
    :goto_3
    invoke-virtual {p4, p5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 729
    iget-object p4, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    iget-object p5, p0, Lcn/nubia/camera/k/ah;->r:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p4, p5}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 730
    new-instance p4, Lcn/nubia/camera/k/ah$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcn/nubia/camera/k/ah$2;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    iput-object p4, p0, Lcn/nubia/camera/k/ah;->r:Lcn/nubia/camera/k/ab$a;

    .line 795
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1, p4}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 797
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->K()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 798
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->v:Z

    goto :goto_4

    .line 799
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->c()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 803
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->v:Z

    :cond_7
    :goto_4
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k/ah;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->z:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->D:Ljava/lang/Object;

    return-object p0
.end method

.method private varargs b(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 5

    .line 1172
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/a/a$b;->ac:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->P()V

    .line 1177
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->b()V

    .line 1178
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    const-wide/16 v3, 0x2

    mul-long/2addr v0, v3

    .line 1179
    sget-wide v3, Lcn/nubia/camera/aq/f;->h:J

    div-long/2addr v0, v3

    long-to-int v0, v0

    const/4 v1, 0x2

    if-ge v0, v2, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/k/ah;->C:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    .line 1187
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->d()Lcn/nubia/camera/k/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    new-instance v1, Lcn/nubia/camera/k/ah$a;

    const/4 v2, 0x0

    .line 1188
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v3

    invoke-direct {v1, p0, v2, p2, v3}, Lcn/nubia/camera/k/ah$a;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;Lcn/nubia/camera/selfieflash/c;)V

    .line 1189
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    .line 1186
    invoke-virtual {v0, p3, v1, p2}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    if-eqz p1, :cond_3

    .line 1191
    invoke-interface {p1}, Lcn/nubia/camera/k/q;->a()V

    goto :goto_1

    .line 1180
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    .line 1181
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->d()Lcn/nubia/camera/k/ad;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    new-instance v1, Lcn/nubia/camera/k/ah$a;

    .line 1182
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcn/nubia/camera/k/ah$a;-><init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;Lcn/nubia/camera/selfieflash/c;)V

    .line 1183
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 1180
    invoke-virtual {v0, p3, v1, p1}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/k/ah;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->v:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->z:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/k/ah;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->A:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ab;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    return-object p0
.end method

.method private final varargs d(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 6

    .line 552
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 558
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 560
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->c()I

    move-result v5

    .line 561
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->d()I

    move-result v4

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TAKE-INIT state: [ae_lock: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->K()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isafRunning: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->J()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; af_state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 563
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/k/ab;->b(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; pd_state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 564
    invoke-virtual {v0}, Lcn/nubia/camera/k/ab;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; ae_state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 565
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/k/ab;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StreamController"

    .line 562
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->K()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->w:Z

    .line 568
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->L()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->x:Z

    const/4 p1, 0x0

    .line 569
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->z:Z

    .line 571
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->O()Z

    move-result v0

    .line 572
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->C:Z

    .line 574
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ab;->h()V

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 578
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    goto :goto_1

    .line 580
    :cond_2
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcn/nubia/camera/ba/a;->C()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 583
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 581
    invoke-direct/range {v0 .. v5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;II)V

    .line 586
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    return-void
.end method

.method private e()Z
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->N()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->M()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->J()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->v:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/n;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/k/ah;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->A:Z

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/k/ah;)I
    .locals 0

    .line 59
    iget p0, p0, Lcn/nubia/camera/k/ah;->B:I

    return p0
.end method

.method static synthetic m(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/h;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->o:Lcn/nubia/camera/k/h;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->F:Lcn/nubia/camera/k/ah$b;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->b:Lcn/nubia/b/a;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->E:Lcn/nubia/camera/k/ah$b;

    return-object p0
.end method

.method static synthetic q(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/y;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/d;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/b/e;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->m:Lcn/nubia/camera/k/b/e;

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/a$c;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/k/ah;->G:Lcn/nubia/b/a$c;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->C:Z

    return p0
.end method

.method static synthetic x(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/selfieflash/c;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->w:Z

    return p0
.end method

.method static synthetic z(Lcn/nubia/camera/k/ah;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/camera/k/ah;->x:Z

    return p0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    if-eqz v1, :cond_0

    const-string v1, "StreamController"

    const-string v2, "pendingClose"

    .line 1089
    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1090
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->K:Z

    .line 1092
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected B()Z
    .locals 4

    .line 1130
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/k/ah;->K:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcn/nubia/camera/k/ah;->M:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "StreamController"

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG] guardIn pendingUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/k/ah;->J:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget v1, p0, Lcn/nubia/camera/k/ah;->J:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/camera/k/ah;->J:I

    .line 1138
    monitor-exit v0

    return v2

    :cond_1
    :goto_0
    const-string v1, "StreamController"

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG] CameraDevice has closed CameraDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; DeviceClosePending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/camera/k/ah;->K:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; PreviewSurfaceDestroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/camera/k/ah;->M:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1134
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected C()V
    .locals 4

    .line 1143
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 1144
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/k/ah;->J:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/camera/k/ah;->J:I

    const-string v1, "StreamController"

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DEBUG] guardOut pendingUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/k/ah;->J:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget v1, p0, Lcn/nubia/camera/k/ah;->J:I

    if-gtz v1, :cond_0

    .line 1147
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 1148
    iput v1, p0, Lcn/nubia/camera/k/ah;->J:I

    .line 1150
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected D()[Lcn/nubia/b/m;
    .locals 3

    .line 1165
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcn/nubia/b/m;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1458
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->f:Ljava/lang/String;

    return-object v0
.end method

.method public G()Lcn/nubia/camera/k/b/d;
    .locals 1

    .line 1462
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->l:Lcn/nubia/camera/k/b/d;

    return-object v0
.end method

.method protected a(Landroid/util/Size;Landroid/hardware/camera2/CameraCharacteristics;I)Landroid/util/Size;
    .locals 7

    .line 405
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->y()Lcn/nubia/b/b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/nubia/b/b;->b(I)[Landroid/util/Size;

    move-result-object p2

    .line 407
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    mul-int/2addr p3, v0

    .line 408
    array-length v0, p2

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 409
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_0

    return-object v4

    .line 413
    :cond_0
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    if-le v2, v5, :cond_1

    if-le v5, p3, :cond_1

    move-object v1, v4

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected abstract a()V
.end method

.method public a(F)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->l:Lcn/nubia/camera/k/b/d;

    new-instance v1, Lcn/nubia/camera/k/ah$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/k/ah$5;-><init>(Lcn/nubia/camera/k/ah;F)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/d;->a(Lcn/nubia/camera/k/b/a;)V

    :cond_0
    return-void
.end method

.method protected final varargs a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 8

    .line 449
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->c(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->S()Lcn/nubia/camera/selfieflash/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/selfieflash/a;)V

    .line 452
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v0

    new-instance v7, Lcn/nubia/camera/k/ah$6;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/k/ah$6;-><init>(Lcn/nubia/camera/k/ah;ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    invoke-virtual {v0, v7}, Lcn/nubia/camera/selfieflash/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v7, Lcn/nubia/camera/k/ah$7;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/k/ah$7;-><init>(Lcn/nubia/camera/k/ah;ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    invoke-virtual {v0, v7}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    :goto_0
    return-void
.end method

.method protected final varargs a(I[Lcn/nubia/b/m;)V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V

    return-void
.end method

.method protected final a(Lcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/b/n;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/util/Size;",
            "Lcn/nubia/camera/k/ah$b;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    .line 363
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 7

    .line 130
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Ljava/lang/String;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 2

    const-string v0, "StreamController"

    const-string v1, "init"

    .line 141
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/ah;->L:Z

    if-eqz v1, :cond_0

    const-string p1, "StreamController"

    const-string p2, "The notifyStreamCloseCalled has called"

    .line 144
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit v0

    return-void

    .line 147
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    .line 149
    iput-object p2, p0, Lcn/nubia/camera/k/ah;->f:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcn/nubia/camera/k/h;->a(Ljava/lang/String;)Lcn/nubia/b/d;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    .line 151
    iput-object p3, p0, Lcn/nubia/camera/k/ah;->d:Landroid/graphics/SurfaceTexture;

    .line 152
    iput-object p4, p0, Lcn/nubia/camera/k/ah;->h:Lcn/nubia/camera/an/a;

    .line 153
    invoke-virtual {p5}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/k/ah;->f:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-object p2, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {p3}, Lcn/nubia/camera/k/y;->l()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 158
    :cond_1
    new-instance p2, Lcn/nubia/camera/k/y;

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcn/nubia/camera/k/ah;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-direct {p2, p3, p1, p5, p4}, Lcn/nubia/camera/k/y;-><init>(Ljava/lang/String;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/three_a/b/a;)V

    iput-object p2, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    .line 159
    invoke-virtual {p2}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/zoom/c;)V

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/k/ah;->a:Lcn/nubia/camera/three_a/b/a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/x;->b(Lcn/nubia/camera/three_a/b/a;)V

    .line 163
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    if-eqz p1, :cond_3

    .line 164
    iget-object p2, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    iget-object p3, p0, Lcn/nubia/camera/k/ah;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcn/nubia/camera/zoom/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/k/y;->a(F)V

    .line 166
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-virtual {p6}, Lcn/nubia/camera/k/h;->r()Lcom/a/a/a/d;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    .line 168
    iput-object p6, p0, Lcn/nubia/camera/k/ah;->o:Lcn/nubia/camera/k/h;

    .line 169
    new-instance p1, Lcn/nubia/camera/k/b/d;

    iget-object p2, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    invoke-direct {p1, p2}, Lcn/nubia/camera/k/b/d;-><init>(Lcom/a/a/a/d;)V

    iput-object p1, p0, Lcn/nubia/camera/k/ah;->l:Lcn/nubia/camera/k/b/d;

    .line 170
    new-instance p1, Lcn/nubia/camera/k/b/e;

    iget-object p2, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    invoke-direct {p1, p2}, Lcn/nubia/camera/k/b/e;-><init>(Lcom/a/a/a/d;)V

    iput-object p1, p0, Lcn/nubia/camera/k/ah;->m:Lcn/nubia/camera/k/b/e;

    .line 171
    new-instance p1, Lcn/nubia/camera/k/ah$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/k/ah$1;-><init>(Lcn/nubia/camera/k/ah;)V

    iput-object p1, p0, Lcn/nubia/camera/k/ah;->n:Lcn/nubia/camera/k/b/a;

    const/4 p1, 0x2

    .line 186
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->s:Z

    .line 187
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->F()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/ah;->p:Lcn/nubia/b/b;

    .line 188
    invoke-virtual {p6, p0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/r;)V

    .line 189
    iput-boolean p3, p0, Lcn/nubia/camera/k/ah;->M:Z

    return-void

    :catchall_0
    move-exception p1

    .line 166
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 154
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StreamController\'s camera id don\'t match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 147
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/ab$a;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/ab$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/ad;)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/y;->a(Lcn/nubia/camera/k/ad;)V

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->l:Lcn/nubia/camera/k/b/d;

    iget-object v0, p0, Lcn/nubia/camera/k/ah;->n:Lcn/nubia/camera/k/b/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/b/d;->a(Lcn/nubia/camera/k/b/a;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcn/nubia/camera/k/ad;I[Lcn/nubia/b/m;)V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "StreamController"

    const-string p2, "Preview is paused."

    .line 424
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 431
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    .line 436
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object p3

    invoke-interface {p3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    .line 433
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/b/a;->b(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    .line 441
    throw p1
.end method

.method public a(Lcn/nubia/camera/k/ah$b;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcn/nubia/camera/k/ah;->F:Lcn/nubia/camera/k/ah$b;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/ah$c;)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/b;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/b;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/k;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ab;->a(Lcn/nubia/camera/k/k;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/three_a/b/a;)V
    .locals 1

    .line 193
    iput-object p1, p0, Lcn/nubia/camera/k/ah;->a:Lcn/nubia/camera/three_a/b/a;

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/y;->a(Lcn/nubia/camera/three_a/b/a;)V

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcn/nubia/camera/zoom/c;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/zoom/c;)V

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/nubia/b/n;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;I",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "Lcn/nubia/camera/k/ah$b;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 371
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->c()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, p4

    if-eq v1, v3, :cond_2

    move-object v1, p2

    move v7, v2

    goto :goto_0

    :cond_1
    move v1, p4

    :cond_2
    move v7, v1

    move-object v1, p2

    .line 377
    :goto_0
    iput-object v1, v0, Lcn/nubia/camera/k/ah;->i:Lcn/nubia/b/n;

    move-object/from16 v1, p7

    .line 378
    iput-object v1, v0, Lcn/nubia/camera/k/ah;->E:Lcn/nubia/camera/k/ah$b;

    .line 379
    iget-object v1, v0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v4, Lcn/nubia/camera/d/b;->c:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 380
    iget-object v1, v0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ab;->b()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 381
    new-instance v4, Landroid/hardware/camera2/params/InputConfiguration;

    .line 382
    invoke-virtual/range {p6 .. p6}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Landroid/util/Size;->getHeight()I

    move-result v6

    const/16 v8, 0x23

    invoke-direct {v4, v5, v6, v8}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    move-object v5, v4

    goto :goto_1

    :cond_3
    move-object v5, v1

    .line 384
    :goto_1
    iget-object v4, v0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v4}, Lcn/nubia/camera/k/y;->a()Z

    .line 385
    iget-object v4, v0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v4}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v4

    iget-object v6, v0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    invoke-virtual {v4, v6, v3, v1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 386
    iget-object v4, v0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    iget-object v8, v0, Lcn/nubia/camera/k/ah;->G:Lcn/nubia/b/a$c;

    sget-object v6, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    .line 388
    invoke-interface {v6}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/os/Handler;

    move-object v6, p3

    move-object v9, v1

    .line 386
    invoke-virtual/range {v4 .. v10}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILcn/nubia/b/a$c;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V

    .line 393
    :try_start_0
    sget-object v4, Lcn/nubia/camera/k/a/a$b;->E:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    if-eqz v1, :cond_4

    .line 394
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v2, v3

    .line 400
    :catch_0
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Z)V

    .line 401
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    return-void
.end method

.method protected final a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcn/nubia/b/n;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/b/m;",
            ">;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            "Lcn/nubia/camera/k/ah$b;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 358
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/camera/k/ah;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

.method protected abstract b()V
.end method

.method protected final varargs b(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 8

    .line 474
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/k/b/b;

    new-instance v7, Lcn/nubia/camera/k/ah$8;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/k/ah$8;-><init>(Lcn/nubia/camera/k/ah;ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    invoke-virtual {v0, v7}, Lcn/nubia/camera/k/b/b;->a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;

    return-void
.end method

.method public b(Lcn/nubia/camera/k/ab$a;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/k/ad;)V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/camera/k/ad;)Z

    .line 233
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->D()[Lcn/nubia/b/m;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->D()[Lcn/nubia/b/m;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 238
    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 244
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "StreamController"

    const-string v1, "release"

    .line 316
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->f()V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->L:Z

    .line 319
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->H:Z

    .line 320
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/k/ah;->H:Z

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/y;->a(Z)V

    .line 321
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->m:Lcn/nubia/camera/k/b/e;

    invoke-virtual {v1}, Lcn/nubia/camera/k/b/e;->c()V

    .line 322
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/k/ah$c;

    .line 323
    invoke-interface {v2}, Lcn/nubia/camera/k/ah$c;->a()V

    goto :goto_0

    .line 325
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    iget-object v2, p0, Lcn/nubia/camera/k/ah;->r:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/ab;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 327
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ab;->i()V

    .line 328
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->z:Z

    .line 329
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;->T()Lcn/nubia/camera/selfieflash/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/selfieflash/c;->a()V

    .line 332
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->X()V

    return-void
.end method

.method protected final varargs c(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 875
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 881
    iput-boolean p1, p0, Lcn/nubia/camera/k/ah;->w:Z

    .line 882
    invoke-direct {p0, p2, p3, p4}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    .line 883
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    return-void
.end method

.method protected d()Lcn/nubia/camera/k/ad;
    .locals 1

    .line 1453
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 6

    const-string v0, "StreamController"

    const-string v1, "notifyCameraClose"

    .line 1097
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 1099
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->u:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1100
    iget v1, p0, Lcn/nubia/camera/k/ah;->J:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 1106
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->L:Z

    .line 1107
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->K:Z

    const-string v1, "StreamController"

    const-string v4, "wait close guard clear..."

    .line 1108
    invoke-static {v1, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1112
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1114
    :goto_0
    iput-object v2, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    .line 1115
    iput-object v2, p0, Lcn/nubia/camera/k/ah;->b:Lcn/nubia/b/a;

    .line 1116
    iput-boolean v3, p0, Lcn/nubia/camera/k/ah;->K:Z

    const-string v1, "StreamController"

    const-string v2, "streamController device close success"

    .line 1117
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    monitor-exit v0

    return-void

    .line 1101
    :cond_1
    :goto_1
    iput-object v2, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    .line 1102
    iput-boolean v3, p0, Lcn/nubia/camera/k/ah;->K:Z

    const-string v1, "StreamController"

    const-string v2, "streamController device close success"

    .line 1103
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "StreamController"

    const-string v2, "notify preview surface destroy"

    .line 1124
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1125
    iput-boolean v1, p0, Lcn/nubia/camera/k/ah;->M:Z

    .line 1126
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()J
    .locals 2

    .line 1445
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    if-eqz v0, :cond_0

    .line 1446
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public j()Lcn/nubia/camera/zoom/c;
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->t:Lcn/nubia/camera/zoom/c;

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->q()V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->l:Lcn/nubia/camera/k/b/d;

    iget-object v1, p0, Lcn/nubia/camera/k/ah;->n:Lcn/nubia/camera/k/b/a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/d;->a(Lcn/nubia/camera/k/b/a;)V

    goto :goto_0

    :cond_1
    const-string v0, "StreamController"

    const-string v1, "mParametersSetter uninitialized.."

    .line 261
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public l()Lcn/nubia/camera/ad/a;
    .locals 1

    .line 946
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    return-object v0
.end method

.method public m()Lcn/nubia/camera/k/y;
    .locals 1

    .line 950
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    return-object v0
.end method

.method protected n()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 954
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->d:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected o()Lcn/nubia/b/d;
    .locals 1

    .line 958
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->c:Lcn/nubia/b/d;

    return-object v0
.end method

.method protected p()Lcn/nubia/b/a;
    .locals 1

    .line 962
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->b:Lcn/nubia/b/a;

    return-object v0
.end method

.method public final q()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->I:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/ah;->L:Z

    if-eqz v1, :cond_0

    const-string v1, "StreamController"

    const-string v2, "asyncConfigSession, notifyStreamCloseCalled has called"

    .line 969
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    monitor-exit v0

    return-void

    .line 972
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ab;->b()V

    .line 974
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->g:Lcn/nubia/camera/k/y;

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->X()V

    .line 976
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->c:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 977
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->m:Lcn/nubia/camera/k/b/e;

    new-instance v1, Lcn/nubia/camera/k/ah$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/k/ah$4;-><init>(Lcn/nubia/camera/k/ah;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/b/e;->a(Lcn/nubia/camera/k/b/a;)V

    .line 995
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->m:Lcn/nubia/camera/k/b/e;

    invoke-virtual {v0}, Lcn/nubia/camera/k/b/e;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 972
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method protected s()Z
    .locals 1

    .line 1012
    iget-boolean v0, p0, Lcn/nubia/camera/k/ah;->H:Z

    return v0
.end method

.method public t()V
    .locals 5

    .line 1016
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->D()[Lcn/nubia/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "StreamController"

    const-string v1, "pausePreview"

    .line 1019
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->H:Z

    .line 1021
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/k/ah;->H:Z

    invoke-virtual {v1, v2}, Lcn/nubia/camera/k/y;->a(Z)V

    .line 1023
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1028
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/a;->i()V

    .line 1030
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->i()Lcn/nubia/camera/k/ad;

    move-result-object v1

    .line 1031
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 1032
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->p()Lcn/nubia/b/a;

    move-result-object v2

    .line 1033
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->o()Lcn/nubia/b/d;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->D()[Lcn/nubia/b/m;

    move-result-object v4

    .line 1032
    invoke-virtual {v1, v3, v0, v4}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 1035
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 1032
    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1037
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    :cond_2
    :goto_1
    return-void
.end method

.method public u()V
    .locals 2

    .line 1044
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StreamController"

    const-string v1, "resumePreview"

    .line 1047
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1048
    iput-boolean v0, p0, Lcn/nubia/camera/k/ah;->H:Z

    .line 1049
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/k/ah;->H:Z

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/y;->a(Z)V

    .line 1051
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->a()V

    .line 1052
    invoke-virtual {p0}, Lcn/nubia/camera/k/ah;->C()V

    return-void
.end method

.method public v()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->o:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->s()Lcom/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->o:Lcn/nubia/camera/k/h;

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->t()Lcom/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->k:Lcom/a/a/a/d;

    return-object v0
.end method

.method public y()Lcn/nubia/b/b;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->p:Lcn/nubia/b/b;

    return-object v0
.end method

.method public z()Lcn/nubia/camera/k/ab;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcn/nubia/camera/k/ah;->j:Lcn/nubia/camera/k/ab;

    return-object v0
.end method
