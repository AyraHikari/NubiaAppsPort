.class Lcn/nubia/camera/ar/e$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ar/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/e;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcn/nubia/camera/ar/e$5;->a:Lcn/nubia/camera/ar/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 324
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 325
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ar/e$5;->a:Lcn/nubia/camera/ar/e;

    new-instance v0, Lcn/nubia/camera/ar/e$5$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ar/e$5$1;-><init>(Lcn/nubia/camera/ar/e$5;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e$a;)V

    :goto_0
    return-void
.end method
