.class public Lc/c/a/f/a/h/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lc/c/a/f/a/h/f;

.field private b:Z


# direct methods
.method public constructor <init>(Lc/c/a/f/a/h/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/c/a/f/a/h/f$d;->b:Z

    .line 3
    iput-object p1, p0, Lc/c/a/f/a/h/f$d;->a:Lc/c/a/f/a/h/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f$d;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f$d;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/c/a/f/a/h/f$d;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/f/a/h/f$d;->b:Z

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public doFrame(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$d;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Lc/c/a/f/a/h/f$d;->b:Z

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/f$d;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0, p1, p2}, Lc/c/a/f/a/h/f;->m(J)V

    .line 4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
