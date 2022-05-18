.class Lcn/nubia/camera/s/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/s/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcn/nubia/camera/s/a$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/s/a$a;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcn/nubia/camera/s/a$a$a;->b:Lcn/nubia/camera/s/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/s/a$a$a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 13

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "angle"

    const-string v3, "time"

    const/16 v4, -0x2710

    if-eq p1, v4, :cond_0

    .line 466
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 467
    invoke-virtual {v5, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 468
    invoke-virtual {v5, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    iget-object p1, p0, Lcn/nubia/camera/s/a$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-object v5, p0, Lcn/nubia/camera/s/a$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 476
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v9, v0, v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 477
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/s/a$a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    if-nez v6, :cond_3

    return v4

    .line 488
    :cond_3
    div-int/2addr v7, v6

    return v7
.end method
