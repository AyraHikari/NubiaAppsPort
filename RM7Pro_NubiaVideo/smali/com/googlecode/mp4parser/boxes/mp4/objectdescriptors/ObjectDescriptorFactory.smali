.class public Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static descriptorRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->log:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->descriptorRegistry:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorBase;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ProfileLevelIndicationDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ExtensionProfileLevelDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 15
    const-class v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;

    .line 16
    invoke-interface {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;->tags()[I

    move-result-object v3

    .line 17
    invoke-interface {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/Descriptor;->objectTypeIndication()I

    move-result v2

    .line 18
    sget-object v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->descriptorRegistry:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 20
    :cond_0
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v3, v6

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22
    :cond_1
    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->descriptorRegistry:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFrom(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2
    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->descriptorRegistry:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->descriptorRegistry:Ljava/util/Map;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, " and tag "

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    sget-object v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t instantiate BaseDescriptor class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for objectTypeIndication "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 9
    :cond_2
    :goto_0
    sget-object v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ObjectDescriptorFactory;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ObjectDescriptor found for objectTypeIndication "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {v3, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 12
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/UnknownDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/UnknownDescriptor;-><init>()V

    .line 13
    :goto_1
    invoke-virtual {v3, v0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;->parse(ILjava/nio/ByteBuffer;)V

    return-object v3
.end method
