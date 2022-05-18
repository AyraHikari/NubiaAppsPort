.class public Lcom/hpplay/cybergarage/xml/parser/JaxpParser;
.super Lcom/hpplay/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/hpplay/cybergarage/xml/Parser;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Lcom/hpplay/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/xml/parser/JaxpParser;->parse(Lcom/hpplay/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/hpplay/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lcom/hpplay/cybergarage/xml/Node;
    .locals 6

    .prologue
    .line 48
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 52
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 59
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 62
    invoke-virtual {p1, v3}, Lcom/hpplay/cybergarage/xml/Node;->addValue(Ljava/lang/String;)V

    .line 98
    :cond_1
    :goto_0
    return-object p1

    .line 66
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 70
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_3

    .line 74
    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 76
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 80
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 81
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 82
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v1, v5, v4}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    move-object p1, v1

    .line 91
    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/hpplay/cybergarage/xml/parser/JaxpParser;->parse(Lcom/hpplay/cybergarage/xml/Node;Lorg/w3c/dom/Node;I)Lcom/hpplay/cybergarage/xml/Node;

    .line 95
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 96
    if-nez v0, :cond_5

    move-object p1, v1

    .line 98
    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 116
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 117
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/xml/parser/JaxpParser;->parse(Lcom/hpplay/cybergarage/xml/Node;Lorg/w3c/dom/Node;)Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :cond_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    new-instance v1, Lcom/hpplay/cybergarage/xml/ParserException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
