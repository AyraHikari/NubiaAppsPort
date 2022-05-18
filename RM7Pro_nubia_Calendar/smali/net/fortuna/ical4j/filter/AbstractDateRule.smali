.class public abstract Lnet/fortuna/ical4j/filter/AbstractDateRule;
.super Ljava/lang/Object;
.source "AbstractDateRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/filter/Rule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/util/Date;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/filter/AbstractDateRule;->match(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method protected abstract match(Ljava/util/Date;)Z
.end method
