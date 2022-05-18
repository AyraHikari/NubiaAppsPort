.class public abstract Lcn/nubia/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/b/a/h;


# instance fields
.field private final a:Lcn/nubia/b/a/h;


# direct methods
.method public constructor <init>(Lcn/nubia/b/a/h;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    new-instance v1, Lcn/nubia/b/a/e$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/b/a/e$1;-><init>(Lcn/nubia/b/a/e;Lcn/nubia/b/a/h$a;)V

    invoke-interface {v0, v1, p2}, Lcn/nubia/b/a/h;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    invoke-interface {v0}, Lcn/nubia/b/a/h;->close()V

    return-void
.end method

.method public d()Landroid/view/Surface;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    invoke-interface {v0}, Lcn/nubia/b/a/h;->d()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/nubia/b/a/f;
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    invoke-interface {v0}, Lcn/nubia/b/a/h;->e()Lcn/nubia/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcn/nubia/b/a/f;
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    invoke-interface {v0}, Lcn/nubia/b/a/h;->f()Lcn/nubia/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcn/nubia/b/a/e;->a:Lcn/nubia/b/a/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
