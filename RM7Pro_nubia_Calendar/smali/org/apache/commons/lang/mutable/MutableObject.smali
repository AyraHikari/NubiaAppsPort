.class public Lorg/apache/commons/lang/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lorg/apache/commons/lang/mutable/Mutable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 87
    instance-of v2, p1, Lorg/apache/commons/lang/mutable/MutableObject;

    if-eqz v2, :cond_1

    .line 88
    check-cast p1, Lorg/apache/commons/lang/mutable/MutableObject;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 89
    .local v0, "other":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 91
    .end local v0    # "other":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
