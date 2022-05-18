.class public final Lcom/loc/aj;
.super Lcom/loc/ak;
.source "Base64EncryptProcessor.java"


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
    .locals 1

    invoke-static {p1}, Lcom/loc/o;->c([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
