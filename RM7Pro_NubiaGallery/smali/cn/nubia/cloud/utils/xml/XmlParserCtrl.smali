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
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 31
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 26
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

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

    .line 146
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized finishParser()V
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    .line 66
    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 68
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public moveToNextStartTag(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return v1
.end method

.method public parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 104
    invoke-virtual {p0, v2}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .line 109
    new-array v4, v3, [Ljava/lang/String;

    .line 110
    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v3, :cond_8

    const-string v7, "if"

    .line 115
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 116
    iget-object v7, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 118
    invoke-static {v0, v2}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v0

    goto :goto_3

    :cond_1
    const/4 v9, 0x4

    if-ne v7, v9, :cond_2

    .line 122
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v7, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    :cond_2
    if-ne v7, v1, :cond_5

    .line 126
    invoke-static {v0}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v1

    :goto_1
    if-eq v7, v8, :cond_4

    .line 128
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/cloud/utils/xml/XmlTag;->addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_1

    :cond_4
    :goto_2
    move-object v8, v1

    goto :goto_4

    .line 132
    :cond_5
    invoke-static {v0, v2}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v0

    goto :goto_3

    .line 136
    :cond_6
    invoke-static {v0}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v0

    :goto_3
    move-object v8, v0

    :goto_4
    if-lt v6, v3, :cond_7

    .line 141
    invoke-direct {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->nextTag()V

    return-object v8

    .line 139
    :cond_7
    aget-object v0, v4, v6

    aget-object v1, v5, v6

    invoke-interface {v8, v0, v1}, Lcn/nubia/cloud/utils/xml/XmlTag;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 112
    :cond_8
    iget-object v8, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 113
    iget-object v8, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public skipNearEndTag(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized startParser()Z
    .locals 3

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_3

    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 42
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 44
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mInStream:Ljava/io/InputStream;

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mXmlPullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_1
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 54
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlParserCtrl;->finishParser()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 57
    monitor-exit p0

    return v0

    .line 39
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u89e3\u6790\u64cd\u4f5c\u5df2\u505c\u6b62\uff0c\u4e0d\u80fd\u518d\u6267\u884c"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6709\u6b63\u5728\u8fdb\u884c\u7684\u64cd\u4f5c\u672afinish"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
