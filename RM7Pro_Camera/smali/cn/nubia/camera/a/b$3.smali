.class Lcn/nubia/camera/a/b$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcn/nubia/camera/a/b$3;->a:Lcn/nubia/camera/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 460
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 461
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BaseActivity"

    const-string v1, "wait timeout"

    .line 463
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object p1, p0, Lcn/nubia/camera/a/b$3;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->c(Lcn/nubia/camera/a/b;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/a/b$3;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->c(Lcn/nubia/camera/a/b;)I

    move-result p1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_1

    .line 465
    iget-object p1, p0, Lcn/nubia/camera/a/b$3;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->f(Lcn/nubia/camera/a/b;)Lcn/nubia/camera/d;

    move-result-object p1

    sget-object v1, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    invoke-interface {p1, v1}, Lcn/nubia/camera/d;->a(Lcn/nubia/camera/d$a;)V

    .line 467
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/a/b$3;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1, v0}, Lcn/nubia/camera/a/b;->b(Lcn/nubia/camera/a/b;Z)Z

    :goto_0
    return-void
.end method
