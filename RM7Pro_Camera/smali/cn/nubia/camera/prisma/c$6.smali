.class Lcn/nubia/camera/prisma/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prisma/PrismaSlidingDrawer$c;


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

    .line 364
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$6;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$6;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->i(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$6;->a:Lcn/nubia/camera/prisma/c;

    iget-object p1, p1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->g:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/prisma/c;Ljava/lang/String;)V

    return-void
.end method
