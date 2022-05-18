.class public Lcn/nubia/camera/aj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Lcn/nubia/camera/ad/a;

.field private e:Lcn/nubia/camera/k/ah;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/camera/aj/b;->b:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/aj/b;->c:Z

    .line 66
    new-instance v0, Lcn/nubia/camera/aj/b$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/aj/b$1;-><init>(Lcn/nubia/camera/aj/b;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/aj/b;->d:Lcn/nubia/camera/ad/a;

    .line 33
    iput-object p2, p0, Lcn/nubia/camera/aj/b;->e:Lcn/nubia/camera/k/ah;

    const-string p1, "FacePrettyControl"

    const-string p2, "FacePrettyControl init"

    .line 34
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/b;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/aj/b;->e:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aj/g;

    if-nez v0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aj/g;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aj/b;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/aj/b;->c:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/aj/b;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/aj/b;->b:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/aj/b;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcn/nubia/camera/aj/b;->b:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/aj/b;->d:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/aj/b;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/aj/b;->e:Lcn/nubia/camera/k/ah;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcn/nubia/camera/aj/b;->c:Z

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Lcn/nubia/camera/aj/b;->a(Z)V

    .line 41
    iput-boolean v0, p0, Lcn/nubia/camera/aj/b;->b:Z

    const-string v0, "FacePrettyControl"

    const-string v1, "FacePrettyControl release"

    .line 42
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 0

    .line 47
    iget-boolean p1, p0, Lcn/nubia/camera/aj/b;->c:Z

    if-eqz p1, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object p1, p0, Lcn/nubia/camera/aj/b;->a:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
