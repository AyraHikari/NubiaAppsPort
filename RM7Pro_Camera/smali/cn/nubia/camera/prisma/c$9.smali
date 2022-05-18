.class Lcn/nubia/camera/prisma/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/i/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$9;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    .line 476
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 477
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/i/i;

    .line 479
    new-instance v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-direct {v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;-><init>()V

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    .line 481
    invoke-virtual {v0}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->f:Ljava/lang/String;

    .line 482
    invoke-virtual {v0}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->c:Ljava/lang/String;

    .line 483
    invoke-virtual {v0}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->g:Ljava/lang/String;

    .line 484
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/prisma/c$9;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {p2}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
