.class public Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;
.super Ljava/lang/Object;
.source "XmlResourceParserCtrl.java"

# interfaces
.implements Lcn/nubia/cloud/utils/xml/IXmlCtrl;


# instance fields
.field private final mHomeTag:Ljava/lang/String;

.field private final mXmlParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method public constructor <init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlResourceParser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "homeTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    .line 24
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private nextTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 116
    .local v0, "type":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public moveToNextStartTag(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 60
    .local v0, "eventType":I
    :cond_0
    if-eq v0, v1, :cond_2

    .line 61
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 62
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, -0x1

    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 75
    .local v4, "eventType":I
    if-eq v4, v12, :cond_0

    invoke-virtual {p0, v14}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v6, v5

    .line 111
    .end local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .local v6, "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    :goto_0
    return-object v6

    .line 78
    .end local v6    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .restart local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    :cond_0
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 80
    .local v2, "attributeCount":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v3, "bundle":Landroid/os/Bundle;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 82
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10, v7}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "attrName":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10, v7, v11}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v1

    .line 84
    .local v1, "attrRes":I
    if-ne v1, v11, :cond_1

    .line 85
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 90
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrRes":I
    :cond_2
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 91
    if-ne v4, v13, :cond_4

    .line 92
    invoke-static {v8, v14}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v5

    .line 109
    :cond_3
    :goto_3
    invoke-interface {v5, v3}, Lcn/nubia/cloud/utils/xml/XmlTag;->addAttributes(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->nextTag()V

    move-object v6, v5

    .line 111
    .end local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .restart local v6    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    goto :goto_0

    .line 94
    .end local v6    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .restart local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    :cond_4
    const/4 v9, 0x0

    .line 95
    .local v9, "text":Ljava/lang/String;
    const/4 v10, 0x4

    if-ne v4, v10, :cond_5

    .line 96
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 97
    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .line 99
    :cond_5
    if-ne v4, v12, :cond_6

    .line 100
    invoke-static {v8}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v5

    .line 102
    :goto_4
    if-eq v4, v13, :cond_3

    iget-object v10, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 103
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;

    move-result-object v10

    invoke-interface {v5, v10}, Lcn/nubia/cloud/utils/xml/XmlTag;->addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_4

    .line 106
    :cond_6
    invoke-static {v8, v9}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v5

    goto :goto_3
.end method

.method public skipNearEndTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 46
    .local v0, "eventType":I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 47
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 48
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v1

    .line 54
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startParser()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 30
    .local v1, "eventType":I
    if-eq v1, v2, :cond_1

    .line 31
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    .line 34
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v1    # "eventType":I
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 37
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    const/4 v2, 0x0

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
