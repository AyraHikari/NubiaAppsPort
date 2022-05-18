.class public Lcom/hpplay/cybergarage/upnp/event/Subscription;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INFINITE_STRING:Ljava/lang/String; = "infinite"

.field public static final INFINITE_VALUE:I = -0x1

.field public static final SUBSCRIBE_METHOD:Ljava/lang/String; = "SUBSCRIBE"

.field public static final TIMEOUT_HEADER:Ljava/lang/String; = "Second-"

.field public static final UNSUBSCRIBE_METHOD:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final UUID:Ljava/lang/String; = "uuid:"

.field public static final XMLNS:Ljava/lang/String; = "urn:schemas-upnp-org:event-1-0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 64
    const-string p0, ""

    .line 67
    :cond_0
    :goto_0
    return-object p0

    .line 65
    :cond_1
    const-string v0, "uuid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "uuid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final getTimeout(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 40
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 41
    const-wide/16 v0, -0x1

    .line 43
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 47
    :goto_0
    return-wide v0

    .line 45
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toTimeoutHeaderString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 35
    const-string v0, "infinite"

    .line 36
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Second-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
