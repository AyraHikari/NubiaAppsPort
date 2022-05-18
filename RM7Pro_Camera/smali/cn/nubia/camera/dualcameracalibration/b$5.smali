.class Lcn/nubia/camera/dualcameracalibration/b$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/dualcameracalibration/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/b;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/b$5;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 630
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/b$5;->a:Lcn/nubia/camera/dualcameracalibration/b;

    invoke-static {v0, p1}, Lcn/nubia/camera/dualcameracalibration/b;->a(Lcn/nubia/camera/dualcameracalibration/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
