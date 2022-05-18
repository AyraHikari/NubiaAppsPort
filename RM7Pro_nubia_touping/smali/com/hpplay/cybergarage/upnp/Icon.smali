.class public Lcom/hpplay/cybergarage/upnp/Icon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEPTH:Ljava/lang/String; = "depth"

.field public static final ELEM_NAME:Ljava/lang/String; = "icon"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final MIME_TYPE:Ljava/lang/String; = "mimetype"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private bytes:[B

.field private iconNode:Lcom/hpplay/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "icon"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Icon;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    .line 212
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B

    .line 47
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Icon;->iconNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 48
    return-void
.end method

.method public static isIconNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 59
    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->hasURL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    const-class v0, Lcom/hpplay/cybergarage/upnp/Icon;

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 234
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 241
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B

    return-object v0

    .line 236
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 237
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "depth"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->iconNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 107
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBytes()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->hasURL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-class v2, Lcom/hpplay/cybergarage/upnp/Icon;

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public hasMimeType()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 78
    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasURL()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 180
    if-nez v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isURL(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBytes([B)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Icon;->bytes:[B

    .line 216
    return-void
.end method

.method public setDepth(I)V
    .locals 1

    .prologue
    .line 149
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Icon;->setDepth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDepth(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "depth"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .prologue
    .line 122
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Icon;->setHeight(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Icon;->userData:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .prologue
    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Icon;->setWidth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
