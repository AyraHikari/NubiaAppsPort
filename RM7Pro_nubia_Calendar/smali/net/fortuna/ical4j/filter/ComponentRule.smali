.class public abstract Lnet/fortuna/ical4j/filter/ComponentRule;
.super Ljava/lang/Object;
.source "ComponentRule.java"

# interfaces
.implements Lnet/fortuna/ical4j/filter/Rule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/filter/ComponentRule;->match(Lnet/fortuna/ical4j/model/Component;)Z

    move-result v0

    return v0
.end method

.method public abstract match(Lnet/fortuna/ical4j/model/Component;)Z
.end method
