.class Lcn/nubia/camera/au/a$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcn/nubia/camera/au/a$14;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 4

    const-string v0, "StarTrackFragment"

    const-string v1, "onStopped"

    .line 402
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcn/nubia/camera/au/a$14;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/au/a$14;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/f;->e()V

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/au/a$14;->a:Lcn/nubia/camera/au/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;I)I

    .line 406
    iget-object v0, p0, Lcn/nubia/camera/au/a$14;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->n(Lcn/nubia/camera/au/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
