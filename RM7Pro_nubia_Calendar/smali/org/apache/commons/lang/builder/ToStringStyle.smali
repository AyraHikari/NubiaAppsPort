.class public abstract Lorg/apache/commons/lang/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 94
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 105
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 117
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 127
    new-instance v0, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 135
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    .line 217
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    .line 222
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 227
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 232
    const-string v0, "["

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 237
    const-string v0, "]"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 242
    const-string v0, "="

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 247
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 252
    iput-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 257
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 262
    const-string v0, "{"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 267
    const-string v0, ","

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 272
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    .line 277
    const-string v0, "}"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 283
    iput-boolean v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 288
    const-string v0, "<null>"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 293
    const-string v0, "<size="

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 298
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 303
    const-string v0, "<"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 308
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 317
    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 161
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 162
    .local v0, "m":Ljava/util/Map;
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-eqz p0, :cond_1

    .line 176
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 177
    .local v0, "m":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "m":Ljava/util/Map;
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 179
    .restart local v0    # "m":Ljava/util/Map;
    sget-object v1, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 181
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v0    # "m":Ljava/util/Map;
    :cond_1
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 198
    if-eqz p0, :cond_0

    .line 199
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    .line 200
    .local v0, "m":Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lorg/apache/commons/lang/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 207
    .end local v0    # "m":Ljava/util/Map;
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 722
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 724
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 750
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 752
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 778
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 780
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 806
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 808
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 666
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 668
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 638
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 640
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 431
    if-nez p3, :cond_0

    .line 432
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 438
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 439
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 694
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 696
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 834
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 836
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1141
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1143
    if-nez p3, :cond_0

    .line 1144
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1153
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1154
    return-void

    .line 1146
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1150
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1202
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1204
    if-nez p3, :cond_0

    .line 1205
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1214
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1215
    return-void

    .line 1207
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1263
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1265
    if-nez p3, :cond_0

    .line 1266
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1275
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1276
    return-void

    .line 1268
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 1272
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1324
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1326
    if-nez p3, :cond_0

    .line 1327
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1336
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1337
    return-void

    .line 1329
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 1333
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1019
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1021
    if-nez p3, :cond_0

    .line 1022
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1031
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1032
    return-void

    .line 1024
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 958
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 960
    if-nez p3, :cond_0

    .line 961
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 970
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 971
    return-void

    .line 963
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 862
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 864
    if-nez p3, :cond_0

    .line 865
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 874
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 875
    return-void

    .line 867
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1080
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1082
    if-nez p3, :cond_0

    .line 1083
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1092
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1093
    return-void

    .line 1085
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z
    .param p4, "fullDetail"    # Ljava/lang/Boolean;

    .prologue
    .line 1385
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1387
    if-nez p3, :cond_0

    .line 1388
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1397
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1398
    return-void

    .line 1390
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1394
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1442
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1443
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1444
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_1

    .line 1445
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1481
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1482
    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1472
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1473
    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 572
    invoke-static {p1, p3}, Lorg/apache/commons/lang/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # B

    .prologue
    .line 736
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 737
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # C

    .prologue
    .line 764
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 765
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 792
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 793
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 820
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 821
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 680
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 681
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 652
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 653
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 585
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 586
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "coll"    # Ljava/util/Collection;

    .prologue
    .line 597
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 598
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "map"    # Ljava/util/Map;

    .prologue
    .line 609
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 610
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # S

    .prologue
    .line 708
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 709
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 848
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 849
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .prologue
    .line 1166
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1168
    if-lez v0, :cond_0

    .line 1169
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1171
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .prologue
    .line 1227
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1229
    if-lez v0, :cond_0

    .line 1230
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1232
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1234
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .prologue
    .line 1288
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1290
    if-lez v0, :cond_0

    .line 1291
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1293
    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 1289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1296
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .prologue
    .line 1349
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1351
    if-lez v0, :cond_0

    .line 1352
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 1350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1356
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1357
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .prologue
    .line 1044
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1046
    if-lez v0, :cond_0

    .line 1047
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1049
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .prologue
    .line 983
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 985
    if-lez v0, :cond_0

    .line 986
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 988
    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 991
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .prologue
    .line 889
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 890
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 891
    aget-object v1, p3, v0

    .line 892
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 893
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    :cond_0
    if-nez v1, :cond_1

    .line 896
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 890
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 899
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 902
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .prologue
    .line 1105
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1107
    if-lez v0, :cond_0

    .line 1108
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1110
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 1106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1113
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .prologue
    .line 1410
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1412
    if-lez v0, :cond_0

    .line 1413
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1415
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 1411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1417
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    .line 389
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1525
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 1526
    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1502
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1503
    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1512
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1513
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1514
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1516
    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1459
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1460
    invoke-static {p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 1461
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1462
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "detail"    # Z

    .prologue
    .line 461
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Character;

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    .line 470
    :try_start_0
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 471
    if-eqz p4, :cond_1

    .line 472
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_1
    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    goto :goto_0

    .line 474
    :cond_1
    :try_start_1
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 555
    :catchall_0
    move-exception v1

    invoke-static {p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw v1

    .line 477
    :cond_2
    :try_start_2
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 478
    if-eqz p4, :cond_3

    .line 479
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 481
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_1

    .line 484
    :cond_4
    instance-of v1, p3, [J

    if-eqz v1, :cond_6

    .line 485
    if-eqz p4, :cond_5

    .line 486
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    .line 488
    :cond_5
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    .line 491
    :cond_6
    instance-of v1, p3, [I

    if-eqz v1, :cond_8

    .line 492
    if-eqz p4, :cond_7

    .line 493
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    .line 495
    :cond_7
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    .line 498
    :cond_8
    instance-of v1, p3, [S

    if-eqz v1, :cond_a

    .line 499
    if-eqz p4, :cond_9

    .line 500
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    .line 502
    :cond_9
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    .line 505
    :cond_a
    instance-of v1, p3, [B

    if-eqz v1, :cond_c

    .line 506
    if-eqz p4, :cond_b

    .line 507
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 509
    :cond_b
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 512
    :cond_c
    instance-of v1, p3, [C

    if-eqz v1, :cond_e

    .line 513
    if-eqz p4, :cond_d

    .line 514
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 516
    :cond_d
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    .line 519
    :cond_e
    instance-of v1, p3, [D

    if-eqz v1, :cond_10

    .line 520
    if-eqz p4, :cond_f

    .line 521
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 523
    :cond_f
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    .line 526
    :cond_10
    instance-of v1, p3, [F

    if-eqz v1, :cond_12

    .line 527
    if-eqz p4, :cond_11

    .line 528
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 530
    :cond_11
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    .line 533
    :cond_12
    instance-of v1, p3, [Z

    if-eqz v1, :cond_14

    .line 534
    if-eqz p4, :cond_13

    .line 535
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 537
    :cond_13
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    .line 540
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 541
    if-eqz p4, :cond_15

    .line 542
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 544
    :cond_15
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 548
    :cond_16
    if-eqz p4, :cond_17

    .line 549
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 551
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 1493
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1494
    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 367
    if-eqz p2, :cond_0

    .line 368
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 371
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .prologue
    .line 1186
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1187
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .prologue
    .line 1247
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1248
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .prologue
    .line 1308
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1309
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .prologue
    .line 1369
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1370
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .prologue
    .line 1064
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1065
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .prologue
    .line 1003
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1004
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .prologue
    .line 942
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 943
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .prologue
    .line 1125
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1126
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .prologue
    .line 1430
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 1431
    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    .line 1544
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1545
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1546
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1547
    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "superToString"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "toString"    # Ljava/lang/String;

    .prologue
    .line 346
    if-eqz p2, :cond_1

    .line 347
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 348
    .local v1, "pos1":I
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "pos2":I
    if-eq v1, v2, :cond_1

    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    .line 350
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "data":Ljava/lang/String;
    iget-boolean v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 354
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 358
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "pos1":I
    .end local v2    # "pos2":I
    :cond_1
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1740
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 1580
    invoke-static {p1}, Lorg/apache/commons/lang/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2031
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .locals 1

    .prologue
    .line 1720
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .locals 1

    .prologue
    .line 1699
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .locals 1

    .prologue
    .line 1948
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .locals 1

    .prologue
    .line 1924
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "fullDetailRequest"    # Ljava/lang/Boolean;

    .prologue
    .line 1564
    if-nez p1, :cond_0

    .line 1565
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1567
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected isShortClassName()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected isUseClassName()Z
    .locals 1

    .prologue
    .line 1594
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .prologue
    .line 1658
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .locals 1

    .prologue
    .line 1615
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 915
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 917
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 918
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 919
    .local v1, "item":Ljava/lang/Object;
    if-lez v0, :cond_0

    .line 920
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 922
    :cond_0
    if-nez v1, :cond_1

    .line 923
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 917
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v3}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 929
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 930
    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 399
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 400
    .local v1, "len":I
    iget-object v4, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 401
    .local v3, "sepLen":I
    if-lez v1, :cond_1

    if-lez v3, :cond_1

    if-lt v1, v3, :cond_1

    .line 402
    const/4 v2, 0x1

    .line 403
    .local v2, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 404
    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 405
    const/4 v2, 0x0

    .line 409
    :cond_0
    if-eqz v2, :cond_1

    .line 410
    sub-int v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 413
    .end local v0    # "i":I
    .end local v2    # "match":Z
    :cond_1
    return-void

    .line 403
    .restart local v0    # "i":I
    .restart local v2    # "match":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setArrayContentDetail(Z)V
    .locals 0
    .param p1, "arrayContentDetail"    # Z

    .prologue
    .line 1729
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayContentDetail:Z

    .line 1730
    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayEnd"    # Ljava/lang/String;

    .prologue
    .line 1778
    if-nez p1, :cond_0

    .line 1779
    const-string p1, ""

    .line 1781
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "arraySeparator"    # Ljava/lang/String;

    .prologue
    .line 1804
    if-nez p1, :cond_0

    .line 1805
    const-string p1, ""

    .line 1807
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 1808
    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayStart"    # Ljava/lang/String;

    .prologue
    .line 1752
    if-nez p1, :cond_0

    .line 1753
    const-string p1, ""

    .line 1755
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1756
    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEnd"    # Ljava/lang/String;

    .prologue
    .line 1856
    if-nez p1, :cond_0

    .line 1857
    const-string p1, ""

    .line 1859
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 1860
    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentStart"    # Ljava/lang/String;

    .prologue
    .line 1830
    if-nez p1, :cond_0

    .line 1831
    const-string p1, ""

    .line 1833
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 1834
    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .locals 0
    .param p1, "defaultFullDetail"    # Z

    .prologue
    .line 1709
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->defaultFullDetail:Z

    .line 1710
    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNameValueSeparator"    # Ljava/lang/String;

    .prologue
    .line 1882
    if-nez p1, :cond_0

    .line 1883
    const-string p1, ""

    .line 1885
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 1886
    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldSeparator"    # Ljava/lang/String;

    .prologue
    .line 1908
    if-nez p1, :cond_0

    .line 1909
    const-string p1, ""

    .line 1911
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 1912
    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtEnd"    # Z

    .prologue
    .line 1959
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 1960
    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0
    .param p1, "fieldSeparatorAtStart"    # Z

    .prologue
    .line 1935
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 1936
    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0
    .param p1, "nullText"    # Ljava/lang/String;

    .prologue
    .line 1982
    if-nez p1, :cond_0

    .line 1983
    const-string p1, ""

    .line 1985
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->nullText:Ljava/lang/String;

    .line 1986
    return-void
.end method

.method protected setShortClassName(Z)V
    .locals 0
    .param p1, "shortClassName"    # Z

    .prologue
    .line 1647
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 1648
    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeEndText"    # Ljava/lang/String;

    .prologue
    .line 2046
    if-nez p1, :cond_0

    .line 2047
    const-string p1, ""

    .line 2049
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 2050
    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "sizeStartText"    # Ljava/lang/String;

    .prologue
    .line 2014
    if-nez p1, :cond_0

    .line 2015
    const-string p1, ""

    .line 2017
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 2018
    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectEndText"    # Ljava/lang/String;

    .prologue
    .line 2110
    if-nez p1, :cond_0

    .line 2111
    const-string p1, ""

    .line 2113
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    .line 2114
    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryObjectStartText"    # Ljava/lang/String;

    .prologue
    .line 2078
    if-nez p1, :cond_0

    .line 2079
    const-string p1, ""

    .line 2081
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 2082
    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0
    .param p1, "useClassName"    # Z

    .prologue
    .line 1603
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useClassName:Z

    .line 1604
    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0
    .param p1, "useFieldNames"    # Z

    .prologue
    .line 1687
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useFieldNames:Z

    .line 1688
    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0
    .param p1, "useIdentityHashCode"    # Z

    .prologue
    .line 1667
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useIdentityHashCode:Z

    .line 1668
    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0
    .param p1, "useShortClassName"    # Z

    .prologue
    .line 1636
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ToStringStyle;->useShortClassName:Z

    .line 1637
    return-void
.end method
