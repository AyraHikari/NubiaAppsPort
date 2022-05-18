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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlFilePath:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finishSerializer()Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    sget-object v1, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 69
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 70
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 72
    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "finish \u4e4b\u524d\u9700\u8981\u5148start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSerializer()Z
    .locals 4

    const-string v0, "UTF-8"

    .line 32
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    if-nez v1, :cond_2

    .line 36
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdirs error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mOutStream:Ljava/io/BufferedOutputStream;

    .line 46
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mHomeTag:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u6709\u6b63\u5728\u8fdb\u884c\u7684\u64cd\u4f5c\u672afinish"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getAttributes()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 91
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->hasSubTags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getSubTags()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/utils/xml/XmlTag;

    .line 94
    invoke-virtual {p0, v1}, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->writeTag(Lcn/nubia/cloud/utils/xml/XmlTag;)V

    goto :goto_1

    .line 97
    :cond_1
    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    invoke-interface {p1}, Lcn/nubia/cloud/utils/xml/XmlTag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 87
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->mXmlSerializer:Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcn/nubia/cloud/utils/xml/XmlSerializerCtrl;->NAME_SPACE:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-interface {v3, v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method
