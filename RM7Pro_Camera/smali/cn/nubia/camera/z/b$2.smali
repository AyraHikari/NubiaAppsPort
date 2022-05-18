.class Lcn/nubia/camera/z/b$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/z/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/z/b;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcn/nubia/camera/z/b$2;->a:Lcn/nubia/camera/z/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 424
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 425
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/b$2;->a:Lcn/nubia/camera/z/b;

    invoke-static {v0}, Lcn/nubia/camera/z/b;->f(Lcn/nubia/camera/z/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/z/b$2;->a:Lcn/nubia/camera/z/b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/camera/z/b;->c(Lcn/nubia/camera/z/b;I)V

    :cond_1
    :goto_0
    return-void
.end method
