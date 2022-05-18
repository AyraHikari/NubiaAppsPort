.class Lcn/nubia/camera/zoom/c$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/zoom/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/c;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/zoom/c$4;->a:Lcn/nubia/camera/zoom/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 248
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 249
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/c$4;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {p1}, Lcn/nubia/camera/zoom/c;->a(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/zoom/c$4;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v0}, Lcn/nubia/camera/zoom/c;->b(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/c$4;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v1}, Lcn/nubia/camera/zoom/c;->e(Lcn/nubia/camera/zoom/c;)Lcn/nubia/camera/zoom/d;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/c$4;->a:Lcn/nubia/camera/zoom/c;

    invoke-static {v2}, Lcn/nubia/camera/zoom/c;->c(Lcn/nubia/camera/zoom/c;)F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/zoom/d;F)V

    :goto_0
    return-void
.end method
