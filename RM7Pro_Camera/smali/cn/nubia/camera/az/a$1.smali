.class Lcn/nubia/camera/az/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/az/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/az/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/az/a;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/camera/az/a$1;->a:Lcn/nubia/camera/az/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 15

    if-nez p1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 116
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 117
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 118
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 119
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 120
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    const/4 v14, 0x2

    .line 118
    invoke-static/range {v3 .. v14}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIII)Lcn/nubia/algorithm/utils/a;

    move-result-object v0

    move-object v1, p0

    .line 121
    iget-object v2, v1, Lcn/nubia/camera/az/a$1;->a:Lcn/nubia/camera/az/a;

    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/camera/az/a;->a([B)V

    .line 122
    invoke-virtual {v0}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 123
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 109
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/az/a$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
