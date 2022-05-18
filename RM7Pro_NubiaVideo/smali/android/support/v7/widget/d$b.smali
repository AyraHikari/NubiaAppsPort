.class Landroid/support/v7/widget/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v7/widget/d$b;->a:I

    .line 3
    iput p2, p0, Landroid/support/v7/widget/d$b;->b:I

    .line 4
    iput p3, p0, Landroid/support/v7/widget/d$b;->c:I

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/d$b;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "??"

    return-object v0

    :cond_0
    const-string v0, "mv"

    return-object v0

    :cond_1
    const-string v0, "up"

    return-object v0

    :cond_2
    const-string v0, "rm"

    return-object v0

    :cond_3
    const-string v0, "add"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Landroid/support/v7/widget/d$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Landroid/support/v7/widget/d$b;

    .line 3
    iget v2, p0, Landroid/support/v7/widget/d$b;->a:I

    iget v3, p1, Landroid/support/v7/widget/d$b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 4
    iget v2, p0, Landroid/support/v7/widget/d$b;->c:I

    iget v3, p0, Landroid/support/v7/widget/d$b;->b:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 5
    iget v2, p0, Landroid/support/v7/widget/d$b;->c:I

    iget v3, p1, Landroid/support/v7/widget/d$b;->b:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/support/v7/widget/d$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/d$b;->c:I

    if-ne v2, v3, :cond_3

    return v0

    .line 6
    :cond_3
    iget v2, p0, Landroid/support/v7/widget/d$b;->c:I

    iget v3, p1, Landroid/support/v7/widget/d$b;->c:I

    if-eq v2, v3, :cond_4

    return v1

    .line 7
    :cond_4
    iget v2, p0, Landroid/support/v7/widget/d$b;->b:I

    iget p1, p1, Landroid/support/v7/widget/d$b;->b:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/d$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Landroid/support/v7/widget/d$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Landroid/support/v7/widget/d$b;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/d$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/d$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/d$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
