.class public Lcom/hpplay/cybergarage/soap/SOAP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BODY:Ljava/lang/String; = "Body"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "text/xml; charset=\"utf-8\""

.field public static final DELIM:Ljava/lang/String; = ":"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final ENCSTYLE_URL:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENVELOPE:Ljava/lang/String; = "Envelope"

.field public static final ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final ERROR_DESCRIPTION:Ljava/lang/String; = "errorDescription"

.field public static final FAULT:Ljava/lang/String; = "Fault"

.field public static final FAULTACTOR:Ljava/lang/String; = "faultactor"

.field public static final FAULT_CODE:Ljava/lang/String; = "faultcode"

.field public static final FAULT_STRING:Ljava/lang/String; = "faultstring"

.field public static final METHODNS:Ljava/lang/String; = "u"

.field public static final RESPONSE:Ljava/lang/String; = "Response"

.field public static final RESULTSTATUS:Ljava/lang/String; = "ResultStatus"

.field public static final UPNP_ERROR:Ljava/lang/String; = "UPnPError"

.field public static final VERSION_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

.field public static final XMLNS:Ljava/lang/String; = "s"

.field public static final XMLNS_URL:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field private static xmlParser:Lcom/hpplay/cybergarage/xml/Parser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createEnvelopeBodyNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "s:Envelope"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v1, "xmlns:s"

    const-string v2, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "s:encodingStyle"

    const-string v2, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "s:Body"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 61
    return-object v0
.end method

.method public static final getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/hpplay/cybergarage/soap/SOAP;->xmlParser:Lcom/hpplay/cybergarage/xml/Parser;

    return-object v0
.end method

.method public static final setXMLParser(Lcom/hpplay/cybergarage/xml/Parser;)V
    .locals 0

    .prologue
    .line 71
    sput-object p0, Lcom/hpplay/cybergarage/soap/SOAP;->xmlParser:Lcom/hpplay/cybergarage/xml/Parser;

    .line 72
    return-void
.end method
