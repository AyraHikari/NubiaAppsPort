.class public final Lcom/loc/bv;
.super Lcom/loc/er;
.source "RobustFlatBufferBuilder.java"


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/er;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)I
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/loc/er;->a(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    invoke-super {p0, v0}, Lcom/loc/er;->a(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method
