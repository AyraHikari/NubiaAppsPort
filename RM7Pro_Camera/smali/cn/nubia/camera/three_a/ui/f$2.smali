.class Lcn/nubia/camera/three_a/ui/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/three_a/ui/f;->c()V
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

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/f$2;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 2

    .line 68
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/f$2;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p2}, Lcn/nubia/camera/three_a/ui/f;->b(Lcn/nubia/camera/three_a/ui/f;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/f$2;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p2}, Lcn/nubia/camera/three_a/ui/f;->b(Lcn/nubia/camera/three_a/ui/f;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    :try_start_0
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/f$2;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p2}, Lcn/nubia/camera/three_a/ui/f;->c(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/d;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 72
    iget-object p2, p0, Lcn/nubia/camera/three_a/ui/f$2;->a:Lcn/nubia/camera/three_a/ui/f;

    invoke-static {p2}, Lcn/nubia/camera/three_a/ui/f;->c(Lcn/nubia/camera/three_a/ui/f;)Lcn/nubia/camera/three_a/ui/d;

    move-result-object p2

    if-eqz p1, :cond_1

    array-length p1, p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p2, p3}, Lcn/nubia/camera/three_a/ui/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
