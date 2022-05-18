.class Lcn/nubia/camera/three_a/ui/f$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/f;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/f$3;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/f$3;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/f;->c(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/f$3;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p1}, Lcn/nubia/camera/three_a/ui/f;->c(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/d;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
