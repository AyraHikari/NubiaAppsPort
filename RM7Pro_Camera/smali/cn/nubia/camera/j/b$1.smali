.class Lcn/nubia/camera/j/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/j/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/j/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/j/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/j/b;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/j/b;->a(Z)V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/j/d;

    .line 198
    invoke-interface {v1}, Lcn/nubia/camera/j/d;->q()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->e(Lcn/nubia/camera/j/b;)Lcn/nubia/camera/j/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->e(Lcn/nubia/camera/j/b;)Lcn/nubia/camera/j/c;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/j/c;->a()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->f(Lcn/nubia/camera/j/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->g(Lcn/nubia/camera/j/b;)V

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/b;J)J

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/j/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/j/d;

    .line 170
    invoke-interface {v1}, Lcn/nubia/camera/j/d;->p()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->b(Lcn/nubia/camera/j/b;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->c(Lcn/nubia/camera/j/b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0}, Lcn/nubia/camera/j/b;->d(Lcn/nubia/camera/j/b;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/j/b$1;->a:Lcn/nubia/camera/j/b;

    invoke-static {v0, p1, p2}, Lcn/nubia/camera/j/b;->a(Lcn/nubia/camera/j/b;J)J

    return-void
.end method

.method public b()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcn/nubia/camera/j/b$1;->d()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcn/nubia/camera/j/b$1;->d()V

    return-void
.end method
