.class public Lc/c/a/f/a/h/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Lc/c/a/f/a/h/f$d;


# direct methods
.method public constructor <init>(Lc/c/a/f/a/h/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Lc/c/a/f/a/h/f$d;

    invoke-direct {v0, p1}, Lc/c/a/f/a/h/f$d;-><init>(Lc/c/a/f/a/h/f;)V

    iput-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f$d;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lc/c/a/f/a/h/f$d;->c(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f$d;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f$d;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$e;->a:Lc/c/a/f/a/h/f$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f$d;->e()V

    :cond_0
    return-void
.end method
