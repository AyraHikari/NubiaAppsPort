.class public Lcn/nubia/camera/k/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CameraOpenHandler"

    .line 29
    invoke-static {v0}, Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->b:Lcom/a/a/a/d;

    const-string v0, "CameraCloseHandler"

    .line 30
    invoke-static {v0}, Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->c:Lcom/a/a/a/d;

    const-string v0, "CameraOperationHandler"

    .line 31
    invoke-static {v0}, Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    const-string v0, "RequestHandler"

    .line 32
    invoke-static {v0}, Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->e:Lcom/a/a/a/d;

    const-string v0, "ImageHandler"

    .line 33
    invoke-static {v0}, Lcn/nubia/camera/k/n;->a(Ljava/lang/String;)Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->f:Lcom/a/a/a/d;

    .line 34
    invoke-static {}, Lcn/nubia/camera/k/n;->a()Lcom/a/a/a/d;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/k/n;->a:Lcom/a/a/a/d;

    return-void
.end method

.method private static a()Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/a/d<",
            "Lcn/nubia/camera/k/b/b;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcn/nubia/camera/k/n;->a:Lcom/a/a/a/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcn/nubia/camera/k/n$1;

    invoke-direct {v0}, Lcn/nubia/camera/k/n$1;-><init>()V

    invoke-static {v0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/d;)Lcom/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcn/nubia/camera/k/n$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/n$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/d;)Lcom/a/a/a/d;

    move-result-object p0

    return-object p0
.end method
