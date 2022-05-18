.class public Lb/a/b/c/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/b/c/b/s;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/b/c/b/s;->a:Z

    return v0
.end method

.method public b(II)I
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lb/a/b/c/b/s;->a:Z

    move p1, p2

    :cond_0
    return p1
.end method

.method public c(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lb/a/b/c/b/s;->a:Z

    move-wide p1, p3

    :cond_0
    return-wide p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lb/a/b/d/e;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/a/b/c/b/s;->a:Z

    move-object p1, p2

    :cond_0
    return-object p1
.end method
