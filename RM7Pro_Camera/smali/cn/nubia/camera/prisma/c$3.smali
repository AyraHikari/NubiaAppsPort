.class Lcn/nubia/camera/prisma/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->K()V
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

    .line 859
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 862
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->g()V

    .line 865
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->g()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->h()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$3;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->h()V

    :cond_1
    return-void
.end method
