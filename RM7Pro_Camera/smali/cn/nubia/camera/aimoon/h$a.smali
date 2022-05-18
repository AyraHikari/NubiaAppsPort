.class Lcn/nubia/camera/aimoon/h$a;
.super Lcn/nubia/b/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aimoon/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/h;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/aimoon/h;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-direct {p0}, Lcn/nubia/b/a$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/aimoon/h;Lcn/nubia/camera/aimoon/h$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/h$a;-><init>(Lcn/nubia/camera/aimoon/h;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 333
    invoke-super {p0}, Lcn/nubia/b/a$c;->a()V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/h;->f(Lcn/nubia/camera/aimoon/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capturesession cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIMoonStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/b/a;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->e(Lcn/nubia/camera/aimoon/h;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/h;->f(Lcn/nubia/camera/aimoon/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  capturesession success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIMoonStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0, p1}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/aimoon/h;Lcn/nubia/b/a;)Lcn/nubia/b/a;

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->g(Lcn/nubia/camera/aimoon/h;)V

    .line 315
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->b(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 317
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->h(Lcn/nubia/camera/aimoon/h;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 320
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->i(Lcn/nubia/camera/aimoon/h;)Lcn/nubia/b/d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 321
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->c(Lcn/nubia/camera/aimoon/h;)V

    .line 323
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/h;->j(Lcn/nubia/camera/aimoon/h;)V

    return-void
.end method

.method public b(Lcn/nubia/b/a;)V
    .locals 1

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aimoon/h$a;->a:Lcn/nubia/camera/aimoon/h;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/h;->f(Lcn/nubia/camera/aimoon/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " capturesession failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIMoonStreamController"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
