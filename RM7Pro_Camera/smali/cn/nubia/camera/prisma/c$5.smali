.class Lcn/nubia/camera/prisma/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->e(Landroid/view/View;)V
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

    .line 341
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/prisma/c;Z)V

    .line 344
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 345
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "prisma_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->g()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 354
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/prisma/c;Z)V

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->j()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const-string v2, "prisma_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$5;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->h(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->h()V

    :cond_1
    return-void
.end method
