.class public Lcom/android/common/b/e;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private j:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/android/common/b/a;-><init>(I)V

    .line 14
    iput p1, p0, Lcom/android/common/b/e;->a:I

    .line 15
    iput p2, p0, Lcom/android/common/b/e;->j:I

    .line 16
    invoke-virtual {p0, p3, p4}, Lcom/android/common/b/e;->a(II)V

    return-void
.end method

.method private c(Lcom/android/common/b/g;)V
    .locals 0

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/common/b/e;->a(Lcom/android/common/b/g;)V

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/android/common/b/e;->b:I

    return-void
.end method


# virtual methods
.method protected b(Lcom/android/common/b/g;)Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/android/common/b/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/common/b/e;->c(Lcom/android/common/b/g;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public f()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/android/common/b/e;->j:I

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
