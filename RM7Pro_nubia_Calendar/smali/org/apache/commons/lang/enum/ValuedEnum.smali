.class public abstract Lorg/apache/commons/lang/enum/ValuedEnum;
.super Lorg/apache/commons/lang/enum/Enum;
.source "ValuedEnum.java"


# static fields
.field private static final serialVersionUID:J = -0x62f19b5ff54bca1dL


# instance fields
.field private final iValue:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/enum/Enum;-><init>(Ljava/lang/String;)V

    .line 127
    iput p2, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    .line 128
    return-void
.end method

.method protected static getEnum(Ljava/lang/Class;I)Lorg/apache/commons/lang/enum/Enum;
    .locals 5
    .param p0, "enumClass"    # Ljava/lang/Class;
    .param p1, "value"    # I

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Enum Class must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/enum/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "list":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang/enum/ValuedEnum;

    .line 149
    .local v0, "enumeration":Lorg/apache/commons/lang/enum/ValuedEnum;
    invoke-virtual {v0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 153
    .end local v0    # "enumeration":Lorg/apache/commons/lang/enum/ValuedEnum;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    check-cast p1, Lorg/apache/commons/lang/enum/ValuedEnum;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p1, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "shortName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/enum/ValuedEnum;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    .line 194
    .end local v0    # "shortName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang/enum/ValuedEnum;->iToString:Ljava/lang/String;

    return-object v1
.end method
