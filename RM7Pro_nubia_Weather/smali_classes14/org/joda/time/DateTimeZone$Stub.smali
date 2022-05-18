.class final Lorg/joda/time/DateTimeZone$Stub;
.super Ljava/lang/Object;
.source "DateTimeZone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/DateTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Stub"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59d0fe6583cde51dL


# instance fields
.field private transient iID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iput-object p1, p0, Lorg/joda/time/DateTimeZone$Stub;->iID:Ljava/lang/String;

    .line 1303
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1310
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/DateTimeZone$Stub;->iID:Ljava/lang/String;

    .line 1311
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/joda/time/DateTimeZone$Stub;->iID:Ljava/lang/String;

    invoke-static {v0}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

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
    .line 1306
    iget-object v0, p0, Lorg/joda/time/DateTimeZone$Stub;->iID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1307
    return-void
.end method
