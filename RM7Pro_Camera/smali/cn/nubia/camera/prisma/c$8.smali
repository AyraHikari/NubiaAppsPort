.class Lcn/nubia/camera/prisma/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/i/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c;->n()V
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

    .line 420
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$8;->a:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/i/i;

    .line 428
    invoke-virtual {v4}, Lcn/nubia/i/i;->g()I

    move-result v5

    const-string v6, "_"

    const-string v7, "online/"

    const-string v8, " "

    const/4 v9, 0x3

    if-ne v5, v9, :cond_1

    .line 429
    invoke-virtual {v4}, Lcn/nubia/i/i;->h()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 430
    new-instance v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-direct {v5}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;-><init>()V

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    .line 432
    invoke-virtual {v4}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->f:Ljava/lang/String;

    .line 433
    invoke-virtual {v4}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->c:Ljava/lang/String;

    .line 434
    invoke-virtual {v4}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->g:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/i/i;->g()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 438
    invoke-virtual {v4}, Lcn/nubia/i/i;->h()I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 440
    :cond_2
    iget-object v5, p0, Lcn/nubia/camera/prisma/c$8;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v5}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    new-instance v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-direct {v5}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;-><init>()V

    .line 442
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    .line 443
    invoke-virtual {v4}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->f:Ljava/lang/String;

    .line 444
    invoke-virtual {v4}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->c:Ljava/lang/String;

    .line 445
    invoke-virtual {v4}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->g:Ljava/lang/String;

    .line 446
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v5, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 451
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/prisma/c$8;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {p1}, Lcn/nubia/camera/prisma/c;->j(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 453
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 454
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 456
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 460
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_6
    invoke-static {p1}, Lcn/nubia/camera/ba/g;->d(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method
