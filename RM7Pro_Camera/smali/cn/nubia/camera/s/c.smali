.class public Lcn/nubia/camera/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/s/a$d;


# instance fields
.field private a:Lcn/nubia/camera/s/a$d;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/s/c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 10

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "time"

    .line 24
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    invoke-virtual {p1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result p1

    const-string v0, "gender"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object p1, p0, Lcn/nubia/camera/s/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lcn/nubia/camera/s/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 33
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v7}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v7

    if-ne v6, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    invoke-virtual {v6}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v6

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/s/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 44
    iget-object p1, p0, Lcn/nubia/camera/s/c;->a:Lcn/nubia/camera/s/a$d;

    if-eqz p1, :cond_6

    .line 45
    sget-object p1, Lcn/nubia/camera/s/a$b;->a:Lcn/nubia/camera/s/a$b;

    const/high16 v0, 0x3f400000    # 0.75f

    add-int v1, v2, v4

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "face count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GenderResultStabilizer"

    invoke-static {v5, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_5

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_4

    .line 51
    sget-object p1, Lcn/nubia/camera/s/a$b;->c:Lcn/nubia/camera/s/a$b;

    goto :goto_1

    :cond_4
    int-to-float v2, v4

    div-float/2addr v2, v1

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5

    .line 53
    sget-object p1, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    .line 56
    :cond_5
    :goto_1
    sget-object v0, Lcn/nubia/camera/s/a$b;->a:Lcn/nubia/camera/s/a$b;

    if-eq p1, v0, :cond_6

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/s/c;->a:Lcn/nubia/camera/s/a$d;

    invoke-interface {v0, p1}, Lcn/nubia/camera/s/a$d;->a(Lcn/nubia/camera/s/a$b;)V

    :cond_6
    return-void
.end method

.method public a(Lcn/nubia/camera/s/a$d;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/nubia/camera/s/c;->a:Lcn/nubia/camera/s/a$d;

    return-void
.end method
