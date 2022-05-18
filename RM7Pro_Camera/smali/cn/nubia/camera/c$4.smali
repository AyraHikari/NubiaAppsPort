.class Lcn/nubia/camera/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ae/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/c;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/af/a;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-virtual {v0, p1}, Lcn/nubia/a/a;->b(I)V

    .line 162
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_1

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/camera/aw/a;->a(I)V

    .line 164
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/an/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/a/a;->b(I)V

    .line 172
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/a;->a(I)V

    .line 174
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    .line 176
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-virtual {p2}, Lcn/nubia/camera/af/a;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;I)V

    .line 177
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->d(Lcn/nubia/camera/c;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/a/a;->a(I)V

    .line 178
    sget-object p1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    if-ne p2, p1, :cond_1

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    const p2, 0x7f0800b6

    invoke-virtual {p1, p2}, Lcn/nubia/a/a;->c(I)V

    goto :goto_0

    .line 180
    :cond_1
    sget-object p1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    if-ne p2, p1, :cond_2

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    const p2, 0x7f0800af

    invoke-virtual {p1, p2}, Lcn/nubia/a/a;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcn/nubia/camera/af/a;)V
    .locals 1

    .line 201
    sget-object v0, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne p1, v0, :cond_0

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->d(Lcn/nubia/camera/c;)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/camera/af/a;->a(I)Lcn/nubia/camera/af/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;Lcn/nubia/camera/af/a;)Z

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V
    .locals 3

    .line 187
    sget-object v0, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-eq p2, v0, :cond_0

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcn/nubia/a/a;->a(ZZ)V

    .line 190
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    if-ne p2, p1, :cond_1

    .line 191
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcn/nubia/camera/aw/a;->a(I)V

    goto :goto_0

    .line 193
    :cond_0
    sget-object v0, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-eq p1, v0, :cond_1

    sget-object p1, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne p2, p1, :cond_1

    .line 194
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/a/a;->a(Z)V

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {p1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/aw/a;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcn/nubia/camera/af/a;)I
    .locals 4

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v1}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v2}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v3}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcn/nubia/camera/c$4;->a:Lcn/nubia/camera/c;

    invoke-static {v3}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 214
    invoke-virtual {v2, v1}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p1, v0, :cond_0

    .line 215
    invoke-virtual {v2}, Lcn/nubia/camera/af/b;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
