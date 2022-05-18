.class Lcn/nubia/camera/at/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/at/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/d;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-static {v0}, Lcn/nubia/camera/at/d;->a(Lcn/nubia/camera/at/d;)Lcn/nubia/camera/v/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v0

    iget v0, v0, Lcom/android/common/a;->c:I

    .line 48
    iget-object v1, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-static {v1}, Lcn/nubia/camera/at/d;->a(Lcn/nubia/camera/at/d;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v1

    iget v1, v1, Lcom/android/common/a;->d:I

    .line 49
    iget-object v2, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-static {v2}, Lcn/nubia/camera/at/d;->a(Lcn/nubia/camera/at/d;)Lcn/nubia/camera/v/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v2

    iget-object v2, v2, Lcom/android/common/a;->a:[B

    .line 50
    iget-object v3, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-static {v3}, Lcn/nubia/camera/at/d;->b(Lcn/nubia/camera/at/d;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    iget-object v3, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-static {v3}, Lcn/nubia/camera/at/d;->b(Lcn/nubia/camera/at/d;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcn/nubia/camera/at/d$a;

    iget-object v5, p0, Lcn/nubia/camera/at/d$1;->a:Lcn/nubia/camera/at/d;

    invoke-direct {v4, v5, v0, v1, v2}, Lcn/nubia/camera/at/d$a;-><init>(Lcn/nubia/camera/at/d;II[B)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
