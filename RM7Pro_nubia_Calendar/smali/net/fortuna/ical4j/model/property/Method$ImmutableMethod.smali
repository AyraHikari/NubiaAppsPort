.class final Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;
.super Lnet/fortuna/ical4j/model/property/Method;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/property/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableMethod"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a013aaf122c7731L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;-><init>(Z)V

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/property/Method;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/property/Method$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lnet/fortuna/ical4j/model/property/Method$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lnet/fortuna/ical4j/model/property/Method$ImmutableMethod;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify constant instances"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
