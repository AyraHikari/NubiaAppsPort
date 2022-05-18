.class public final Lcom/loc/bp;
.super Lcom/loc/bq;
.source "TimeUpdateStrategy.java"


# instance fields
.field protected a:I

.field protected b:J

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/loc/bq;-><init>(Lcom/loc/bq;)V

    iput p2, p0, Lcom/loc/bp;->a:I

    iput-object p3, p0, Lcom/loc/bp;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bp;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/loc/bq;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/bp;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bp;->b:J

    iget-object v1, p0, Lcom/loc/bp;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/loc/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final a()Z
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/loc/bp;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/bp;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bp;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/loc/z;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-wide v0, p0, Lcom/loc/bp;->b:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/bp;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/loc/bp;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
