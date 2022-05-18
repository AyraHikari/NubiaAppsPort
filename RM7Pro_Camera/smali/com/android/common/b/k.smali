.class public Lcom/android/common/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 27
    iput-object v0, p0, Lcom/android/common/b/k;->a:[I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/common/b/k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 40
    iget v0, p0, Lcom/android/common/b/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/b/k;->b:I

    .line 41
    iget-object v1, p0, Lcom/android/common/b/k;->a:[I

    aget v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/android/common/b/k;->a:[I

    array-length v1, v0

    iget v2, p0, Lcom/android/common/b/k;->b:I

    if-ne v1, v2, :cond_0

    add-int v1, v2, v2

    .line 32
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 33
    invoke-static {v0, v3, v1, v3, v2}, Lcom/android/common/b/d;->a([II[III)V

    .line 34
    iput-object v1, p0, Lcom/android/common/b/k;->a:[I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/k;->a:[I

    iget v1, p0, Lcom/android/common/b/k;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/common/b/k;->b:I

    aput p1, v0, v1

    return-void
.end method
