.class public Lcn/nubia/camera/selfieflash/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/selfieflash/c$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Ljava/lang/Runnable;

.field private c:Lcn/nubia/camera/selfieflash/a;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/selfieflash/a;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/selfieflash/c;->d:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c;->a:Lcn/nubia/camera/ad/a;

    .line 31
    iput-object p2, p0, Lcn/nubia/camera/selfieflash/c;->c:Lcn/nubia/camera/selfieflash/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/selfieflash/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c;->b:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/selfieflash/c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c;->e:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/selfieflash/c;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcn/nubia/camera/selfieflash/c;->c()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/selfieflash/c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c;->c:Lcn/nubia/camera/selfieflash/a;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Thread;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/selfieflash/c;->e:Ljava/lang/Thread;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c;->c:Lcn/nubia/camera/selfieflash/a;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->c()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/selfieflash/c;)Lcn/nubia/camera/selfieflash/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/selfieflash/c;->c:Lcn/nubia/camera/selfieflash/a;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/selfieflash/c;->b:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/selfieflash/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/selfieflash/c;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c;->c:Lcn/nubia/camera/selfieflash/a;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/selfieflash/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/selfieflash/c$1;-><init>(Lcn/nubia/camera/selfieflash/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/selfieflash/c;->b()V

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c;->b:Ljava/lang/Runnable;

    .line 37
    iget-object p1, p0, Lcn/nubia/camera/selfieflash/c;->e:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 40
    :cond_0
    new-instance p1, Lcn/nubia/camera/selfieflash/c$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/selfieflash/c$a;-><init>(Lcn/nubia/camera/selfieflash/c;Lcn/nubia/camera/selfieflash/c$1;)V

    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c;->e:Ljava/lang/Thread;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
