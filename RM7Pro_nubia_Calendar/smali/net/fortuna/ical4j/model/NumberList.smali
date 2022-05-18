.class public Lnet/fortuna/ical4j/model/NumberList;
.super Ljava/util/ArrayList;
.source "NumberList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x172415dbc0fca461L


# instance fields
.field private final allowsNegativeValues:Z

.field private final maxValue:I

.field private final minValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 63
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "allowsNegativeValues"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput p1, p0, Lnet/fortuna/ical4j/model/NumberList;->minValue:I

    .line 73
    iput p2, p0, Lnet/fortuna/ical4j/model/NumberList;->maxValue:I

    .line 74
    iput-boolean p3, p0, Lnet/fortuna/ical4j/model/NumberList;->allowsNegativeValues:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "aString"    # Ljava/lang/String;

    .prologue
    .line 82
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/fortuna/ical4j/model/NumberList;-><init>(Ljava/lang/String;IIZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "aString"    # Ljava/lang/String;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "allowsNegativeValues"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p2, p3, p4}, Lnet/fortuna/ical4j/model/NumberList;-><init>(IIZ)V

    .line 93
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "t":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Numbers;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "value":I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2}, Lnet/fortuna/ical4j/model/NumberList;->add(Ljava/lang/Integer;)Z

    goto :goto_0

    .line 98
    .end local v1    # "value":I
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Integer;)Z
    .locals 4
    .param p1, "aNumber"    # Ljava/lang/Integer;

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    .local v0, "abs":I
    shr-int/lit8 v1, v0, 0x1f

    neg-int v2, v0

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    if-gez v1, :cond_1

    .line 107
    iget-boolean v1, p0, Lnet/fortuna/ical4j/model/NumberList;->allowsNegativeValues:Z

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative value not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 112
    :cond_1
    iget v1, p0, Lnet/fortuna/ical4j/model/NumberList;->minValue:I

    if-lt v0, v1, :cond_2

    iget v1, p0, Lnet/fortuna/ical4j/model/NumberList;->maxValue:I

    if-le v0, v1, :cond_3

    .line 113
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value not in range ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/fortuna/ical4j/model/NumberList;->minValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lnet/fortuna/ical4j/model/NumberList;->maxValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_3
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/NumberList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "aNumber"    # Ljava/lang/Integer;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/NumberList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/NumberList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
