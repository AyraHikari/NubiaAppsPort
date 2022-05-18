.class public Lnet/fortuna/ical4j/model/TextList;
.super Ljava/lang/Object;
.source "TextList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5cb00630c60b94cL


# instance fields
.field private texts:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v4, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ledu/emory/mathcs/backport/java/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    .line 72
    const-string v4, "([^\\\\](?:\\\\{2})),|([^\\\\]),"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 74
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 75
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 77
    .local v3, "textValues":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, "$1$2&quot;"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&quot;"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 87
    iget-object v4, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    aget-object v5, v3, v0

    invoke-static {v5}, Lnet/fortuna/ical4j/util/Strings;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :cond_0
    const-string v4, "(?<!\\\\),"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 89
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "textValues"    # [Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    .line 96
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v0, "b":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lnet/fortuna/ical4j/model/TextList;->texts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lnet/fortuna/ical4j/util/Strings;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
