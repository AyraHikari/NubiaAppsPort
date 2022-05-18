.class public final Lcom/loc/bn;
.super Lcom/loc/bq;
.source "MobileUpdateStrategy.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    const-string v0, "iKey"

    iput-object v0, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    iput v6, p0, Lcom/loc/bn;->g:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/loc/bn;->a(Landroid/content/Context;ZIILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/loc/bq;-><init>()V

    const-string v0, "iKey"

    iput-object v0, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bn;->g:I

    invoke-direct/range {p0 .. p6}, Lcom/loc/bn;->a(Landroid/content/Context;ZIILjava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/content/Context;ZIILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/loc/bn;->d:Z

    iput p3, p0, Lcom/loc/bn;->e:I

    iput p4, p0, Lcom/loc/bn;->f:I

    iput-object p5, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    iput p6, p0, Lcom/loc/bn;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lcom/loc/u;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/z;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/loc/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1
.end method

.method protected final a()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/loc/bn;->d:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bn;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/z;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    aget-object v3, v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "yyyyMMdd"

    invoke-static {v4, v5, v6}, Lcom/loc/u;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/loc/bn;->f:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/loc/bn;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/loc/bn;->e:I

    if-gtz v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/loc/bn;->g:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/loc/bn;->g:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/loc/bn;->g:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/loc/bn;->c:Lcom/loc/bq;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/bn;->c:Lcom/loc/bq;

    invoke-virtual {v1}, Lcom/loc/bq;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    return v0

    :cond_3
    iget v0, p0, Lcom/loc/bn;->e:I

    goto :goto_0
.end method
