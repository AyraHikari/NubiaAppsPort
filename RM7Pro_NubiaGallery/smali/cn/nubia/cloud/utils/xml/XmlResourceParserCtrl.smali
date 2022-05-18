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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    .line 24
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

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

    .line 115
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    :cond_0
    return-void
.end method


# virtual methods
.method public moveToNextStartTag(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    return v1
.end method

.method public parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, v2}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    .line 80
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_6

    .line 90
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    .line 92
    invoke-static {v0, v2}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v0

    goto :goto_3

    :cond_1
    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    .line 96
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    :cond_2
    if-ne v3, v1, :cond_5

    .line 100
    invoke-static {v0}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v1

    :goto_1
    if-eq v3, v5, :cond_4

    .line 102
    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->parseTagAndMoveToNext()Lcn/nubia/cloud/utils/xml/XmlTag;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/cloud/utils/xml/XmlTag;->addSubTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_1

    :cond_4
    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 106
    :cond_5
    invoke-static {v0, v2}, Lcn/nubia/cloud/utils/xml/NBXmlTag;->obtain(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/cloud/utils/xml/NBXmlTag;

    move-result-object v0

    .line 109
    :goto_3
    invoke-interface {v0, v4}, Lcn/nubia/cloud/utils/xml/XmlTag;->addAttributes(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->nextTag()V

    return-object v0

    .line 82
    :cond_6
    iget-object v6, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    iget-object v7, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    const/4 v8, -0x1

    invoke-interface {v7, v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v7

    if-ne v7, v8, :cond_7

    .line 85
    iget-object v7, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v7, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 87
    :cond_7
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

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

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized startParser()Z
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 31
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->mHomeTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/utils/xml/XmlResourceParserCtrl;->moveToNextStartTag(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 38
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 40
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
