.class Lcn/nubia/camera/au/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "StarTrackFragment"

    const-string v0, "onPictureTaken"

    .line 163
    invoke-static {p2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/g;

    move-result-object p2

    sget-object v0, Lcn/nubia/camera/au/g;->c:Lcn/nubia/camera/au/g;

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 165
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcn/nubia/camera/au/f;->a(Z)V

    .line 166
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {p2}, Lcn/nubia/camera/au/a;->D()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 167
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->c(Lcn/nubia/camera/au/a;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 169
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->d(Lcn/nubia/camera/au/a;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p2, v4, v6

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    .line 170
    invoke-static {p2}, Lcn/nubia/camera/au/a;->d(Lcn/nubia/camera/au/a;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->e(Lcn/nubia/camera/au/a;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v6, p2

    cmp-long p2, v4, v6

    if-ltz p2, :cond_2

    .line 171
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2, v1}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Z)Z

    .line 172
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object p2

    iget-object v4, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {v4}, Lcn/nubia/camera/au/a;->f(Lcn/nubia/camera/au/a;)Lcom/android/common/c/f$b;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcn/nubia/camera/au/f;->a(Lcom/android/common/c/f$b;)V

    .line 173
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2, v2, v3}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;J)J

    .line 178
    :cond_2
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/b/a/f$a;

    .line 179
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 180
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 181
    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v3

    invoke-interface {p2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v4

    .line 182
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v6

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v7

    .line 183
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

    .line 181
    invoke-static/range {v2 .. v12}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p2

    .line 184
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 185
    invoke-virtual {p2}, Lcn/nubia/algorithm/utils/a;->a()V

    .line 187
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/nubia/camera/au/f;->a([B)Z

    .line 188
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {p2}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/common/c/e;->h()V

    .line 189
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-static {p2}, Lcn/nubia/camera/au/a;->g(Lcn/nubia/camera/au/a;)I

    .line 191
    iget-object p2, p0, Lcn/nubia/camera/au/a$10;->a:Lcn/nubia/camera/au/a;

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v1

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;[BII)V

    .line 194
    :cond_3
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 156
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/au/a$10;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
