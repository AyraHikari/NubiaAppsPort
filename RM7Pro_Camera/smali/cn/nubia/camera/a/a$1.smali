.class Lcn/nubia/camera/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;Z)Z

    .line 199
    iget-object p1, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;Z)V

    return-void
.end method

.method public b(Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/aw/a;->a(Lcn/nubia/camera/k/h;)V

    .line 207
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/a/a$1;->a:Lcn/nubia/camera/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/a/a;->c(Lcn/nubia/camera/a/a;Z)Z

    return-void
.end method
