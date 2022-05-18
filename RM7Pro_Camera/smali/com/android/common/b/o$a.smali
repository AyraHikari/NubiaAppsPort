.class Lcom/android/common/b/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/graphics/Bitmap$Config;

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/b/o$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/common/b/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/common/b/o$a;
    .locals 2

    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/b/o$a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/common/b/o$a;->a()Lcom/android/common/b/o$a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 97
    instance-of v0, p1, Lcom/android/common/b/o$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p1, Lcom/android/common/b/o$a;

    .line 99
    iget-boolean v0, p0, Lcom/android/common/b/o$a;->a:Z

    iget-boolean v2, p1, Lcom/android/common/b/o$a;->a:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/common/b/o$a;->b:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/android/common/b/o$a;->b:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/common/b/o$a;->c:I

    iget p1, p1, Lcom/android/common/b/o$a;->c:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/common/b/o$a;->b:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/common/b/o$a;->c:I

    xor-int/2addr v0, v1

    .line 92
    iget-boolean v1, p0, Lcom/android/common/b/o$a;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0
.end method
