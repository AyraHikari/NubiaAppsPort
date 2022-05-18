.class public Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;
.super Ljava/lang/Object;
.source "XmlSerializerCtrl.java"

# interfaces
.implements Lcn/nubia/cloud/utils/xml/IXmlCtrl;


# instance fields
.field private final mHomeTag:Ljava/lang/String;

.field private mOutStream:Ljava/io/BufferedOutputStream;

.field private final mXmlFilePath:Ljava/lang/String;

.field private mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlFilePath"    # Ljava/lang/String;
    .param p2, "homeTag"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlFilePath:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public finishSerializer()Z
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_1

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "finish \u4e4b\u524d\u9700\u8981\u5148start"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 69
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 70
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public startSerializer()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 32
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_1

    .line 33
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\u6709\u6b63\u5728\u8fdb\u884c\u7684\u64cd\u4f5c\u672afinish"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkdirs error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 50
    .end local v1    # "outFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 44
    .restart local v1    # "outFile":Ljava/io/File;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    .line 46
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    const-string v5, "UTF-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 52
    .end local v1    # "outFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V
    .locals 9
    .param p1, "tag"    # Lcn/nubia/cloud/utils/xml/XmlTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v6, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getAttributes()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "attributes":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 91
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->hasSubTags()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getSubTags()Ljava/util/List;

    move-result-object v4

    .line 93
    .local v4, "subTags":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/xml/XmlTag;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/cloud/utils/xml/XmlTag;

    .line 94
    .local v3, "subTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    invoke-virtual {p0, v3}, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->writeTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_1

    .line 97
    .end local v3    # "subTag":Lcn/nubia/cloud/utils/xml/XmlTag;
    .end local v4    # "subTags":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/utils/xml/XmlTag;>;"
    :cond_1
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 99
    iget-object v6, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    return-void
.end method
