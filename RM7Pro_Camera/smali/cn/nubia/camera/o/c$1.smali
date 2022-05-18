.class Lcn/nubia/camera/o/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcn/nubia/camera/o/c$1;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    .line 133
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 134
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 135
    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v3

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v4

    .line 136
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v6

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v7

    .line 137
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

    .line 135
    invoke-static/range {v2 .. v12}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcn/nubia/camera/o/c$1;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/i;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/o/c$1;->a:Lcn/nubia/camera/o/c;

    invoke-static {v1}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/o/i;->a([B)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ElectronicFnoFragment"

    const-string v1, "data is enough, stop putting data to electronic"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/o/c$1;->a:Lcn/nubia/camera/o/c;

    invoke-static {v0}, Lcn/nubia/camera/o/c;->b(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/o/h;->e()V

    .line 146
    :cond_1
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 147
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 126
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/o/c$1;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
