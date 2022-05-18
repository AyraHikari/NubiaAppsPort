.class final Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;
.super Lnet/fortuna/ical4j/model/property/Priority;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/property/Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutablePriority"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51aba069e0da7502L


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 155
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Z)V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/Priority;-><init>(Lnet/fortuna/ical4j/model/ParameterList;I)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(ILnet/fortuna/ical4j/model/property/Priority$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/property/Priority$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/Priority$ImmutablePriority;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify constant instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify constant instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
