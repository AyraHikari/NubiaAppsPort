.class Lcn/nubia/camera/k/af$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/af;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/af;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcn/nubia/camera/k/af$3;->a:Lcn/nubia/camera/k/af;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 305
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/af$3;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->b(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/af$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af$a;)V

    :goto_0
    return-void
.end method
