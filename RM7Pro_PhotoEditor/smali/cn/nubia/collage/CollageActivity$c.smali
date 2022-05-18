.class Lcn/nubia/collage/CollageActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/CollageActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcn/nubia/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/CollageActivity$c;->a:Lcn/nubia/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/CollageActivity$c;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {v0, p1}, Lcn/nubia/collage/CollageActivity;->J(Lcn/nubia/collage/CollageActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collageactivity save fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LYHS"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$c;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->K(Lcn/nubia/collage/CollageActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$c;->a:Lcn/nubia/collage/CollageActivity;

    invoke-static {p1}, Lcn/nubia/collage/CollageActivity;->L(Lcn/nubia/collage/CollageActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/CollageActivity$c;->a:Lcn/nubia/collage/CollageActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/collage/CollageActivity;->M(Lcn/nubia/collage/CollageActivity;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
