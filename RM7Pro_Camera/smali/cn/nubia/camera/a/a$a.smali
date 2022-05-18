.class Lcn/nubia/camera/a/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcn/nubia/camera/a/a$a;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 947
    iget-object v0, p0, Lcn/nubia/camera/a/a$a;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 948
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 957
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/a/a$a;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->f(Lcn/nubia/camera/a/a;)V

    goto :goto_0

    .line 954
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/a/a$a;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->y()V

    goto :goto_0

    .line 950
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/a/a$a;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->e(Lcn/nubia/camera/a/a;)V

    :goto_0
    return-void
.end method
