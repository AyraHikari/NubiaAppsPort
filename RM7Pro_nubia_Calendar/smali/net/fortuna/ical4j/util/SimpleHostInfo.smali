.class public Lnet/fortuna/ical4j/util/SimpleHostInfo;
.super Ljava/lang/Object;
.source "SimpleHostInfo.java"

# interfaces
.implements Lnet/fortuna/ical4j/util/HostInfo;


# instance fields
.field private final hostName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lnet/fortuna/ical4j/util/SimpleHostInfo;->hostName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/fortuna/ical4j/util/SimpleHostInfo;->hostName:Ljava/lang/String;

    return-object v0
.end method
