.class Lcn/nubia/camera/ay/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ay/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ay/a;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 13

    .line 97
    iget-object p2, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-static {p2}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-static {p2}, Lcn/nubia/camera/ay/a;->b(Lcn/nubia/camera/ay/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p2, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-static {p2}, Lcn/nubia/camera/ay/a;->c(Lcn/nubia/camera/ay/a;)I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 99
    iget-object p2, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;J)J

    .line 100
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    .line 101
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 102
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 103
    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v3

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v4

    .line 104
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v6

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v7

    .line 105
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v9

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v10

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v11

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v12

    .line 103
    invoke-static/range {v2 .. v12}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 107
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 108
    iget-object p2, p0, Lcn/nubia/camera/ay/a$1;->a:Lcn/nubia/camera/ay/a;

    invoke-static {p2, v0}, Lcn/nubia/camera/ay/a;->a(Lcn/nubia/camera/ay/a;[B)V

    :cond_0
    if-eqz p1, :cond_1

    .line 112
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 93
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/ay/a$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
