.class Lcn/nubia/camera/panorama/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/j;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcn/nubia/camera/panorama/j$1;->a:Lcn/nubia/camera/panorama/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$1;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/j;)I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 456
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$1;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2, p1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/j;Lcn/nubia/b/a/f;)[B

    move-result-object v1

    invoke-static {p2, v1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/j;[B)[B

    .line 457
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$1;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/j$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/nubia/camera/panorama/j$a;->sendEmptyMessage(I)Z

    .line 460
    :cond_1
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 449
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/panorama/j$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
