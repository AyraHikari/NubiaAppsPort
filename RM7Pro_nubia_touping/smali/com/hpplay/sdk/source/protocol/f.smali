.class public Lcom/hpplay/sdk/source/protocol/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "width"

.field public static final B:Ljava/lang/String; = "height"

.field public static final C:Ljava/lang/String; = "refresh-rate"

.field public static final D:Ljava/lang/String; = "mst"

.field public static final E:Ljava/lang/String; = "ast"

.field public static final F:Ljava/lang/String; = "data"

.field public static final G:Ljava/lang/String; = "length"

.field public static final H:Ljava/lang/String; = "prop-type"

.field public static final I:Ljava/lang/String; = "value"

.field public static final J:Ljava/lang/String; = "position"

.field public static final K:Ljava/lang/String; = "volume"

.field public static final L:Ljava/lang/String; = "increase"

.field public static final M:Ljava/lang/String; = "decrease"

.field public static final a:Ljava/lang/String; = "PlistBuilder"

.field public static final b:Ljava/lang/String; = "media-type"

.field public static final c:Ljava/lang/String; = "video"

.field public static final d:Ljava/lang/String; = "music"

.field public static final e:Ljava/lang/String; = "image/url"

.field public static final f:Ljava/lang/String; = "items"

.field public static final g:Ljava/lang/String; = "item"

.field public static final h:Ljava/lang/String; = "start-position"

.field public static final i:Ljava/lang/String; = "uuid"

.field public static final j:Ljava/lang/String; = "type"

.field public static final k:Ljava/lang/String; = "event"

.field public static final l:Ljava/lang/String; = "content-location"

.field public static final m:Ljava/lang/String; = "seek-position"

.field public static final n:Ljava/lang/String; = "event-port"

.field public static final o:Ljava/lang/String; = "timing-port"

.field public static final p:Ljava/lang/String; = "stream-time"

.field public static final q:Ljava/lang/String; = "streams"

.field public static final r:Ljava/lang/String; = "displays"

.field public static final s:Ljava/lang/String; = "data-port"

.field public static final t:Ljava/lang/String; = "usingScreen"

.field public static final u:Ljava/lang/String; = "play-mode"

.field public static final v:Ljava/lang/String; = "sample-format"

.field public static final w:Ljava/lang/String; = "sample-rate"

.field public static final x:Ljava/lang/String; = "control-port"

.field public static final y:Ljava/lang/String; = "latencyMax"

.field public static final z:Ljava/lang/String; = "latencyMin"


# instance fields
.field private N:Lcom/dd/plist/NSDictionary;

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dd/plist/NSArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->N:Lcom/dd/plist/NSDictionary;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/f;->N:Lcom/dd/plist/NSDictionary;

    invoke-virtual {v1, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 158
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->N:Lcom/dd/plist/NSDictionary;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 72
    return-object p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Lcom/dd/plist/NSDictionary;

    .line 131
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 132
    invoke-virtual {v0, p2, v1}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 134
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Lcom/dd/plist/NSDictionary;

    .line 110
    invoke-virtual {v1, p3, p4}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 111
    invoke-virtual {v0, p2, v1}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 114
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Z)Lcom/hpplay/sdk/source/protocol/f;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSArray;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v1

    aget-object v1, v1, p2

    check-cast v1, Lcom/dd/plist/NSDictionary;

    .line 141
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 142
    invoke-virtual {v0, p2, v1}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 144
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/f;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->N:Lcom/dd/plist/NSDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    .line 67
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->N:Lcom/dd/plist/NSDictionary;

    invoke-virtual {v0}, Lcom/dd/plist/NSDictionary;->toXMLPropertyList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;I)Lcom/hpplay/sdk/source/protocol/f;
    .locals 3

    .prologue
    .line 85
    new-instance v1, Lcom/dd/plist/NSArray;

    invoke-direct {v1, p2}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 87
    new-instance v2, Lcom/dd/plist/NSDictionary;

    invoke-direct {v2}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/dd/plist/NSArray;->setValue(ILjava/lang/Object;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/f;->O:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object p0
.end method
