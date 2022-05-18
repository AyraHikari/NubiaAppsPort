.class public Lorg/apache/commons/lang/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"

# interfaces
.implements Lorg/apache/commons/lang/mutable/Mutable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = -0x430a31a5c56f1c87L


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 59
    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 177
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/mutable/MutableBoolean;

    .line 178
    .local v1, "other":Lorg/apache/commons/lang/mutable/MutableBoolean;
    iget-boolean v0, v1, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 179
    .local v0, "anotherVal":Z
    iget-boolean v2, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 153
    instance-of v1, p1, Lorg/apache/commons/lang/mutable/MutableBoolean;

    if-eqz v1, :cond_0

    .line 154
    iget-boolean v1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    check-cast p1, Lorg/apache/commons/lang/mutable/MutableBoolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/commons/lang/mutable/MutableBoolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 156
    :cond_0
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isFalse()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrue()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    iget-boolean v1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/mutable/MutableBoolean;->setValue(Z)V

    .line 99
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    .line 89
    return-void
.end method

.method public toBoolean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Lorg/apache/commons/lang/BooleanUtils;->toBooleanObject(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lorg/apache/commons/lang/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
