.class public Lcn/nubia/camera/g/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/q;


# instance fields
.field private a:Landroid/os/Handler;

.field protected b:Lcn/nubia/j/a;

.field protected c:Landroid/content/Context;

.field protected d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/j/a;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/g/h;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcn/nubia/camera/g/h;->d:Z

    .line 27
    iput-object p2, p0, Lcn/nubia/camera/g/h;->b:Lcn/nubia/j/a;

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/g/h;->c:Landroid/content/Context;

    .line 29
    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/g/h;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/j/a;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/g/h;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcn/nubia/camera/g/h;->d:Z

    .line 33
    iput-object p2, p0, Lcn/nubia/camera/g/h;->b:Lcn/nubia/j/a;

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/g/h;->c:Landroid/content/Context;

    .line 35
    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/g/h;->a:Landroid/os/Handler;

    .line 36
    iput-boolean p3, p0, Lcn/nubia/camera/g/h;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ShutterCallback"

    const-string v1, "onShutter"

    .line 41
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/g/h;->b:Lcn/nubia/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 43
    iget-boolean v0, p0, Lcn/nubia/camera/g/h;->d:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/g/h;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
