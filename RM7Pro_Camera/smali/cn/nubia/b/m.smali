.class public abstract Lcn/nubia/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/b/m;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/b/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/Surface;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/b/m;->a:Ljava/lang/String;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)Z
.end method

.method protected abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/b/m;->b:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/b/m;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcn/nubia/b/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcn/nubia/b/m;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/b/m;->a:Ljava/lang/String;

    return-object v0
.end method
