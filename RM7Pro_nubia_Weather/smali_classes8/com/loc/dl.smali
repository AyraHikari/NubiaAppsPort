.class public Lcom/loc/dl;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/dl$b;,
        Lcom/loc/dl$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/loc/dl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/loc/dl;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    new-instance v1, Lcom/loc/dl$b;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/loc/dl$b;-><init>([B)V

    invoke-virtual {v1, p0, v0}, Lcom/loc/dl$b;->a([BI)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v1, Lcom/loc/dl$b;->b:I

    iget-object v2, v1, Lcom/loc/dl$b;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/loc/dl$b;->a:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v1, Lcom/loc/dl$b;->b:I

    new-array v0, v0, [B

    iget-object v2, v1, Lcom/loc/dl$b;->a:[B

    iget v1, v1, Lcom/loc/dl$b;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
