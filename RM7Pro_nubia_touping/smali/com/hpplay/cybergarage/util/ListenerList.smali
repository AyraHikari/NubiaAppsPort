.class public Lcom/hpplay/cybergarage/util/ListenerList;
.super Ljava/util/Vector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
