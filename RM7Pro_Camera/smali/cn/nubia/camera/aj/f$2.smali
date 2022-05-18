.class Lcn/nubia/camera/aj/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/a/a;Lcn/nubia/camera/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0, p1}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->l(Lcn/nubia/camera/aj/f;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->e(Lcn/nubia/camera/aj/f;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->f(Lcn/nubia/camera/aj/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/aj/f;->c(Lcn/nubia/camera/aj/f;Z)Z

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->h(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/e;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2, v0}, Lcn/nubia/camera/g/e;->a(JZ)V

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callback LastLongShutter: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->m(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NormalOnShutterButtonListener"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->o()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    .line 188
    invoke-static {p1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->p()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 189
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/aj/f$2;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->n()V

    :cond_3
    return-void
.end method
