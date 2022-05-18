.class public Lcn/nubia/camera/three_a/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/three_a/ui/h;

.field private c:Lcn/nubia/camera/facedetection/a;

.field private d:Lcn/nubia/camera/three_a/ui/d;

.field private e:Lcn/nubia/camera/k/k;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/three_a/ui/h;Lcn/nubia/camera/facedetection/a;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->e:Lcn/nubia/camera/k/k;

    .line 92
    new-instance v0, Lcn/nubia/camera/three_a/ui/f$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/three_a/ui/f$3;-><init>(Lcn/nubia/camera/three_a/ui/f;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->f:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    .line 29
    iput-object p2, p0, Lcn/nubia/camera/three_a/ui/f;->b:Lcn/nubia/camera/three_a/ui/h;

    .line 30
    iput-object p3, p0, Lcn/nubia/camera/three_a/ui/f;->c:Lcn/nubia/camera/facedetection/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/h;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/f;->b:Lcn/nubia/camera/three_a/ui/h;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/three_a/ui/f;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/f;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/d;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Lcn/nubia/camera/three_a/ui/d;

    invoke-direct {v0}, Lcn/nubia/camera/three_a/ui/d;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    .line 58
    new-instance v1, Lcn/nubia/camera/three_a/ui/f$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/three_a/ui/f$1;-><init>(Lcn/nubia/camera/three_a/ui/f;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/d;->a(Lcn/nubia/camera/three_a/ui/d$a;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 65
    new-instance v0, Lcn/nubia/camera/three_a/ui/f$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/three_a/ui/f$2;-><init>(Lcn/nubia/camera/three_a/ui/f;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->e:Lcn/nubia/camera/k/k;

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/f;->c:Lcn/nubia/camera/facedetection/a;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/facedetection/a;->a(Lcn/nubia/camera/k/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->b:Lcn/nubia/camera/three_a/ui/h;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/h;->p()V

    .line 36
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/f;->a:Lcn/nubia/camera/ad/a;

    invoke-static {v1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 43
    invoke-direct {p0}, Lcn/nubia/camera/three_a/ui/f;->c()V

    .line 45
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/d;->b(Z)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/three_a/ui/f;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/d;->a()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->d:Lcn/nubia/camera/three_a/ui/d;

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/f;->c:Lcn/nubia/camera/facedetection/a;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/f;->e:Lcn/nubia/camera/k/k;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/facedetection/a;->b(Lcn/nubia/camera/k/k;)V

    return-void
.end method
