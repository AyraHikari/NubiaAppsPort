.class Lcn/nubia/camera/y/g$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/g;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/y/g$1;->a:Lcn/nubia/camera/y/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/y/g$1;->a:Lcn/nubia/camera/y/g;

    invoke-static {p1}, Lcn/nubia/camera/y/g;->a(Lcn/nubia/camera/y/g;)Lcn/nubia/camera/y/g$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    iget-object p1, p0, Lcn/nubia/camera/y/g$1;->a:Lcn/nubia/camera/y/g;

    invoke-static {p1}, Lcn/nubia/camera/y/g;->a(Lcn/nubia/camera/y/g;)Lcn/nubia/camera/y/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/y/g$a;->a()V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/y/g$1;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->a(Lcn/nubia/camera/y/g;)Lcn/nubia/camera/y/g$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    iget-object v0, p0, Lcn/nubia/camera/y/g$1;->a:Lcn/nubia/camera/y/g;

    invoke-static {v0}, Lcn/nubia/camera/y/g;->a(Lcn/nubia/camera/y/g;)Lcn/nubia/camera/y/g$a;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/y/g$a;->a(J)V

    :cond_2
    :goto_0
    return-void
.end method
