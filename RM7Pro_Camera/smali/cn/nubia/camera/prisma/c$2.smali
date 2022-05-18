.class Lcn/nubia/camera/prisma/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "interval_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 802
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 809
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "interval_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$2;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h()V

    :cond_1
    return-void
.end method
