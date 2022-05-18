.class Lcn/nubia/camera/pretty/e$5$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/e$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/e$5;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/e$5;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcn/nubia/camera/pretty/e$5$1;->a:Lcn/nubia/camera/pretty/e$5;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 491
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/camera/pretty/d;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/d;->c(I)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/camera/pretty/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/d;->c(I)V

    :goto_0
    return-void
.end method
