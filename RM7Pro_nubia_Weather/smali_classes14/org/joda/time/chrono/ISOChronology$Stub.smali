.class final Lorg/joda/time/chrono/ISOChronology$Stub;
.super Ljava/lang/Object;
.source "ISOChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/ISOChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stub"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5637ee998ec8afd9L


# instance fields
.field private transient iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lorg/joda/time/chrono/ISOChronology$Stub;->iZone:Lorg/joda/time/DateTimeZone;

    .line 215
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/DateTimeZone;

    iput-object v0, p0, Lorg/joda/time/chrono/ISOChronology$Stub;->iZone:Lorg/joda/time/DateTimeZone;

    .line 229
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/joda/time/chrono/ISOChronology$Stub;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/joda/time/chrono/ISOChronology$Stub;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    return-void
.end method
