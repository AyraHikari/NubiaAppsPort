.class Lcn/nubia/camera/panorama/h$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/h;Landroid/os/Looper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object v0, v0, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object v0, v0, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcn/nubia/camera/panorama/i;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object p1, p1, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object p1, p1, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {p1}, Lcn/nubia/camera/panorama/i;->e()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object v0, v0, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object v0, v0, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcn/nubia/camera/panorama/i;->a(I)V

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object p1, p1, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/panorama/h$1;->a:Lcn/nubia/camera/panorama/h;

    iget-object p1, p1, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {p1}, Lcn/nubia/camera/panorama/i;->d()V

    :cond_4
    :goto_0
    return-void
.end method
