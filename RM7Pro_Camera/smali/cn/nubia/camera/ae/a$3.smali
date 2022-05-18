.class Lcn/nubia/camera/ae/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/CameraSelectButton$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ae/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ae/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(I)Lcn/nubia/camera/af/a;
    .locals 1

    if-ltz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->g(Lcn/nubia/camera/ae/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->g(Lcn/nubia/camera/ae/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ae/a$a;

    iget-object p1, p1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    return-object p1

    .line 332
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Index is illegal"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->e(Lcn/nubia/camera/ae/a;)V

    .line 296
    iget-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->g(Lcn/nubia/camera/ae/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->f(Lcn/nubia/camera/ae/a;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ae/a$a;

    iget-object p1, p1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0, p2}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/ae/a;I)I

    .line 299
    invoke-direct {p0, p2}, Lcn/nubia/camera/ae/a$3;->d(I)Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v1}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    .line 303
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageChange index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "; nextMember: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MemberScrollerManager"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p2, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p2}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 306
    iget-object p2, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p2}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcn/nubia/camera/ae/b;->b(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/a;)V

    .line 309
    :cond_2
    sget-object p1, Lcn/nubia/camera/af/a;->a:Lcn/nubia/camera/af/a;

    if-ne v0, p1, :cond_3

    .line 310
    iget-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ae/a;->b()V

    goto :goto_0

    .line 312
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 313
    iget-object p1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/camera/ae/b;->c(Lcn/nubia/camera/af/a;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v0}, Lcn/nubia/camera/ae/a;->h(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ae/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/ae/a$3;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v1}, Lcn/nubia/camera/ae/a;->g(Lcn/nubia/camera/ae/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/ae/a$a;

    iget-object p1, p1, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    invoke-interface {v0, p1}, Lcn/nubia/camera/ae/b;->b(Lcn/nubia/camera/af/a;)V

    :cond_0
    return-void
.end method
