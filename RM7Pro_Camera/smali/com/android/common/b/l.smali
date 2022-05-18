.class public Lcom/android/common/b/l;
.super Lcom/android/common/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/android/common/b/a;-><init>(I)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/common/b/l;->a(II)V

    .line 17
    iput v0, p0, Lcom/android/common/b/l;->b:I

    return-void
.end method


# virtual methods
.method protected b(Lcom/android/common/b/g;)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/common/b/l;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "RawTexture"

    const-string v0, "lost the content due to context change"

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public c(II)V
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/common/b/l;->a(II)V

    .line 31
    iget p1, p0, Lcom/android/common/b/l;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 32
    iget-object p1, p0, Lcom/android/common/b/l;->i:Lcom/android/common/b/g;

    const/16 p2, 0x1908

    const/16 v0, 0x1401

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;II)V

    .line 33
    iget-object p1, p0, Lcom/android/common/b/l;->i:Lcom/android/common/b/g;

    invoke-virtual {p1, p0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/android/common/b/g;)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Lcom/android/common/b/g;->h()Lcom/android/common/b/i;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/common/b/i;->a()I

    move-result v0

    iput v0, p0, Lcom/android/common/b/l;->a:I

    const/16 v0, 0x1908

    const/16 v1, 0x1401

    .line 23
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;II)V

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/android/common/b/l;->b:I

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/common/b/l;->a(Lcom/android/common/b/g;)V

    return-void
.end method

.method public f()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public j()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/android/common/b/l;->i:Lcom/android/common/b/g;

    invoke-virtual {v0}, Lcom/android/common/b/g;->h()Lcom/android/common/b/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 52
    iget v3, p0, Lcom/android/common/b/l;->a:I

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 53
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/common/b/i;->a(I[II)V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
