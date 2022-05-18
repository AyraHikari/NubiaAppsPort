.class Lcn/nubia/camera/u/c$a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/u/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/u/c$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/u/c$a;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcn/nubia/camera/u/c$a$1;->a:Lcn/nubia/camera/u/c$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/u/c$a$1;->a:Lcn/nubia/camera/u/c$a;

    iget-object v0, v0, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {v0}, Lcn/nubia/camera/u/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/u/c$a$1;->a:Lcn/nubia/camera/u/c$a;

    iget-object p1, p1, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {p1}, Lcn/nubia/camera/u/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/u/c$a$1;->a:Lcn/nubia/camera/u/c$a;

    invoke-static {p1}, Lcn/nubia/camera/u/c$a;->a(Lcn/nubia/camera/u/c$a;)V

    :goto_0
    return-void
.end method
