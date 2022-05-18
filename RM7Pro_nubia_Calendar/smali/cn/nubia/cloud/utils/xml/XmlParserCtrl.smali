.class public Lcn/nubia/cloud/utils/xml/XmlParserCtrl;
.super Ljava/lang/Object;
.source "XmlParserCtrl.java"

# interfaces
.implements Lcn/nubia/cloud/utils/xml/IXmlCtrl;


# instance fields
.field private final mHomeTag:Ljava/lang/String;

.field private mInStream:Ljava/io/InputStream;

.field private mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "homeTag"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 31
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "xmlFilePath"    # Ljava/lang/String;
    .param p2, "homeTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 26
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    .line 27
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
    .line 146
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 147
    .local v0, "type":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized finishParser()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

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

    .line 88
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 89
    .local v0, "eventType":I
    :cond_0
    if-eq v0, v1, :cond_2

    .line 90
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 91
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 104
    .local v3, "eventType":I
    if-eq v3, v10, :cond_0

    invoke-virtual {p0, v12}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v5, v4

    .line 142
    .end local v4    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .local v5, "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    :goto_0
    return-object v5

    .line 107
    .end local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .restart local v4    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    :cond_0
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "name":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 109
    .local v0, "attributeCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 110
    .local v1, "attributeNames":[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    .line 111
    .local v2, "attributeValues":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_1

    .line 112
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6

    .line 113
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 115
    :cond_1
    const-string v9, "if"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 116
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 117
    if-ne v3, v11, :cond_3

    .line 118
    invoke-static {v7, v12}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v4

    .line 138
    :cond_2
    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_7

    .line 139
    aget-object v9, v1, v6

    aget-object v10, v2, v6

    invoke-interface {v4, v9, v10}, Lcn/nubia/cloud/utils/xml/XmlTag;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 120
    :cond_3
    const/4 v8, 0x0

    .line 121
    .local v8, "text":Ljava/lang/String;
    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    .line 122
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 123
    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 125
    :cond_4
    if-ne v3, v10, :cond_5

    .line 126
    invoke-static {v7}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v4

    .line 128
    :goto_4
    if-eq v3, v11, :cond_2

    iget-object v9, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 129
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;

    move-result-object v9

    invoke-interface {v4, v9}, Lcn/nubia/cloud/utils/xml/XmlTag;->addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_4

    .line 132
    :cond_5
    invoke-static {v7, v8}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v4

    goto :goto_2

    .line 136
    .end local v8    # "text":Ljava/lang/String;
    :cond_6
    invoke-static {v7}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v4

    goto :goto_2

    .line 141
    :cond_7
    invoke-direct {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->nextTag()V

    move-object v5, v4

    .line 142
    .end local v4    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .restart local v5    # "homeTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    goto/16 :goto_0
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
    .line 74
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 75
    .local v0, "eventType":I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 76
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 77
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v1

    .line 83
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startParser()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v3, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u6709\u6b63\u5728\u8fdb\u884c\u7684\u64cd\u4f5c\u672afinish"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 38
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u89e3\u6790\u64cd\u4f5c\u5df2\u505c\u6b62\uff0c\u4e0d\u80fd\u518d\u6267\u884c"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 44
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    const-string v5, "UTF-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 46
    .local v1, "eventType":I
    if-eq v1, v2, :cond_3

    .line 47
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 48
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    .line 50
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .end local v1    # "eventType":I
    :cond_3
    :goto_0
    monitor-exit p0

    return v2

    .line 53
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->finishParser()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    const/4 v2, 0x0

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1
.end method
