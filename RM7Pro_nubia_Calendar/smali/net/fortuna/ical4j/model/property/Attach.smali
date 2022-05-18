.class public Lnet/fortuna/ical4j/model/property/Attach;
.super Lnet/fortuna/ical4j/model/Property;
.source "Attach.java"


# static fields
.field private static final serialVersionUID:J = 0x3d9dde8dae7d5cdcL


# instance fields
.field private binary:[B

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "aUri"    # Ljava/net/URI;

    .prologue
    .line 164
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 165
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 166
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 136
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 137
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Attach;->setValue(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aUri"    # Ljava/net/URI;

    .prologue
    .line 173
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 174
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 175
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;[B)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "data"    # [B

    .prologue
    .line 156
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 157
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    .line 158
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 144
    const-string v0, "ATTACH"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 146
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 147
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 148
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    .line 149
    return-void
.end method


# virtual methods
.method public final getBinary()[B
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 263
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-static {v4}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    :goto_0
    return-object v4

    .line 266
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 269
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/EncoderFactory;->getInstance()Lnet/fortuna/ical4j/util/EncoderFactory;

    move-result-object v5

    const-string v4, "ENCODING"

    .line 271
    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 270
    invoke-virtual {v5, v4}, Lnet/fortuna/ical4j/util/EncoderFactory;->createBinaryEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryEncoder;

    move-result-object v1

    .line 272
    .local v1, "encoder":Lorg/apache/commons/codec/BinaryEncoder;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/codec/BinaryEncoder;->encode([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 274
    .end local v1    # "encoder":Lorg/apache/commons/codec/BinaryEncoder;
    :catch_0
    move-exception v3

    .line 275
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-class v4, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 276
    .local v2, "log":Lorg/apache/commons/logging/Log;
    const-string v4, "Error encoding binary data"

    invoke-interface {v2, v4, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 283
    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 278
    :catch_1
    move-exception v0

    .line 279
    .local v0, "ee":Lorg/apache/commons/codec/EncoderException;
    const-class v4, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 280
    .restart local v2    # "log":Lorg/apache/commons/logging/Log;
    const-string v4, "Error encoding binary data"

    invoke-interface {v2, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setBinary([B)V
    .locals 1
    .param p1, "binary"    # [B

    .prologue
    .line 290
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 293
    return-void
.end method

.method public final setUri(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 299
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    .line 302
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "aValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 236
    const-string v4, "ENCODING"

    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 239
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/DecoderFactory;->getInstance()Lnet/fortuna/ical4j/util/DecoderFactory;

    move-result-object v5

    const-string v4, "ENCODING"

    .line 241
    invoke-virtual {p0, v4}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 240
    invoke-virtual {v5, v4}, Lnet/fortuna/ical4j/util/DecoderFactory;->createBinaryDecoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lorg/apache/commons/codec/BinaryDecoder;

    move-result-object v1

    .line 242
    .local v1, "decoder":Lorg/apache/commons/codec/BinaryDecoder;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/codec/BinaryDecoder;->decode([B)[B

    move-result-object v4

    iput-object v4, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    .end local v1    # "decoder":Lorg/apache/commons/codec/BinaryDecoder;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v3

    .line 245
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-class v4, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 246
    .local v2, "log":Lorg/apache/commons/logging/Log;
    const-string v4, "Error encoding binary data"

    invoke-interface {v2, v4, v3}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "de":Lorg/apache/commons/codec/DecoderException;
    const-class v4, Lnet/fortuna/ical4j/model/property/Attach;

    invoke-static {v4}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v2

    .line 250
    .restart local v2    # "log":Lorg/apache/commons/logging/Log;
    const-string v4, "Error decoding binary data"

    invoke-interface {v2, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    .end local v0    # "de":Lorg/apache/commons/codec/DecoderException;
    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    iput-object v4, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    goto :goto_0
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "FMTTYPE"

    .line 186
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 185
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 196
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "ENCODING"

    .line 198
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 197
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 199
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    const-string v1, "ENCODING"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/Attach;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "If the value type parameter is [BINARY], the inlineencoding parameter MUST be specified with the value [BASE64]"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method
