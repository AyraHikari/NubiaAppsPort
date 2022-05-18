.class public final Lcom/google/zxing/client/result/WifiParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "WifiParsedResult.java"


# instance fields
.field private final anonymousIdentity:Ljava/lang/String;

.field private final eapMethod:Ljava/lang/String;

.field private final hidden:Z

.field private final identity:Ljava/lang/String;

.field private final networkEncryption:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final phase2Method:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "networkEncryption"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "networkEncryption"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "hidden"    # Z

    .prologue
    const/4 v5, 0x0

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "networkEncryption"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "hidden"    # Z
    .param p5, "identity"    # Ljava/lang/String;
    .param p6, "anonymousIdentity"    # Ljava/lang/String;
    .param p7, "eapMethod"    # Ljava/lang/String;
    .param p8, "phase2Method"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 45
    iput-object p2, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    .line 49
    iput-object p5, p0, Lcom/google/zxing/client/result/WifiParsedResult;->identity:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/google/zxing/client/result/WifiParsedResult;->anonymousIdentity:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/google/zxing/client/result/WifiParsedResult;->eapMethod:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/google/zxing/client/result/WifiParsedResult;->phase2Method:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->anonymousIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 91
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 92
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    iget-boolean v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEapMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->eapMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhase2Method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->phase2Method:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    return v0
.end method
