.class Lcn/nubia/camera/ai/d$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ai/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/d;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 157
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->h(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 166
    iget-object p1, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->h(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/aj/i;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aj/i;->b()V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->h(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->a(Lcn/nubia/camera/ai/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/ai/d$4;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->h(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-wide/16 v1, -0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/aj/i;->a(J)V

    :cond_3
    :goto_1
    return-void
.end method
