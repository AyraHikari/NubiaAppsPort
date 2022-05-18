.class public Lcom/hpplay/sdk/source/mirror/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MirrorFrameEcrypto"

.field private static c:Lcom/hpplay/sdk/source/mirror/h;


# instance fields
.field private b:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/h;->b:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    return-void
.end method

.method public static a()Lcom/hpplay/sdk/source/mirror/h;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mirror/h;->c:Lcom/hpplay/sdk/source/mirror/h;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/hpplay/sdk/source/mirror/h;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mirror/h;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mirror/h;->c:Lcom/hpplay/sdk/source/mirror/h;

    .line 21
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/mirror/h;->c:Lcom/hpplay/sdk/source/mirror/h;

    return-object v0
.end method


# virtual methods
.method public a([BII[BI)V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/h;->b:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aecrypt([BII[BIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "MirrorFrameEcrypto"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a([B[B)V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/h;->b:Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/ED25519Encrypt;->aeInit([B[BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "MirrorFrameEcrypto"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
