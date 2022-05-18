.class Lcn/nubia/camera/ax/f$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ax/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ax/f;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ax/f;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcn/nubia/camera/ax/f$a;->a:Lcn/nubia/camera/ax/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ax/f;Lcn/nubia/camera/ax/f$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcn/nubia/camera/ax/f$a;-><init>(Lcn/nubia/camera/ax/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 488
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ax/f$a;->a:Lcn/nubia/camera/ax/f;

    invoke-virtual {p1}, Lcn/nubia/camera/ax/f;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ax/f$a;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p1, v0}, Lcn/nubia/camera/ax/f;->a(Lcn/nubia/camera/ax/f;Z)V

    .line 494
    iget-object p1, p0, Lcn/nubia/camera/ax/f$a;->a:Lcn/nubia/camera/ax/f;

    invoke-static {p1}, Lcn/nubia/camera/ax/f;->f(Lcn/nubia/camera/ax/f;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/ax/f;->b(Lcn/nubia/camera/ax/f;[B)V

    :goto_0
    return-void
.end method
