.class public Lcom/hpplay/cybergarage/xml/parser/XmlPullParser;
.super Lcom/hpplay/cybergarage/xml/Parser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/hpplay/cybergarage/xml/Parser;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 98
    .line 101
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 103
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/xml/parser/XmlPullParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 47
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v3, v1

    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 49
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 50
    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    move-object v2, v0

    .line 88
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move-object v3, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 55
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 57
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 61
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 64
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    .line 65
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v1, v5, v6}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70
    :cond_2
    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 73
    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    move-object v2, v0

    .line 76
    goto :goto_1

    .line 78
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 80
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    :cond_5
    move-object v1, v3

    move-object v2, v0

    .line 82
    goto :goto_1

    .line 84
    :pswitch_2
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :cond_6
    return-object v0

    .line 50
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
