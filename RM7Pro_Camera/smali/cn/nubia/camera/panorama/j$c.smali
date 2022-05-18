.class Lcn/nubia/camera/panorama/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/j;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/panorama/j;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcn/nubia/camera/panorama/j$c;->a:Lcn/nubia/camera/panorama/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/panorama/j;Lcn/nubia/camera/panorama/j$1;)V
    .locals 0

    .line 591
    invoke-direct {p0, p1}, Lcn/nubia/camera/panorama/j$c;-><init>(Lcn/nubia/camera/panorama/j;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$c;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/j;)I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/panorama/j$c;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2}, Lcn/nubia/camera/panorama/j;->j(Lcn/nubia/camera/panorama/j;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 598
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$c;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2, p1}, Lcn/nubia/camera/panorama/j;->a(Lcn/nubia/camera/panorama/j;Lcn/nubia/b/a/f;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/panorama/j;[B)[B

    .line 599
    iget-object p2, p0, Lcn/nubia/camera/panorama/j$c;->a:Lcn/nubia/camera/panorama/j;

    invoke-static {p2}, Lcn/nubia/camera/panorama/j;->b(Lcn/nubia/camera/panorama/j;)Lcn/nubia/camera/panorama/j$a;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcn/nubia/camera/panorama/j$a;->sendEmptyMessage(I)Z

    .line 601
    :cond_2
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 591
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/panorama/j$c;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
