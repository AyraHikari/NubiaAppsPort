.class public Lcom/dd/plist/XMLPropertyListParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dd/plist/XMLPropertyListParser$PlistDtdResolver;
    }
.end annotation


# static fields
.field private static final FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 57
    :try_start_0
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-string v1, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 62
    :goto_0
    :try_start_1
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-string v1, "http://xml.org/sax/features/external-general-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 67
    :goto_1
    :try_start_2
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    :goto_2
    :try_start_3
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :goto_3
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 77
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 78
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 79
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 80
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 81
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_3

    .line 68
    :catch_1
    move-exception v0

    goto :goto_2

    .line 63
    :catch_2
    move-exception v0

    goto :goto_1

    .line 58
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    return-void
.end method

.method private static filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 257
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 258
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-object v1
.end method

.method public static getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/dd/plist/XMLPropertyListParser$PlistDtdResolver;

    invoke-direct {v1}, Lcom/dd/plist/XMLPropertyListParser$PlistDtdResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 94
    return-object v0
.end method

.method private static getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 273
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_2

    .line 274
    :cond_0
    check-cast p0, Lorg/w3c/dom/Text;

    .line 275
    invoke-interface {p0}, Lorg/w3c/dom/Text;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-nez v0, :cond_1

    .line 277
    const-string v0, ""

    .line 299
    :cond_1
    :goto_0
    return-object v0

    .line 281
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 282
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 286
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-eq v3, v4, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_4

    .line 288
    :cond_3
    check-cast v0, Lorg/w3c/dom/Text;

    .line 289
    invoke-interface {v0}, Lorg/w3c/dom/Text;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 290
    if-nez v0, :cond_1

    .line 291
    const-string v0, ""

    goto :goto_0

    .line 284
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 297
    :cond_5
    const-string v0, ""

    goto :goto_0

    .line 299
    :cond_6
    const-string v0, ""

    goto :goto_0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 112
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 118
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :goto_0
    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    :goto_1
    throw v0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    .line 172
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given XML document is not a property list."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The given XML document is not a property list."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "plist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The given XML property list has no root element!"

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 189
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 198
    :goto_0
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0

    .line 191
    :cond_3
    new-instance v0, Lcom/dd/plist/PropertyListFormatException;

    const-string v1, "The given XML property list has more than one root element!"

    invoke-direct {v0, v1}, Lcom/dd/plist/PropertyListFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method private static parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, "dict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    new-instance v3, Lcom/dd/plist/NSDictionary;

    invoke-direct {v3}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 213
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v4

    move v2, v0

    .line 214
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 215
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 216
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 218
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v1}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 214
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 245
    :goto_1
    return-object v0

    .line 223
    :cond_1
    const-string v2, "array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-static {v1}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v3

    .line 225
    new-instance v2, Lcom/dd/plist/NSArray;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Lcom/dd/plist/NSArray;-><init>(I)V

    move v1, v0

    .line 226
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 227
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 226
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 229
    goto :goto_1

    .line 230
    :cond_3
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    new-instance v0, Lcom/dd/plist/NSNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_1

    .line 232
    :cond_4
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    new-instance v1, Lcom/dd/plist/NSNumber;

    invoke-direct {v1, v0}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    move-object v0, v1

    goto :goto_1

    .line 234
    :cond_5
    const-string v0, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 236
    :cond_6
    const-string v0, "real"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 237
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_7
    const-string v0, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :cond_8
    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    new-instance v0, Lcom/dd/plist/NSData;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSData;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 242
    :cond_9
    const-string v0, "date"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 243
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
