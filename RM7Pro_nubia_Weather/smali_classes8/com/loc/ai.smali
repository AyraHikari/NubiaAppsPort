.class public final Lcom/loc/ai;
.super Lcom/loc/ak;
.source "ADDNumEncryptProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/ak;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/loc/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/ak;-><init>(Lcom/loc/ak;)V

    return-void
.end method


# virtual methods
.method protected final a([B)[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/loc/u;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
