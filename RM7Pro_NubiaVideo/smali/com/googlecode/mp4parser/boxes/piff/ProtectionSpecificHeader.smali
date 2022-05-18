.class public Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static uuidRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field data:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->uuidRegistry:Ljava/util/Map;

    const-string v1, "9A04F079-9840-4286-AB92-E65BE0885F95"

    .line 2
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const-class v2, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFor(Ljava/util/UUID;Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    .locals 1

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->uuidRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;-><init>()V

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->parse(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    check-cast p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtectionSpecificHeader"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{data="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/ProtectionSpecificHeader;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 7
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {v2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
