.class public Lorg/apache/commons/lang/enums/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enums/Enum;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lorg/apache/commons/lang/enums/Enum;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/commons/lang/enums/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enums/ValuedEnum;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .prologue
    .line 64
    invoke-static {p0, p1}, Lorg/apache/commons/lang/enums/ValuedEnum;->getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enums/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enums/ValuedEnum;

    return-object v0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 101
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 81
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p0, "enumClass"    # Ljava/lang/Class;

    .prologue
    .line 121
    invoke-static {p0}, Lorg/apache/commons/lang/enums/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
